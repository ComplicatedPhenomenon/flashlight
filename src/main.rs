use select::document::Document;
use select::predicate::{Class};
use std::collections::HashSet;
use std::fmt; 
//use std::fs::File;
//use std::io::prelude::*;
use colored::*;

use tokio_postgres::{NoTls};
use serde::{Deserialize, Serialize};
use postgres_types::Json;
use postgres_types::{FromSql};

#[derive(Debug, Deserialize, Serialize, FromSql, Clone)]
struct Relation {
    name : String,
    location:  String,
    description: String,
    follow_whom: Vec<String>
}


#[tokio::main]
async fn main() -> Result<(), Box<dyn std::error::Error>> {
    // connect to database and crete a table
    let (client, connection) = tokio_postgres::connect("host=localhost user=postgres", NoTls).await?;

    tokio::spawn(async move {
        if let Err(e) = connection.await {
            eprintln!("connection error: {}", e);}
    });

    client.simple_query("DROP TABLE IF EXISTS following_relation;").await?;

    client.simple_query("
        CREATE TABLE following_relation (
            id      SERIAL PRIMARY KEY,
            relation   JSON NOT NULL
        )
    ").await?;

    let mut record;

    // retrieve data {name: who, location: , description: ,following_whom: [...]}
    let mut level = 0;
    // 遍历过的所有用户ID放在一个集合里面，方便判断该用户未被遍历过，再遍历该用户前
    let mut accumulated_name_set = HashSet::new();
    // 字符串矢量用来存储当下用户的following
    let mut current_level_names: Vec<String> = Vec::new();

    // the root user start from dr-guangtou
    current_level_names.push("dr-guangtou".to_string());

    while level < 4 {
        let mut  next_level_names: Vec<String> = Vec::new();
        // borrow not move 
        for who in &current_level_names{
            let mut  who_following: Vec<String> = Vec::new();
            if accumulated_name_set.contains(who){
                println!("{} is already been searched!and will be jump over this time", who);
                continue;
            }

            let mut url = fmt::format(format_args!("https://github.com/{}?page={}&tab=following", who, 1));
            // https://www.reddit.com/r/rust/comments/a24w5b/passing_string_to_reqwest_not_working/
            // https://docs.rs/reqwest/0.11.0/reqwest/fn.get.html
            let mut body = reqwest::get(&url).await?.text().await?;
            let mut  body_str:&str = &body;
            /*
            let mut file = File::create("dr-guangtou.html")?;
            file.write(body.as_bytes())?;
            */
            let mut document = Document::from(body_str);
            // iterator take https://danielkeep.github.io/itercheat_baked.html
            for node in document.find(Class("p-org")).take(1){ 
                println!("{} works at: {}",
                    who.to_string().red(), node.text().to_string().green());
            }
        
            // for node_1 in document.find(Class("p-label")).take(1){
            //     println!("lives in: {}", node_1.text().to_string().yellow());
            // }
            //  variable  this_location is a Result type which wraps the Node type you need, because it has a possible error.
            let node_1 = document.find(Class("p-label")).take(1).next();
            let location :String;
            if node_1.is_some(){
                println!("location: {}", node_1.unwrap().text().underline().yellow());
                location = node_1.unwrap().text().to_owned();
            } else {
                location = "Null".to_owned();
            }

            let node_2 = document.find(Class("js-user-profile-bio")).take(1).next();
            let description :String;
            if node_1.is_some(){
                println!("description: {}", node_2.unwrap().text().cyan());
                description = node_2.unwrap().text().to_owned();
            } else {
                description = "Null".to_owned();
            }
 
            // Determine the total number of following's page
            let mut following_number = 0.to_string();
            for node in document.find(Class("text-gray-darkerline")){
                following_number = node.text().to_string();
                println!("following number {}", following_number.to_string().yellow());
            }

            // handle exception following is about tens of thousand
            if following_number.contains("k"){
                following_number = "50".to_string();
            }

            let following: u32 = following_number
                .trim()
                .parse()
                .expect("Wanted a number");
            
            let x = following % 50;
            let mut pages = following / 50;
            if x != 0 {  
                pages = pages + 1;
                println!("pages in total: {:?}", pages);
            }     

            for node in document.find(Class("pl-1")){
                next_level_names.push(node.text().to_string());
                who_following.push(node.text().to_string());
            }
            
            let mut page_at = 2;
            // What ? does here is equivalent to the match statement above. In short: it unpacks the Result 
            // if OK and returns the error if not.
            while page_at < pages{
                println!("{:?}", page_at);
                url = fmt::format(format_args!("https://github.com/{}?page={}&tab=following", who, page_at));
                body = reqwest::get(&url)
                .await?
                .text()
                .await?;
        
                body_str = &body;
                document = Document::from(body_str);
                for node in document.find(Class("pl-1")){
                    next_level_names.push(node.text().to_string());
                    who_following.push(node.text().to_string());
                }
                page_at +=1;
            }
            accumulated_name_set.insert(who.to_string());
            println!("{} is following {:?}", who.red(), who_following);

            record = Relation{
                name: who.to_string(),
                location: location,
                description: description,
                follow_whom: who_following,
            };
            
            // 把一个用户与其following的关系插入数据库
            client.query(
                "INSERT INTO following_relation (relation) VALUES ($1)",
                &[&Json::<Relation>(record)]
            ).await?;
            
        }
    
        println!("Accumulated name set{:?}", accumulated_name_set);
        current_level_names = next_level_names;
        level += 1;
    }

    Ok(())
}

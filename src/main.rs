use select::document::Document;
use select::predicate::{Class};
pub use select::node;
use std::collections::HashSet;
use std::fmt; 
use colored::*;

use tokio_postgres::{NoTls};
use serde::{Deserialize, Serialize};
use postgres_types::Json;
use postgres_types::{FromSql};


#[derive(Debug, Deserialize, Serialize, FromSql)]
struct Relation {
    name : String,
    //company:  String,
    //description: String,
    follow_whom: Vec<String>
}


#[tokio::main]
async fn main() -> Result<(), Box<dyn std::error::Error>> {
    // connect to database and crete a table
    let (client, connection) =
    tokio_postgres::connect("host=localhost user=postgres", NoTls).await?;

    tokio::spawn(async move {
            if let Err(e) = connection.await {
                eprintln!("connection error: {}", e);
            }
        });

    client.simple_query("
        DROP TABLE 
        IF EXISTS following_relation;
        ").await?;

    client.simple_query("
        CREATE TABLE following_relation (
            id      SERIAL PRIMARY KEY,
            relation   JSON NOT NULL
        )
    ").await?;

    let mut record;

    //let mut this_company;
    //let mut this_description;

    // retrieve data {name: who, company: , description: ,following_whom: [...]}
    let mut level = 0;
    let mut accumulated_name_set = HashSet::new();
    let mut current_level_names: Vec<String> = Vec::new();
    current_level_names.push("dr-guangtou".to_string());

    while level < 4 {
        let mut  next_level_names: Vec<String> = Vec::new();

        
        for who in &current_level_names{
            let mut  who_following: Vec<String> = Vec::new();
            if accumulated_name_set.contains(who){
                println!("{} is already been searched!and will be jump over this time", who);
                continue;
            }
            let mut url = fmt::format(format_args!("https://github.com/{}?page={}&tab=following", who, 1));
            // https://www.reddit.com/r/rust/comments/a24w5b/passing_string_to_reqwest_not_working/
            let mut body = reqwest::get(&url)
                .await?
                .text()
                .await?;
        
            let mut  body_str :&str = &body;
            let mut document = Document::from(body_str);

            for node in document.find(Class("p-org")).take(1){ 
                for node_1 in document.find(Class("p-label")).take(1){
                    for  node_2 in document.find(Class("js-user-profile-bio")).take(1){
                        println!("{} works at: {}, lives in: {}\n descriptions: {}", 
                        who.to_string().red(),  node.text().to_string().green(), 
                        node_1.text().to_string().yellow(),
                        node_2.text().to_string().underline().cyan());
                        //this_company = &node_1.text().to_string();
                        //this_description = &node_2.text().to_string();
                    }
                }    
            }

            // Determine the total number of following's page
            let mut following_number = 0.to_string();
            let mut i = 0;
            for node in document.find(Class("hide-sm")){
                if i < 5 {
                    i += 1;
                    continue;
                }
                following_number = node.text().to_string();
            }

            let following: u32 = following_number
                .trim()
                .parse()
                .expect("Wanted a number");
            
            let x = following % 50;
            let mut pages = following / 50;
            if x != 0 {  
                pages = pages + 1;
                //println!("pages in total: {:?}", pages);
            }     
            
            for node in document.find(Class("pl-1")){
                next_level_names.push(node.text().to_string());
                who_following.push(node.text().to_string());
            }
            
            let mut page_at = 2;
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
                //company: this_company,
                //description: this_description,
                follow_whom: who_following,

            };
            
            client.query(
                "INSERT INTO following_relation (relation) VALUES ($1)",
                &[&Json::<Relation>(record)]
            ).await?;
            
        }
    
    println!("{:?}", accumulated_name_set);
    current_level_names = next_level_names;
    level += 1;
    }

    Ok(())
}
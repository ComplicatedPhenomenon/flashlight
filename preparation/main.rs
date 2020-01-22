extern crate reqwest;
extern crate select;
use select::document::Document;
use select::predicate::{Class};
pub use select::node;
use std::collections::HashSet;
//use std::fs::File;
//use std::io::prelude::*;
//use std::io::Read;
use std::fmt; 
extern crate colored; // not needed in Rust 2018
use colored::*;

#[tokio::main]
async fn main() -> Result<(), Box<dyn std::error::Error>> {
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
        }
    
    println!("{:?}", accumulated_name_set);
    current_level_names = next_level_names;
    level += 1;
    }

    Ok(())
}
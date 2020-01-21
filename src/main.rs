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

#[tokio::main]
async fn main() -> Result<(), Box<dyn std::error::Error>> {
    let start_from_who = "szaghi";
    let mut url = fmt::format(format_args!("https://github.com/{}?page={}&tab=following", start_from_who, 1));

    // https://www.reddit.com/r/rust/comments/a24w5b/passing_string_to_reqwest_not_working/
    let mut body = reqwest::get(&url)
        .await?
        .text()
        .await?;
 
    let mut  body_str :&str = &body;
    let mut document = Document::from(body_str);
    
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
        println!("pages in total: {:?}", pages);
    }     
    let mut following_name = HashSet::new();
    for node in document.find(Class("pl-1")){
        following_name.insert(node.text());
    }
    
    let mut page_at = 2;
    while page_at < pages{
        println!("{:?}", page_at);
        url = fmt::format(format_args!("https://github.com/{}?page={}&tab=following", start_from_who, page_at));
        body = reqwest::get(&url)
        .await?
        .text()
        .await?;
 
        body_str = &body;
        document = Document::from(body_str);
        for node in document.find(Class("pl-1")){
            following_name.insert(node.text());
        }
        page_at +=1;
    }
    Ok(())
}
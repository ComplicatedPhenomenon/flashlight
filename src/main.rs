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
    println!("{}, {}", 7/2, 7%2);
    let start_from_who = "szaghi";
    let url = fmt::format(format_args!("https://github.com/{}?page={}&tab=following", start_from_who, 1));

    // https://www.reddit.com/r/rust/comments/a24w5b/passing_string_to_reqwest_not_working/
    let body = reqwest::get(&url)
        .await?
        .text()
        .await?;
 
    let body_str :&str = &body;
    let document = Document::from(body_str);

    /*
    let mut tup : (String,String,String,String,String,String) = ("0".to_string(), "0".to_string(),"0".to_string(),"0".to_string(),"0".to_string(),"0".to_string(),);
    println!("Following Number: {}", document.find(Class("hide-sm")).count());
    let mut i = 0;
    for node in document.find(Class("hide-sm")){
        tup.i = node.text().to_string();
        i = i + 1;

    }*/

    
    let mut following_number = 0.to_string();
    let mut i = 0;
    for node in document.find(Class("hide-sm")){
        if i < 5 {
            i = i + 1;
            continue;
        }
        following_number = node.text().to_string();
    }
    println!("{}", following_number);
    let following: u32 = following_number
        .trim()
        .parse()
        .expect("Wanted a number");
    println!("Following number {:?}", following + 1);
    

    /*
    let mut following_name = HashSet::new();
    for node in  document.find(Class("hide-sm")){
        println!("{}", node.text());
    }
    for node in document.find(Class("pl-1")){
        //println!("pl-1: {}", node.text());
        following_name.insert(node.text());
    }
    */
    /*
    for name in &following_name{
        println!("{}", name);
    }
    */

    Ok(())
    
}
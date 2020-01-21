extern crate reqwest;
extern crate select;
use select::document::Document;
use select::predicate::{Class};
pub use select::node;
use std::collections::HashSet;
use std::fs::File;
//use std::io::prelude::*;
use std::io::Read;

#[tokio::main]
async fn main() -> Result<(), Box<dyn std::error::Error>> {
    let s = "https://github.com/szaghi?tab=following";
    let mut body = reqwest::get(s)
        .await?
        .text()
        .await?;

    //let mut file = File::create("szaghi.html")?;
    //file.write(body.as_bytes())?;
    
    //let document = Document::from(include_str!("../szaghi.html"));*/


    //let mut s2 = String::new();
    //reqwest::get("https://github.com/szaghi?tab=following").read_to_string(&mut s2)?;
    //  link-gray pl-1
    let s = r#"<div class="d-table-cell col-9 v-align-top pr-3">
                   <a class="d-inline-block no-underline mb-1" data-hovercard-type="user" data-hovercard-url="/users/reinh-bader/hovercard" data-octo-click="hovercard-link-click" data-octo-dimensions="link_type:self" href="/reinh-bader">
                       <span class="f4 link-gray-dark"></span>
                       <span class="link-gray pl-1">reinh-bader</span>
                   </a>
               </div>"#;
    let document = Document::from(s);

    println!("{}", document.find(Class("link-gray")).count());
    println!("{}", document.find(Class("pl-1")).count());

    let mut following_name = HashSet::new();
    for node in document.find(Class("pl-1")){
        //println!("pl-1: {}", node.text());
        following_name.insert(node.text());
    }

    for name in &following_name{
        println!("{}", name);
    }
   


    Ok(())

    
}
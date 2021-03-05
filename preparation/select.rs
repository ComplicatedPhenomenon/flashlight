extern crate select;
use select::document::Document;
use select::predicate::{Class};

use std::fs::File;
use std::io::prelude::*;

//https://docs.rs/select/0.4.3/select/node/struct.Node.html
fn display(html : &str){
    let document = Document::from(html);
    for node in document.find(Class("post-link")).take(2){
        println!("{}", node.text());
        //println!("{:?}", node.raw());
        println!("{:?}", node.attr(&"href"));
    }

}

#[tokio::main]
async fn main() -> Result<(), Box<dyn std::error::Error>> {
    let url: &str = "https://huyenchip.com/blog/";
    let body = reqwest::get(url)
        .await?
        .text()
        .await?;

    let mut file = File::create("../data/huyenchip.html")?;
    file.write(body.as_bytes())?;

    display(&body);
    
    Ok(())
}
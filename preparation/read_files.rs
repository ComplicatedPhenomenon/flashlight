use std::fs::File;
use std::io::prelude::*;
use serde_json::{Result, Value};





fn main() -> std::io::Result<()> {
    let file_path: &str = "/Users/wangmiao/Playground/GL/doubancrawler/data/crawler/douban_topic_reply/M_Aurelius/M_Aurelius.json";
    let mut file = File::open(file_path)?;
    let mut contents = String::new();
    file.read_to_string(&mut contents)?;
    //println!("{}", contents);

    let v: Value = serde_json::from_str(& contents)?;
    println!("{}", v["title"]);
    //println!("{:?}", v["comments"]);
    println!("{}", v["comments"][1]["reply_name"]);
    println!("{}", v["comments"][1]["reply_id"]);
    println!("{}", v["comments"][1]["quote_content"]);
    println!("{}", v["comments"][1]["reply_time"]);

    let mut comments :Vec<Value.to_value()> = v["comments"];

    Ok(())
}
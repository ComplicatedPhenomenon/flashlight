use postgres::{Client, NoTls, types};
use std::collections::HashMap;
extern crate colored; // not needed in Rust 2018
use colored::*;

pub struct Json<T>(pub T);
struct Contacts {
    name : String,
    hobby: Vec<String>
}

fn main() -> Result<(), Box<dyn std::error::Error>> {
    let mut client = Client::connect("host=127.0.0.1 user=postgres", NoTls)?;

    client.simple_query("
        DROP TABLE 
        IF EXISTS following_relation;
        DROP TABLE 
        IF EXISTS person;
        ")?;

    
    client.simple_query("
        CREATE TABLE following_relation (
            id      SERIAL PRIMARY KEY,
            relation         JSON NOT NULL
        )
    ")?;

    let mut contacts = HashMap::new();
    let mut v: Vec<String> = Vec::new();

    v.push("ComplicatedPhenomenon".to_string());
    v.push("CZFZDXX".to_string());
    contacts.insert("Daniel", v.clone());

    v = vec!["jump".to_owned(), "jog".to_string()];
    contacts.insert("Ashley", v.clone());

    v = vec!["swim".to_owned(), "football".to_owned(), "rap".to_string()];
    contacts.insert("Katie", v.clone());

    v = vec!["flight".to_owned(), "fishing".to_owned()];
    contacts.insert("Robert", v.clone());

    v = vec!["dance".to_owned(), "piano".to_owned()];
    contacts.insert("Jazz", v.clone());


    // `HashMap::iter()` returns an iterator that yields 
    // (&'a key, &'a value) pairs in arbitrary order.
    println!("{}", "We are fine until now");
    for (name, hobby) in contacts.iter() {
        println!("{{name: {}, hobby: {:?}}}", name.to_string().yellow(), hobby); 
    }

    client.simple_query("
        CREATE TABLE person (
        id      SERIAL PRIMARY KEY,
        name    TEXT NOT NULL,
        data    BYTEA
        )
    ")?;

    let name = "Ferris";
    let data = None::<&[u8]>;
    client.execute(
    "INSERT INTO person (name, data) VALUES ($1, $2)",
    &[&name, &data],
    )?;

    for row in client.query("SELECT id, name, data FROM person", &[])? {
        let id: i32 = row.get(0);
        let name: &str = row.get(1);
        let data: Option<&[u8]> = row.get(2);

        println!("found person: {} {} {:?}", id, name, data);
    }
        

    let message = Contacts{name : "John".to_string(), hobby: v};
    println!("name: {}, hobby: {:?}", message.name, message.hobby);

    /*client.execute("INSERT INTO following_relation(relation) 
                    VALUE (relation : $1)",  &[&message])?;*/

    Ok(())
}

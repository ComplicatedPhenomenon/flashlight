use postgres::{Client, NoTls};
use serde::{Deserialize, Serialize};

#[derive(Debug, Serialize, Deserialize)]
struct Relations {
    name : String,
    hobby: Vec<String>
}


fn main() -> Result<(), Box<dyn std::error::Error>> {
    let mut client = Client::connect("host=127.0.0.1 user=postgres", NoTls)?;

    client.simple_query("
        DROP TABLE 
        IF EXISTS following_relation;
        ")?;

    client.simple_query("
        CREATE TABLE following_relation (
            id      SERIAL PRIMARY KEY,
            relation   TEXT NOT NULL
        )
    ")?;


    let rel = Relations {
        name: "czfzdxx".to_string(),
        hobby: vec![
            "basketball".to_string(),
            "jogging".to_string()
        ],
    };

    let struct_string : String = serde_json::to_string(&rel)?;
    println!("{}", struct_string);
    client.query("INSERT INTO following_relation(relation) VALUE ($1)", 
                   &[&struct_string])?;

    Ok(())
}
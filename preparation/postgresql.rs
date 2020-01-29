use postgres::{Client, NoTls};
use serde::{Deserialize, Serialize};
use postgres_types::Json;
use postgres_types::{FromSql};


#[derive(Debug, Deserialize, Serialize, FromSql)]
struct Relation {
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
            relation    JSON NOT NULL
        )
    ")?;

    let rel = Relation {
        name: "czfzdxx".to_string(),
        hobby: vec![
            "basketball".to_string(),
            "jogging".to_string()
        ],
    };

    client.execute(
        "INSERT INTO following_relation (relation) VALUES ($1)",
        &[&Json::<Relation>(rel)]
    )?;

    for row in &client.query("SELECT relation FROM following_relation", &[]).unwrap() {
        let rel: Json<Relation> = row.get(0);
        println!("{:?}", rel);
    }

    Ok(())
}
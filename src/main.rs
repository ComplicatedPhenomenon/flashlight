use postgres::{Client, NoTls};
use postgres::types::Json;
use serde::{Deserialize, Serialize};

#[derive(Debug, Serialize, Deserialize)]
struct relations {
    name : String,
    hobby: Vec<String>
}
pub struct Json<T>(pub T);

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

    let rel = relations {
        name: "czfzdxx".to_string(),
        hobby: vec![
            "basketball".to_string(),
            "jogging".to_string()
        ],
    };

    client.execute(
        r#"INSERT INTO following_relation(relation)
             VALUE ($1)"#,
        &[&Json(&rel)]
    )?;

    Ok(())
}

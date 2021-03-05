use serde::{Deserialize, Serialize};
use serde_json::{Result, Value};
use serde_json::json;

#[derive(Serialize, Deserialize)]
struct Contact {
    name : String,
    phones: Vec<String>
}

fn untyped_example() -> Result<()> {
    // Some JSON input data as a &str. Maybe this comes from the user.
    let data = r#"
        {
            "name": "John Doe",
            "age": 43,
            "phones": [
                "+44 1234567",
                "+44 2345678"
            ]
        }"#;

    let v: Value = serde_json::from_str(data)?;
    println!("Please call {} at the number {}", v["name"], v["phones"][0]);

    Ok(())
}

fn main() -> Result<()> {
    let p = Contact{name : "Jennifer".to_owned(),  
                    phones : vec!["44 1232254".to_owned(), "44 8322224".to_owned()]};
    println!("please call {} at the number {:?}", p.name, p.phones);

    let struct_string = serde_json::to_string(&p)?;
    println!("{}", struct_string);

    let v: Value = serde_json::from_str(&struct_string)?;
    println!("Please call {} at the number {:?}", v["name"], v["phones"]);
    untyped_example();

    //json! macro is that variables and expressions can be interpolated directly into the JSON value as you are building it.
    let full_name = "Michael scofield";
    let age_last_year = 42;
    // The type of `john` is `serde_json::Value`
    let john = json!({
        "name": full_name,
        "age": age_last_year + 1,
        "phones": [
            format!("+44 {}", "44 5656900")
        ]
    });
    println!("Please call {} at the number {}", john["name"], john["phones"][0]);
    

    let a : String = format!("https://github.com/{}?page={}&tab=following", "ComplicatedPenomenon", 2);
    println! ("{}", a);

    Ok(())
}
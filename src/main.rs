#[macro_use]
extern crate diesel;
extern crate dotenv;

use diesel::prelude::*;
use diesel::pg::PgConnection;
use dotenv::dotenv;
use std::env;

pub fn establish_connection() -> PgConnection {
    dotenv().ok();

    let database_url = env::var("DATABASE_URL")
        .expect("DATABASE_URL must be set");
    PgConnection::establish(&database_url)
        .expect(&format!("Error connecting to {}", database_url))
}

fn main() {
    let connection = establish_connection();
    #[derive(Insertable)]
    #[table_name="users"]
    struct NewUser<'a> {
        name: &'a str,
        hobby: Vec<&'a str>,
    }

    let new_users: Vec<NewUser> = Vec::new();
    let mut hobby_list: Vec<String> = Vec::new();
    hobby_list = vec!["jump".to_owned(), "jog".to_string()];
    new_users.push( NewUser { name: "Sean", hobby:  hobby_list});
    hobby_list = vec!["swim".to_owned(), "football".to_owned(), "rap".to_string()];
    new_users.push( NewUser { name: "Jenny", hobby: hobby_list});

    insert_into(users)
        .values(&new_users)
        .execute(&connection);

    Ok(())
}

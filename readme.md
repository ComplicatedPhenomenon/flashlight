## web scraping with rust
* https://kadekillary.work/post/webscraping-rust/
## Write the output to sql
### Export table to sql file
```sh
pg_dump -U postgres -h localhost -d postgres -t following_relation > following_relation.sql
```

### `rust-postgres` as client

Manage to connect to `PostgreSQL`
```
let mut client = Client::connect("host=127.0.0.1 user=postgres", NoTls)?;
```
Approach: Enable TCP Connections to PostgreSQL

https://www.thegeekstuff.com/2014/02/enable-remote-postgresql-connection/


#### construct object
Construct the object required by `execute`

0. use `postgres::types::Json`

1. Use `serde_json`
    ```rust
    let rel = json!( {
        "name": "czfzdxx".to_string(),
        "hobby": vec![
            "basketball".to_string(),
            "jogging".to_string()
        ]
    });


    client.execute(
        r#"INSERT INTO following_relation(relation)
             VALUE ($1)"#,
        &[&rel]
    )?;
    ```

### `diesel` as client
1. setup the database url

    echo DATABASE_URL=postgres://postgres@localhost/postgres > .env

2. Determine the function for connection 
  
   * `PostgreSQL` as backend.

   *  Establish connection. 

        ```rust
        pub fn establish_connection() -> PgConnection {
            dotenv().ok();

            let database_url = env::var("DATABASE_URL")
                .expect("DATABASE_URL must be set");
            PgConnection::establish(&database_url)
                .expect(&format!("Error connecting to {}", database_url))
        }
        ```
   * Build table 

        `migrations/up.sql`
        ```sql
        CREATE TABLE following_relation (
                id      SERIAL PRIMARY KEY,
                relation    JSON NOT NULL)
        ```

        (before execute `diesel migration run`, Drop proceeding test table in this DB)
        
        execute `diesel migration run` will generate `schema.rs` under `src`
        ```rs
        table! {
            following_relation (id) {
                id -> Int4,
                relation -> Json,
            }
        }
        ```
    * construct `model.rs`

        ```rs
        use serde_json::Value;

        #[derive(Queryable)]
        pub struct Post {
            pub id: i32,
            pub relation: Value,
        }

        ```

### Exception handling
User -`rfthusn` has a very large number of following, it's gonna cause memory overflow.

# trouble shooting

```sh
± |master U:3 ?:1 ✗| → cargo run
    Finished dev [unoptimized + debuginfo] target(s) in 0.63s
     Running `target/debug/harry_potter`
2020-12-10 14:49:25.515 CST [19321] FATAL:  role "postgres" does not exist
Error: Error { kind: Db, cause: Some(DbError { severity: "FATAL", parsed_severity: Some(Fatal), code: SqlState("28000"), message: "role \"postgres\" does not exist", detail: None, hint: None, position: None, where_: None, schema: None, table: None, column: None, datatype: None, constraint: None, file: Some("miscinit.c"), line: Some(607), routine: Some("InitializeSessionUserId") }) }
```
先可以在外围试着连接数据库，
```
psql -h localhost -U postgres

role “postgres” does not exist
```
* https://freethreads.net/2020/06/27/mac-os-x-role-postgres-does-not-exist/

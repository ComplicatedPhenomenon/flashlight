## Access the useful data
* start from `szaghi`

  https://github.com/szaghi?tab=following

* next page 

  https://github.com/szaghi?page=2&tab=following

pseudo code
```py
s = 'https://github.com/{}?tab=following'
for i in following: 
    request(s.format(i))
```

parse `html` in `Rust` library `select`
```rs
let s = r#"<div class="d-table-cell col-9 v-align-top pr-3">
                <a class="d-inline-block no-underline mb-1" data-hovercard-type="user" data-hovercard-url="/users/reinh-bader/hovercard" data-octo-click="hovercard-link-click" data-octo-dimensions="link_type:self" href="/reinh-bader">
                    <span class="f4 link-gray-dark"></span>
                    <span class="link-gray pl-1">reinh-bader</span>
                </a>
           </div>"#;
let document = Document::from(body_str);
```

## Write the output to sql
### Export table to sql file
`pg_dump <mybase> -t <table> -f testride.sql`
```sh
pg_dump -U postgres -h localhost postgres >> testPostgreSQL.sql
```

### `rust-postgres` as client

Manage to connect to `PostgreSQL`
```
let mut client = Client::connect("host=127.0.0.1 user=postgres", NoTls)?;
```
Approach: Enable TCP Connections to PostgreSQL

https://www.thegeekstuff.com/2014/02/enable-remote-postgresql-connection/


#### Basic operation with `psql`
```sh
$ psql -h localhost -U postgres
psql (10.10 (Ubuntu 10.10-0ubuntu0.18.04.1))
SSL connection (protocol: TLSv1.3, cipher: TLS_AES_256_GCM_SHA384, bits: 256, compression: off)
Type "help" for help.

postgres=# \l
                                   List of databases
    Name     |  Owner   | Encoding |   Collate   |    Ctype    |   Access privileges   
-------------+----------+----------+-------------+-------------+-----------------------
 diesel_demo | postgres | UTF8     | en_US.UTF-8 | en_US.UTF-8 | 
 postgres    | postgres | UTF8     | en_US.UTF-8 | en_US.UTF-8 | 
 template0   | postgres | UTF8     | en_US.UTF-8 | en_US.UTF-8 | =c/postgres          +
             |          |          |             |             | postgres=CTc/postgres
 template1   | postgres | UTF8     | en_US.UTF-8 | en_US.UTF-8 | =c/postgres          +
             |          |          |             |             | postgres=CTc/postgres
(4 rows)

postgres=# \c postgres 
SSL connection (protocol: TLSv1.3, cipher: TLS_AES_256_GCM_SHA384, bits: 256, compression: off)
You are now connected to database "postgres" as user "postgres".
postgres=# \dt
               List of relations
 Schema |        Name        | Type  |  Owner   
--------+--------------------+-------+----------
 public | following_relation | table | postgres
 public | test1              | table | postgres

 postgres=# DROP TABLE test1;
(2 rows)
```


#### construct object
Construct the object required by `execute`

0. use `postgres::types::Json`

    Error occurs
    ```sh
    error[E0432]: unresolved import `postgres::types::Json`
    ```

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

    Error occurs
    ```sh
    error[E0277]: the trait bound `serde_json::value::Value: postgres_types::ToSql` is not satisfied
    ```

### `diesel` as client
1. setup the databaseurl

    echo DATABASE_URL=postgres://postgres@localhost/postgres > .env

2. Determine the function for connection 
  * `PostgreSQL` as backend.
  *  Establish connection 

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
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

### Manage to connect to `PostgreSQL`
```
let mut client = Client::connect("host=127.0.0.1 user=postgres", NoTls)?;
```
Approach: Enable TCP Connections to PostgreSQL

https://www.thegeekstuff.com/2014/02/enable-remote-postgresql-connection/

### Export table to sql file
`pg_dump <mybase> -t <table> -f testride.sql`
```sh
pg_dump -U postgres -h localhost postgres >> testPostgreSQL.sql
```

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
(2 rows)
```
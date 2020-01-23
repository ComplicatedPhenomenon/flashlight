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
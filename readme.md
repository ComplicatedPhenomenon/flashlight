### Access the useful data
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

### Write the output to sql
run `postgres` via  a normal user without `sudo`
    
    https://datagrok.org/unix/a_little_postgres/
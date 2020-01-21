use std::fmt;
use std::collections::HashSet;

fn main(){
    let s = fmt::format(format_args!("hello {}", "world"));
    println!("{}", s);

    let name = "szaghi";
    let s1 = fmt::format(format_args!("https://github.com/{}?tab=following", name));
    println!("{}", s1);

    let mut names = HashSet::new();
    names.insert("szaghi".to_string());
    names.insert("reinh-bader".to_string());
    for name in &names {
        let tem = fmt::format(format_args!("https://github.com/{}?tab=following", name));
        println!("{}", tem);
    }
}

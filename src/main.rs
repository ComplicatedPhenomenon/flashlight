extern crate reqwest;

fn main() {
    let body = reqwest::get("https://www.rust-lang.org")
        .await?
        .text()
        .await?;

    println!("body = {:?}", body);
}
use std::fs::File;
use std::io::prelude::*;

#[tokio::main]
async fn main() -> Result<(), Box<dyn std::error::Error>> {
    let mut body = reqwest::get("https://github.com/timbl")
        .await?
        .text()
        .await?;

    println!("body = {:?}", body);
    let mut file = File::create("timbl.html")?;
    file.write(body.as_bytes())?;

    Ok(())
}

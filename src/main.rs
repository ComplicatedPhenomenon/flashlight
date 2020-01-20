use std::fs::File;
use std::io::prelude::*;

#[tokio::main]
async fn main() -> Result<(), Box<dyn std::error::Error>> {
    let mut body = reqwest::get("https://github.com/szaghi?tab=following")
        .await?
        .text()
        .await?;
    
    let mut file = File::create("szaghi.html")?;
    file.write(body.as_bytes())?;

    Ok(())
}
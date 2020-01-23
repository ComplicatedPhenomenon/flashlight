use postgres::{Client, NoTls};

fn main() -> Result<(), Box<dyn std::error::Error>> {
    let mut client = Client::connect("host=127.0.0.1 user=postgres", NoTls)?;

    client.simple_query("
        DROP TABLE 
        IF EXISTS test1, person;
        ")?;

    client.simple_query("
        CREATE TABLE test1 (
            id      SERIAL PRIMARY KEY,
            name    TEXT NOT NULL,
            data    BYTEA
        )
    ")?;

    let mut name = "Ferris";
    let data = None::<&[u8]>;
    client.execute(
        "INSERT INTO test1 (name, data) VALUES ($1, $2)",
        &[&name, &data],
    )?;

    name = "Jennifer";
    client.execute(
        "INSERT INTO test1 (name, data) VALUES ($1, $2)",
        &[&name, &data],
    )?;


    for row in client.query("SELECT id, name, data FROM test1", &[])? {
        let id: i32 = row.get(0);
        let name: &str = row.get(1);
        let data: Option<&[u8]> = row.get(2);

        println!("found person: {} {} {:?}", id, name, data);
    }
    Ok(())
}

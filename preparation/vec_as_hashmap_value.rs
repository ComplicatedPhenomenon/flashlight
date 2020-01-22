use std::collections::HashMap;


fn main() { 
    let mut contacts = HashMap::new();
    let mut v: Vec<String> = Vec::new();

    v.push("ComplicatedPhenomenon".to_string());
    v.push("CZFZDXX".to_string());
    contacts.insert("Daniel", v);

    v = vec!["jump".to_owned(), "jog".to_string()];
    contacts.insert("Ashley", v);

    v = vec!["swim".to_owned(), "football".to_owned(), "rap".to_string()];
    contacts.insert("Katie", v);

    v = vec!["flight".to_owned(), "fishing".to_owned()];
    contacts.insert("Robert", v);

    v = vec!["dance".to_owned(), "piano".to_owned()];
    contacts.insert("Jazz", v);

    println!("{:?}", contacts.get(&"Jazz"));



    contacts.remove(&"Ashley"); 

    // `HashMap::iter()` returns an iterator that yields 
    // (&'a key, &'a value) pairs in arbitrary order.
    for (contact, number) in contacts.iter() {
        println!("Calling {}: {:?}", contact, number); 
    }
}

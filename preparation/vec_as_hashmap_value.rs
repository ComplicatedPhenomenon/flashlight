use std::collections::HashMap;
use std::collections::HashSet;


fn main() { 
    let mut contacts = HashMap::new();
    let mut name_vec: Vec<String> = Vec::new();
    let mut value_set = HashSet::new();

    name_vec.push("ComplicatedPhenomenon".to_string());
    name_vec.push("CZFZDXX".to_string());
    contacts.insert("Daniel", name_vec.clone());
    value_set.insert(name_vec.clone());

    name_vec = vec!["jump".to_owned(), "jog".to_string()];
    contacts.insert("Ashley", name_vec.clone());
    value_set.insert(name_vec.clone());

    name_vec = vec!["swim".to_owned(), "football".to_owned(), "rap".to_string()];
    contacts.insert("Katie", name_vec.clone());
    value_set.insert(name_vec.clone());

    name_vec = vec!["flight".to_owned(), "fishing".to_owned()];
    contacts.insert("Robert", name_vec.clone());
    value_set.insert(name_vec.clone());

    name_vec = vec!["dance".to_owned(), "piano".to_owned()];
    contacts.insert("Jazz", name_vec.clone());
    value_set.insert(name_vec.clone());

    println!("{:?}", contacts.get(&"Jazz"));

    contacts.remove(&"Ashley"); 

    // `HashMap::iter()` returns an iterator that yields 
    // (&'a key, &'a value) pairs in arbitrary order.
    for (name, hobby) in contacts.iter() {
        println!("Calling {}: {:?}", name, hobby); 
    }
}

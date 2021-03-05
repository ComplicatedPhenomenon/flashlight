//https://www.ameyalokare.com/rust/2017/10/12/rust-str-vs-String.html
// Rust has two main types of strings: &str and String. The &str are called ‘string slices’. 
// A string slice has a fixed size, and cannot be mutated. It is a reference to a sequence of UTF-8 bytes.
fn main() {
    let mut word: String; // Try not changing this line :)
    // convert string literals &'static str to String 
    word = "green".to_string();
    // word becomes mutable
    println!("{}", word);
    println!("{}", word);


    if is_a_color_word(& word) {
        word = String::from("czfzdxx");
        println!("That is a color word I know! I will change this mut variable to czfzdxx");
    } else {
        println!("That is not a color word I know.");
    }
    println!("{}", word);

    println!("Checkout the method on &str");
    let word_1 :&str= "Harry Potter";
    

    println!("Checkout the method on String: push push_str");
    let mut word_2  :String = "hello world".to_string();
    word_2.make_ascii_uppercase();
    word_2.push('!');
    println!("{}", word_2);
    word_2.push_str(" Paul Dirac");
    println!("{}", word_2);
    //println!("{}", word_2.as_ref().len());

    let word_3 = String::from("c");
    //https://stackoverflow.com/a/29268076/7583919
    match word_3.as_ref() {
        "a" => println!("0"),
        "b" => println!("1"),
        "c" => println!("2"),
        _ => println!("something else!"),
    }

    let sparkle_heart = vec![240, 159, 146, 150];
    let sparkle_heart = String::from_utf8(sparkle_heart).unwrap();
    assert_eq!("💖", sparkle_heart);
    println!("{:}", sparkle_heart);

}

fn is_a_color_word(attempt: &str) -> bool {
    attempt == "green" || attempt == "blue" || attempt == "red"
}
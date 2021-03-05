//https://stackoverflow.com/a/33485351/7583919
struct Pair <'a> (& 'a str,  & 'a str);
//Pair has a lifetime parameter, because it stores a reference. So you must propagate the lifetime.

struct Pair2 (String, String);

struct Rectangle{
    height: u32,
    width: u32
}

impl Rectangle{
    fn print(&self){
        println!("height is {}, width is {}", self.height, self.width )
    }
    fn is_square(&self){
        println!("This rectange is square: {}", self.height == self.width)
    }
}
//OOP programming diagram
fn main() {
    let rec : Rectangle = Rectangle{height:23, width:41};
    rec.print();
    rec.is_square();

    // Instantiate a tuple struct
    //Every reference in Rust has a lifetime, which is the scope 
    //for which that reference is valid. Most of the time lifetimes are implicit and inferred.
    let a = "Cambrige university".to_string();
    let b =  "United Kingdom".to_string();
    let name = Pair(&a ,  &b);
    println!("{} {}",name.0, name.1);

    let name2 = Pair2(a, b);
    println!("{} {}",name2.0, name2.1);
}
fn main(){
    let mut array_1:[i32;4] = [10,20,30,40];
    // make memory safety guarantees without needing a garbage collector
    //In language of C and fortran,  programmer must explicit allocate and free the memory
    //array_2 = array_1; 
    // when array_2 and array_1 both go out of scope, they will try to free the same memory 
    //which leading to security vulnerabilities
    array_1[1] = 0;
    println!("{:?}", array_1);
 
    let mut tup : (i32, f64, String) = (2, 3.3, "sk".to_string());
    tup.1 = 2.2;
    println!("{:?}", tup);
    println!("{:?}", tup.2);

    let mut v: Vec<String> = Vec::new();
    v.push("ComplicatedPhenomenon".to_string());
    v.push("CZFZDXX".to_string());
    println!("{:?}", v);
    for item in &v{
        println!("{}", item.to_string());
    }


}

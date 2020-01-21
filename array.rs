fn main(){
    let mut arr:[i32;4] = [10,20,30,40];
    arr[1] = 0;
    println!("{:?}",arr);
 
    let mut tup : (i32, f64, String) = (2, 3.3, "sk".to_string());
    tup.1 = 2.2;
    println!("{:?}", tup);
    println!("{:?}", tup.2);

    let mut tup1 : (i32, i32, i32) = (2, 3, 4);
    //let mut i = 0;
    //tup1.i = 3;

    //let mut tup2 = (2);
    //tup2 = tup2 + (3, 4);
    //println!("{:?}", tup2);


}

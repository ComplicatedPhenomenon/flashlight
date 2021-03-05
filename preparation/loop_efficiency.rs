use std::time::Instant;

const CAPACITY: usize = 241;
const IN_LOOPS: usize = 500000;

fn main() {
    let mut arr = [0; CAPACITY];
    for i in 0..CAPACITY {
        arr[i] = i;
    }
    let mut sum = 0;
    let now = Instant::now();
    for _ in 0..IN_LOOPS {
        let mut s = 0;
        for i in 0..arr.len() {
            s += arr[i];
        }
        sum += s;
    }
    println!("sum:{} time:{:?}", sum, now.elapsed());
}
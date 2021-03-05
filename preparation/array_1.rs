use std::cmp::Ordering;
use std::f32;

fn main() {
    let mut vec = [91.0, f32::NAN, 42.0];

    vec.sort_by_key(|&a| MyNanKey(a));

    println!("{:?}", vec);
}

#[derive(Debug, Copy, Clone, PartialEq)]
struct MyNanKey(f32); //在一个类型的基础上创建了一个新的类型

impl Eq for MyNanKey {}

impl PartialOrd for MyNanKey {
    fn partial_cmp(&self, other: &Self) -> Option<Ordering> {
        Some(self.cmp(other))
    }
}

impl Ord for MyNanKey {
    fn cmp(&self, other: &Self) -> Ordering {
        match (self.0.is_nan(), other.0.is_nan()) {
            (true, true) => Ordering::Equal,
            (true, false) => Ordering::Greater,
            (false, true) => Ordering::Less,
            (false, false) => self.0.partial_cmp(&other.0).unwrap(),
        }
    }
}
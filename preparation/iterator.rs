fn main() {
    let a = [1, 2, 3];

    let mut iter = a.iter();

    // A call to next() returns the next value...
    assert_eq!(Some(&1), iter.next());
    assert_eq!(Some(&2), iter.next());
    assert_eq!(Some(&3), iter.next());

    // ... and then None once it's over.
    assert_eq!(None, iter.next());

    // More calls may or may not return `None`. Here, they always will.
    assert_eq!(None, iter.next());

    // pub fn take(self, n: usize) -> Take<Self> Creates an iterator that yields its first n elements.
    let a = [1, 2, 3];
    let mut iter = a.iter().take(2);
    assert_eq!(iter.next(), Some(&1));
    assert_eq!(iter.next(), Some(&2));
    assert_eq!(iter.next(), None);

}
## What's the pain point
这仅仅是一个深度有先的搜索，麻烦的点在于

麻烦的点在于子节点可能在之前出现过

比如从ID1出发， 找到一群follower 🆔2 🆔3 等等， 这些ID组成树的一层
分别搜索第二层的节点，有一种情况，就是第一层和第二层的ID互关（互相关注）
那么第三层我将不保留之前出现过的ID。

##  LLDB debugger
精细化调试程序，在`pdb`中的技巧类比的迁移到调试`Rust`程序


https://stackoverflow.com/a/46885479/7583919 check up the part of Using the Native debugger based on LLDB 

lldb (了解lldb的基本用法，了解它和gdb的关系)
![](WechatIMG3.png)

* The lldb commands are more verbose but also more precise and allow for intelligent auto completion.

`vscode launch.json`

`Run -> Start Debugging`

怎么查看抵达一个断点后，一个对象，我关心的是怎么了解一个变量，一个对象？（Rust 有这个概念吗）它对应的方法和静态(?)函数


## frequently used operation

`Step Over`: This command lets the application execute the next action. If the action involves a call to an operation, it does not step into its implementation (it steps over it instead).

`Step Into`: This command lets the application execute the next action. If the action involves a call to an operation, it steps into its implementation and breaks the execution on the first action of that implementation.

`Step Out`: This command lets the application execute until the currently executed operation implementation is returned.

## knowledge on rust 
Even though this Rust program can be successfully launched, I can still know little about why it worked, to avoid I made it by chance, explanations on the details will be illustrated.

* `Option(T)`, `Some(T)`
    ```rust
    pub enum Option<T> {
        None,
        Some(T),
    }
    ```
* `Result(T)`,  `Ok`

    ```rust
    pub enum Result<T, E> {
        Ok(T),
        Err(E),
    }
    ```
* `match`

* `unwrap`
    ```rust
    /// Returns the contained [`Some`] value, consuming the `self` value.

    /// # Panics
    ///
    /// Panics if the self value equals [`None`].
    ///
    /// # Examples
    ///
    /// ```
    /// let x = Some("air");
    /// assert_eq!(x.unwrap(), "air");
    /// ```
    ///
    /// ```{.should_panic}
    /// let x: Option<&str> = None;
    /// assert_eq!(x.unwrap(), "air"); // fails
    /// ```
    #[inline]
    #[track_caller]
    #[stable(feature = "rust1", since = "1.0.0")]
    #[rustc_const_unstable(feature = "const_option", issue = "67441")]
    pub const fn unwrap(self) -> T {
        match self {
            Some(val) => val,
            None => panic!("called `Option::unwrap()` on a `None` value"),
        }
    }
    ```


* `as_ref`
* `&str String`
    * https://doc.rust-lang.org/std/primitive.str.html#representation


```rust
for node in document.find(Class("p-org")).take(1)
```

1. [`Struct select::document::Document`](https://docs.rs/select/0.5.0/select/document/struct.Document.html)

2. [`Struct select::document::Find`](https://docs.rs/select/0.5.0/select/document/struct.Find.html)


3. [`Struct std::iter::Take`](https://doc.rust-lang.org/std/iter/struct.Take.html)



```rust
pub struct Document {
    pub nodes: Vec<Raw>,
}


impl Document {
    /// Returns a `Selection` containing nodes passing the given predicate `p`.
    pub fn find<P: Predicate>(&self, predicate: P) -> Find<P> {
        Find {
            document: self,
            next: 0,
            predicate,
        }
    }

    /// Returns the `n`th node of the document as a `Some(Node)`, indexed from
    /// 0, or `None` if n is greater than or equal to the number of nodes.
    pub fn nth(&self, n: usize) -> Option<Node> {
        Node::new(self, n)
    }

    pub fn from_read<R: io::Read>(mut readable: R) -> io::Result<Document> {
        let mut byte_tendril = ByteTendril::new();
        readable.read_to_tendril(&mut byte_tendril)?;

        match byte_tendril.try_reinterpret() {
            Ok(str_tendril) => Ok(Document::from(str_tendril)),
            Err(_) => Err(io::Error::new(
                io::ErrorKind::InvalidData,
                "stream did not contain valid UTF-8",
            )),
        }
    }
}


pub struct Find<'a, P> {
    document: &'a Document,
    next: usize,
    predicate: P,
}

impl<'a, P: Predicate> Find<'a, P> {
    pub fn into_selection(self) -> Selection<'a> {
        Selection::new(self.document, self.map(|node| node.index()).collect())
    }
}

impl<'a, P: Predicate> Iterator for Find<'a, P> {
    type Item = Node<'a>;

    fn next(&mut self) -> Option<Node<'a>> {
        while self.next < self.document.nodes.len() {
            let node = self.document.nth(self.next).unwrap();
            self.next += 1;
            if self.predicate.matches(&node) {
                return Some(node);
            }
        }
        None
    }
}
```

## [how do I tell cargo to build files other than `main.rs`?](https://stackoverflow.com/a/27613937/7583919)

```toml
[[bin]]
name = "test"
path = "preparation/test.rs
```
1. `cargo build --bin test`
2. `./target/debug/test`

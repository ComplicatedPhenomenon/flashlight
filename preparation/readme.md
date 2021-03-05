write documentation for the code snippet, provide a brief introduction that these code snippet is useful and they have a right reason for their existence.

## what `[derive(Debug)]` means
https://stackoverflow.com/questions/46388386/what-exactly-does-derivedebug-mean-in-rust

Compare [raw code](https://github.com/rust-lang/rust/blob/master/src/libstd/collections/hash/map.rs) with [its documentation](https://doc.rust-lang.org/std/collections/hash_map/struct.HashMap.html) to know how the code is being structured and documented.

Main proceeding direction is to program in the way that rust advocates, not in the way you're used to, functional programming, procedure programming, you code should show the thought of rust, the unique reason why there is rust.


I think he introduced a new programming paradigm or thought whether on intention or not I'm not sure. Different from C and Python, the pain point is different. You should thank to people who brings new mind to you.

## data types in rust
https://www.codingame.com/playgrounds/365/getting-started-with-rust/primitive-data-types

https://blog.thoughtram.io/ownership-in-rust/

```rs
let names = vec!["Pascal".to_string(), "Christoph".to_string()];
```
```md
            [–– names ––]
            +–––+–––+–––+
stack frame │ • │ 3 │ 2 │
            +–│–+–––+–––+
              │
            [–│–– 0 –––] [–––– 1 ––––]
            +–V–+–––+–––+–––+––––+–––+–––+–––+
       heap │ • │ 8 │ 6 │ • │ 12 │ 9 │       │
            +–│–+–––+–––+–│–+––––+–––+–––+–––+
              │\   \   \  │
              │ \   \    length
              │  \    capacity
              │    buffer │
              │           │
            +–V–+–––+–––+–––+–––+–––+–––+–––+
            │ P │ a │ s │ c │ a │ l │   │   │
            +–––+–––+–––+–––+–––+–––+–––+–––+
                          │
                          │
                        +–V–+–––+–––+–––+–––+–––+–––+–––+–––+–––+–––+–––+
                        │ C │ h │ r │ i │ s │ t │ o │ p │ h │   │   │   │
                        +–––+–––+–––+–––+–––+–––+–––+–––+–––+–––+–––+–––+
```

## `String` vs `str`
https://stackoverflow.com/q/24158114/7583919

The size the `str` takes up cannot be known at compile time and depends on runtime information — it cannot be stored in a variable because the compiler needs to know at compile time what the size of each variable is

`&str` is a slice type. That means it is just reference to an already present String somewhere in the heap.

`&str` doesn't do any allocation at runtime. So, for memory reasons, you can use &str over String. But, keep in mind that when using &str you might have to deal with explicit lifetimes

A string slice has fixed size. A literal string like `let test = "hello world"` has `&'static str` type. `test` is a reference to this statically allocated string. `&str` cannot be modified, for example,

# Debug

## debugger for rust
* http://bitshifter.github.io/rr+rust/#1

  `rustc -g array.rs && gdb -q ./array`


  https://stackoverflow.com/questions/3758614/gdb-no-symbol-i-in-current-context

## `gdb`
```
$ rustc -g hash_map.rs 
$ pdb hash_map
(gdb) break main
Breakpoint 1 at 0x11400
(gdb) break 17
Breakpoint 2 at 0x10dbd: file hash_map.rs, line 17.
(gdb) run
Starting program: /home/wm/Playground/flashlight/preparation/hash_map 
[Thread debugging using libthread_db enabled]
Using host libthread_db library "/lib/x86_64-linux-gnu/libthread_db.so.1".

Breakpoint 1, 0x0000555555565400 in main ()
(gdb) next
Single stepping until exit from function main,
which has no line number information.

Breakpoint 2, hash_map::main () at hash_map.rs:17
17          contacts.insert("Ashley", "645-7689");
(gdb) list 13, 17
13      fn main() { 
14          let mut contacts = HashMap::new();
15
16          contacts.insert("Daniel", "798-1364");
17          contacts.insert("Ashley", "645-7689");
(gdb) next
18          contacts.insert("Katie", "435-8291");
(gdb) print contacts
$1 = std::collections::hash::map::HashMap<&str, &str, std::collections::hash::map::RandomState> {base: hashbrown::map::HashMap<&str, &str, std::collections::hash::map::RandomState> {hash_builder: std::collections::hash::map::RandomState {k0: 9437965962004438495, k1: 4364386630778956236}, table: hashbrown::raw::RawTable<(&str, &str)> {bucket_mask: 3, ctrl: core::ptr::non_null::NonNull<u8> {pointer: 0x55555579bba0 "\377\004R", '\377' <repeats 14 times>, "\004R\377\000"}, data: core::ptr::non_null::NonNull<(&str, &str)> {pointer: 0x55555579bbb8}, growth_left: 1, items: 2, marker: core::marker::PhantomData<(&str, &str)>}}}
(gdb) ptype contacts
type = struct std::collections::hash::map::HashMap<&str, &str, std::collections::hash::map::RandomState> {
  base: hashbrown::map::HashMap<&str, &str, std::collections::hash::map::RandomState>,
}
```
## configure debugging in `vscode`
* https://www.forrestthewoods.com/blog/how-to-debug-rust-with-visual-studio-code/

You might confront a problem `Acquiring CodeLLDB platform package: 1%"` while install `codelldb extensions`.

The author explained why in [here](https://github.com/vadimcn/vscode-lldb/issues/275). (basically because the package is too big when platform is unknown, so published `codelldb` is basically a navigator, which determine what the real platform is and then begin to download the concrete body of `codelldb`)

So you can download the `.vsix` package from github then choose `extensions -> install from vsix...`

Select `DEBUG CONSOLE` and type `help`, now you are ready to go.
# Tech notes

## Languages

### Purescript

 Typed programs -> correct programs
 Cannot be typed -> incorrect programs

- types only exist at compile time
- different from types in C# or Java

*TIP:* Use `-O` flag on transpilation to eliminate dead code

#### Modules

- every module gets turned into an object

#### PureScript Types

- *universally quantified* `forall` is not a for loop. in parameters means you can use any type and the function will work with it. eg.:

```purescript
flip forall a b c. (a -> b -> c) -> b -> a -> c
```

- a `Record` type is the same as a JS object literal

`List` is a type constructor. It takes a type and creates a new type eg `List String`

Data has a type, a type has a kind

#### REPL

`:paste` for multi-line instructions

#### Semantics and Constructs

```purescript
findEntry :: String -> String -> AddressBook -> Maybe Entry
findEntry firstName lastName book = head $ filter filterEntry book
  where
    filterEntry :: Entry -> Boolean
    filterEntry entry = entry.firstName == firstName && entry.lastName == lastName
```

`filterEntry` is an example of an auxiliary declaration in the prior case.

#### Functions & Function Types

an *infix* function is denoted by the infix symbol `$`, which is an alias for `apply`

the PureScript function composition function is `<<<` eg

```purescript
sayHello x = "hello, " <> x
askHowAreYou y = y <> ". How do you do?"

greet = sayHello >>> askHowAreYou
greet "matthew"
"hello, matthew. How do you do?"
```

Backwards composition: `<<<`. Forwards composition: `>>>`

anonymous functions use the *lambda* syntax: `(\n -> n <> "[xxxx[=======================>")`

#### chapter 4: recursion, maps, folds

*functors*?


#### Halogen

##### Components

- Types
  - Input
      - may come from a parent or the root of the app
      - should be described by a type, eg
```
  type Input = FancyApplicationInput { ...
```
      - use type `Unit` if your input is dispolable junk
  - State
      all components require `initialState` which creates a state from an `Input` value
      `initialState :: Input -> State`
  - Actions
      actions are events
- Rendering
### Haskell

A *type synonym* is introduced using `type`. eg

```haskell
type ShoeSize = Int
```

`ShoeSize` may be used wherever `Int` is mentioned. `type` does not actually introduce a new type. It introduces a new name for an existing type. So `type NameAge = (String, Int)` just means `(String, Int)`.

#### Haskell Types

lists may be declared in a few ways. One is literal and explicit:

`[1,2,3,4,5,7,10]`

Range syntax:

`[1..10]`

Step-range syntax:

`[1,3..10]` will produce `[1,3,5,7,9]`

Infinite list, starting with 1:

`[1..]`

A tuple may be heterogeneous. They may also contain other tuples as well as lists and other complex types.

#### Haskell functions

`fold` is the same as JavaScript's `reduce`

[Parametric polymorphism](https://en.wikipedia.org/wiki/Parametric_polymorphism)

> In programming languages and type theory, parametric polymorphism is a way to make a language more expressive, while still maintaining full static type-safety. Using parametric polymorphism, a function or a data type can be written generically so that it can handle values identically without depending on their type.[1] Such functions and data types are called generic functions and generic datatypes respectively and form the basis of generic programming.

## Software

### Nix and Ilk

main command for package management is `nix-env`. It allows you to:

- install `-i`
- upgrade `-u`
- erase `-e`
- query `-q`

...packages

#### Ideas

##### Views

Different users have different *views* of software installed on the system. Users have a selection of *active* packages from the installed list. These *active* packages appear in the users's `PATH`. Also called a *user environment*.


##### Generations

Every time an operation is executed then a new user environment is created, based on the prior. This is called a *generation*.

```bash
nix-env --list-generations
nix-env --rollback
nix-env --switch-generation 43
```

remove old generations like:

```bash
nix-env --delete-generations old
nix-env --delete-generations 10 11 12
nix-env --delete-generations 14d
```

then

```bash
nix-store --gc
```

##### Channels

add a channel:
```bash
nix-channel --add https://nixos.org/channels/nixpkgs-unstable
```

update the lastest info for a channel:
`nix-channel --update`

#### Commands

* `nix-env -qa` show available packages, `-qa` being `query` and `available`.
  * add `s` for installation status 
* Dry run an operation with `--dry-run` flag


##### Expressions


### Rust 

#### The book

##### Chapter 4 Understanding Ownership

data is stack based and heap based. Scalars are on the stack. More complex types are on the heap. 

data may be:

 - moved
 - copied
 - borrowed
 - sliced (stores a ref to the first element and a length)

String literals `&str` are literally part of the binary. They are immutable.

##### Chapter 5 Using Structs to Structure Related Data

- may contain mixed types
- must be entirely mutable or immutable

    *field init shorthand* lets is like the thing is JS where you can just have a variable that matches the field name

```rust
fn build_user(email: String, username: String) -> User {
    User {
        email,
        username,
        active: true,
        sign_in_count: 1,
    }
}
```

   *struct update syntax* lets you create new structs from old tersely and in an immutable fashion.

```rust
    let user2 = User {
        email: String::from("another@example.com"),
        username: String::from("anotherusername567"),
        ..user1
    };
```

Printing structs requires deriving a trait such asd `Debug` or implementing the `Display` trait

Methods are defined within the context of a struct and always have the first parameter of  `&self`

##### Chapter 6 Enums and Pattern Matching

Enums make have other enums, Strings, numbers, or structs as their types.

`Option<T>` enum has `Some(T)` or `None`

`match` has `_ =>` as equivalent of Haskell's `otherwise`.

### Kotlin

#### Functional Programming with Kotlin

##### Chapter 2

###### recollect:

- `tailrec` to make the compiler optimize recursion
- lambda syntax comes in two forms:

```kotlin
  val firstL = { i: Int -> i + 1}
  val someLambda = fun (i: Int) : Int { return i + 1 }
  val itLambda = { it + 1 }
```

- pattern matching via `when` blocks:

```kotlin
var i = 3
var word = when {
  i == 3 -> "Three",
  i == 4 -> "Four",
  i == 5 -> "Five",
  else -> "Many"
}
```

- function typing:

```kotlin
fun <A,B,C> (a: A, b: B, c: C) : String { a.toString() + " " + b.toString() + " " + c.toString() }`
```

- compose functions with `compose()`
- curry functions with `curry()`

###### things i forgot

- recursive lambdas are idiomatically called `go` or `loop`
- function parameters are similar to Haskell:

```
  fun applyToInt( i: Int, f: (Int) -> Int) : Int
```

polymorphic/generic function literals take the type parameters between `fun` and the function name, eg:

```kotlin
  fun <A,B,C> listNameAndAge (name: A, age: B) : C {
     // do some work
  }
```

passing named functions literally:

```
f = applyAbs(i: Int, ::abs)
```

##### Chapter 3

The most ubiquitous functional data structure is the *singly linked list*

###### 3.1

- `sealed` classes require all instance definitions to be present within that file
- `out` is a variance marker. it means you have these things called covariants
- to create data constructors use `data class`
- `Nothing` is a subtype of all other types
- `Nil` can be anything

###### 3.2

- smartcast
- when / is : with `is` matching on type
- companion object is a singleton
- no static methods
- variadic functions take multiple arguments. `vararg`
- `*` is the array deconstruction operator
- `until` keyword
- `of` factory function on a companion object is idiomatic

###### 3.3

- pessimistic copying in other languages is necessary because of the possiblity that data might be mutated
- data sharing makes programs more efficient

#### Kotlin in Action

##### Chapter 2 Kotlin basics

- `val` is immutable `var` is mutable
   immutable values can be declared and then later initialized. however the type must be specified
- class visibility is pubilc by default, much like JavaScript
  
`if` is an expression rather than a statement. Unlike a statement it has a value. Most control structures are. 
  Exceptions include `for`, `do`, `do/while`

  functions can have 'block body' or 'expression body'

  string templates may interpolate variables using `$variablename` and may interpolate expressions similar to ES6

  basic class declaration:

```kotlin
class Person(
  val name: String,
  val age: Int)
```

###### Properties

Kotlin compiler exposes object properties to Java as `getPropName` and `setPropName`
  - exception is for properties starting with `is`. eg: `somePerson.isMarried()` in java but `somePeron.isMarried` in Kotlin

Custom accessors are the property name followed by a `get` function

###### Imports, file structure 

There is no distinction between importing classes or functions, much like JavaScript
"star import" imports everything



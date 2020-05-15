# Tech notes

## Languages 

###  Purescript

 Typed programs -> correct programs
 Cannot be typed -> incorrect programs

 - types only exist at compile time
 - different from types in C# or Java

*TIP:* Use `-O` flag on transpilation to eliminate dead code

#### Modules

- every module gets turned into an object

#### Types

- *universally quantified* `forall` in parameters means you can use any type and the function will work with it. eg.:

```
flip forall a b c. (a -> b -> c) -> b -> a -> c
```

- a `Record` type is the same as a JS object literal

`List` is a type constructor. It takes a type and creates a new type eg `List String`

Data has a type, a type has a kind

#### REPL

`:paste` for multi-line instructions

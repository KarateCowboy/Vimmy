# Get Programming with Haskell

## Chapter 12

*Creating types for data in Haskell is as important as creating classes in OOP*

*type synonyms* are two or more names for the same type. eg: `String` and `[Char]`

Create new type synonyms by using the `type` keyword. eg:

```haskell
type FirstName = String
type LastName = String
type Age = Int
type Height = Int
```

Create new types with the `data` keyword

```haskell
data Sex = Male | Female
```

`Sex` is the *type constructor*. `Male` and `Female` are *data constructors*.

`newtype` is a preferred way of creating new types. But, is more strict than `data`. 

With *records* you don’t have to write your getters; each field in the record syntax automatically creates an *accessor* function to access that value from the record

Update record values by 'passing' a rew record to the instance, with just the new values set, eg:

```haskell
newMatthew = matthew { iq = 500 }
```

## Chapter 13 - Type Classes

Type classes allow you to group types based on shared behavior. Similar to interfaces in OOP. They state which functions a type must support.

use `:info` in ghci to get type class information about data.

example of a type class definition:

```haskell
class Describable a where
   describe :: a -> String
```

Haskell may automatically implement some type classes for you by using the `deriving` keyword.

```haskell
data IceCream = Chocolate | Vanilla deriving (Eq)
Chocolate == Vanilla -- False
```

Class types are Haskell's way of grouping types by common behaviors they share.

## Chapter 14 - Using Type Classes

Create an *instance* of a type class to implement the behavior of that class for that specific type.

```haskell
data Weapon = Sword | Knife
instance Show Weapon where
  show Sword = "[xxxx{;;;;;;;;;;;;;;;;;;;;;;;>"
  show Knife = "oxx[=====>"
```

In functional programming, *polymorphism* means the same function behaves differently depending upon which data type it is using.

Use Hoogle to find definitions of type classes

```haskell
data Ordering = LT | EQ | GT
```

Use `deriving` for `Show`, `Ord`, and `Eq` when possible

`Enum` is a very useful time. It's an enumerated list of constants

Enumerated types can be generated as lists. Eg `[S3 .. S6]`

## Chapter 16 - Programming in Types

*Product types* are created by combining two or more existing types with and

*sum types* are created by combining types using or. They can be used to have one type represent dramatically different implementations.
module.exports.default = {
  "rescript": [
    [ "multi-line comment", "slash and star" ],
    [ "value assignment", "let x = 5"],
    [ "string delimiter", `must be " double quotes`],
    [ "string concatenation operator", "++" ],
    [ "template strings", "Use backticks for delimiters and ${} for interpolation"],
    [ "booleans", " true and false"],
    [ "Resscript negation operator", "!"],
    [ "modulus operator", " mod(num, den)"],
    [ "floating point addition operator", "+."],
    [ "record or object declaration", "type point = { x: int, y: int }"],
    [ "object destructuring operator", `...someObj followed by value overrides`],
    [ "Are mixed type arrays allowed in Rescript?", "No. Only a tuple may do that."],
    [ "What is the closest Rescript type to a null value", "the None type"],
    [ "Which Rescript conditional statements are expressions?", "none of them are"],
    [ "How can you keep a binding within a specific scope?", "Declare it within {}"],
    [ "What special rule applies to Rescript {} scoping?", "The last evaluated expression is the return value" ],
    [ "How do if and while block scopings work in compared to plain {} scopings?", "They work the same way" ],
    [ "How can binding values be changed?", "By rebinding the variable with an explicit 'let' invocation" ],
    [ "How do you expose public module members while keeping some private?", `With an explicit module signature, eg:
        module GameEngine: {
          let players: Record
        } : { /* private stuff goes here */}
      ` ],
    ["What operator specifically marks a binding as private?", "%%private()"],
    ["How do ReScript types get translated into runtime JS?", "They don't. They are erased at transpilation"],
    [ "What does the following code produce: let a: string = b + c", "A type-check error" ],
    [ "How do you declare a type alias for an int?", "tye ageInYears = int"],
    [ "How would you declare a type that is a thruple of any type?", `
        type threeThings<'a> = ('a,'a,'a)
      `],
    ["How would you declare that a function a parameter that is an array of any type?", `array<'a>`],
    ["What keyword, when added to a type declaration, lets a type refer to itself?", "the rec keyword"], 
    ["The keyword to make two types mutually recursive", "and"],
    ["when to use single quotes for strings?", "you can't"],
    ["How do template strings differ from JavaScript?","No need to escape special characters"],
    ["Tepmlate string which implicity converts a variable binding:","prefaced with j"],
    ["What a char transpiles to in JS", "Its ascii integer value"],
    ["function to create a regex", "%re(string)"],
    [" what type of equal is == ", "structural equal"],
    ["what type of equal is ===", "referential equal"],
    [" the () type, taken from Haskell. Name, and to what does it transpile?", "Unit, undefined"],
    ["four traits of tuples","fixed length. ordered. immutable. heterogeneous"],
    ["Symbol for an ignored value during destructuring or signatures. Taken from Haskell", "_"],
    ["The two ways in which records differ from JS objects literals", "are immutable and have fixed fields"],
    ["How does the transpiler know your record matches a type in another file or module?", "Only by explicitly indicating or importing"],
    ["how to update immutable values?", "The spread operator with shadowing"],
    ["keyword to make a specific record field optionally mutable", "mutable"],
    ["main syntactic different between records and objects", "Object fields are strings in double quotes"],
    [`Only way to access a field on an object`, `someObj["someKey"]`]
  ],
  "nixpkg concepts": [
    [ "The four building blocks of Nix", "Nix store, derivations, sandboxing, and the Nix language" ],
    ["The central location of all Nix packages in the system", "/nix/store" ],
    ["The type of storage model closest to what the Nix Store uses", "A Graph Database" ]
  ],
  "loopback4": [
    ["set up a new data source", "lb4 datasource"],
    ["create a new model", "lb4 model"],
    [""]
  ],
  "mongodb": [
    ["the default port on which the server runs", "27017"],
    ["exit the shell", "quit()"]
  ]
}

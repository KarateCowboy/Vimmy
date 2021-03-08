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
      `]
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

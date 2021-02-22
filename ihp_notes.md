# IHP Framework

=====
File where IHP controller types are stored
-----
Web/Types.hs
=====
Type classes automatically derived by IHP controller types 
-----
Eq, Show, Data
=====
IHP module containing controller helpers
-----
Web.Controller.Prelude
=====
An IHP controller implements an instance of this type-class 
-----
Controller
=====
IHP controller helper function which reads attributes from a request and fills them into a record
-----
fill @[]
=====
Controller function in IHP to send a success message
-----
setSuccessMessage
=====
IHP file containing the router definition
-----
Web/Routes.hs
=====
Type-class for an IHP crud router instance 
-----
AutoRoute
===== 
IHP module containing view helpers 
-----
Web.View.Prelude
=====
Data type for views in IHP that is interpolated into a 'show' hyper-link 
-----
ShowThingAction
===== 
Controller helper function in IHP to validate data 
-----
validateField
=====
IHP view helper to turn time into a readable time passed
-----
timeAgo
=====
Handy haskell library for markdown
-----
mmark
=====
A common use of Haskell's Either type 
-----
To represent an error or a correct value
=====
IHP view helper to make a form 
-----
renderForm
=====
IHP form helper for text and textareas
----- 
textField and textareaField
=====
The positive return type for a custom IHP validator
-----
Success
=====
The negative return type for a custom IHP validator 
-----
Failure a
=====
IHP record function to update a field value 
-----
set
===== 
IHP record function to retrieve a field value 
-----
get
=====
IHP view form helper to create a hidden form field
-----
hiddenField
===== 
IHP type for a model with children 
----- 
Include "childeType" Parent
===== 
IHP method to get data related to a model 
----- 
fetchRelated

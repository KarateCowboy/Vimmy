=====
factory method to create a new nest application instance
-----
NestFactory.create 
=====
tell a Nest application to run on a port
-----
app.listen(3000)
===== 
Two main modules needed to run a Nest application 
-----
NestFactory from @nestjs/core and your application module 
=====
create a resource with CRUD for nest 
-----
nest g resource [cars]
===== 
Nest decorator for various HTTP verbs
----- 
@Get, @Put, @Delete, etc 
===== 
Set the prefix for a controller in NestJS 
-----
pass it to the decorator, eg `@Controller('route-porttion')`
===== 
Default success code for POSt in NestJS 
----- 
201 (created)
===== 
How NestJS handles a controller result by default 
----- 
serializes it to JSON 
===== 
NestJS decorator to customize response header content 
----- 
@Header('Cache-Control','none')
===== 
NestJS decorator to redirect to another URI/URL 
----- 
@Redirect(url, responseCode)
===== 


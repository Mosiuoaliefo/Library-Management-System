<!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->
<html>
    <head>
        <title>TODO supply a title</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        
    </head>
    <body>
         <h1>LOGIN FORM</h1>
        <form action="adminloginservlet"   method ="post">
        <link rel="stylesheet" href="./styling.css">
	<label for="name">User Name</label><br>
	<input type ="text" name="username"><br>
	<label for="password">Password</label><br>
	<input type ="password" name ="password">
        <input type ="submit" value ="login">
        </form>
    </body>
</html>

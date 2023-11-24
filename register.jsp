<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <script src="js.js"></script>
    <link rel="stylesheet" href="css/style.css">
    <title>Sign Up</title>
</head>
<body>

<div class="sign">
    <form  action="register" method="post" name="signUp" >
        <h1>Sign Up Now</h1><hr><br>
        <input class="input-box" type="text" name="first_name"  placeholder="First Name"> <br>
        <input class="input-box" type="text" name="last_name"  placeholder="Last Name" ><br>
        <input class="input-box" type="date" name="dob"  placeholder="Date of Birth" ><br>
        <input class="input-box" type="text" name="username"  placeholder="Username" ><br>       
        <input class="input-box" type="password" name="password"  placeholder="Password" ><br>
       <input class="input-box" type="email" name="email" placeholder="Email" ><br><br>      
        <p><div class="m1"> <span><input type="checkbox"></span> I agree to the terms of services</div></p><br>
        <button type="submit" class="sign-btn">Submit</button>
       <button class="login-btn"><a href="#">Login</a></button>
    </form>
    </div>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="/css/style.css">
    <title>Login</title>
</head>
<body style= text-align:center;>
    <div class="hero">
        <div class="form-box">
            <!--  <div class="button-box">
                
                <button type="button" class="toggle-btn">Log In</button>
                <button type="button" class="toggle-btn">Register</button>
                
            </div>-->
            <form action="login" method="post" class="input-group">
                <input type="text" class="input-field" name="username" id="" placeholder="User Id" required><br><br>
                <input type="text" class="input-field" name="password" id="" placeholder="Password" requires><br><br>
                <input type="checkbox" class="check-box"><span>Remember Password</span><br><br>
                <button type="submit" class="submit-btn">Log In </button>
            </form>
        </div>
    </div>
</body>
</html>
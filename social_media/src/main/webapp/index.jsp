<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>BeeHive Login</title>
    <link rel="stylesheet" href="stylesheets/style.css">
</head>

<body>
    <div class="mainContainer">
        <h1>Welcome to BeeHive Socials</h1>
        <div class="vertBar"></div>
        <div class="centerBox">
            <h1>Log in</h1>
            <form action="LoginServlet" method="POST">
            <!-- <h3>${message}</h3> -->
                <div class="loginInputSection">
                    <div class="loginUsernameSection">
                        <label for="loginUsername">Username</label>
                        <input type="text" id="loginUsername" name="loginUsername" required aria-label="Username">
                    </div>
                    <div class="loginPasswordSection">
                        <label for="loginPassword">Password</label>
                        <input type="password" id="loginPassword" name="loginPassword" required aria-label="Password">
                    </div>
                </div>
                <div class="btnGroup">
                    <input type="submit" id="loginBtn" value="Login">
                    <button type="button" id="problemBtn">Problems?</button>
                </div>
            </form>
            <a id="registerLink" href="register.jsp">Register for a new account</a>
        </div>
    </div>
</body>

</html>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>BeeHive register</title>
<link rel="stylesheet" href="styleRegister.css">
</head>
<body>
	<div class="mainContainer">
        <h1>Welcome to BeeHive...</h1>
        <div class="centerBox">
            <h1>Register</h1>
            <form action="RegisterServlet" method="POST" enctype="multipart/form-data">

                <div class="registerInputSection">
                    <div class="registerUsernameSection">
                        <label for="registerUsername">Username</label>
                        <input type="text" id="registerUsername" name="registerUsername" accept="image/*" required aria-label="Username">
                    </div>
                    
                    <div class="registerPasswordSection">
                        <label for="registerPassword">Password</label>
                        <input type="password" id="registerPassword" name="registerPassword" required aria-label="Password">
                    </div>
                    <div class="registerEmailSection">
                        <label for="registerEmail">Email</label>
                        <input type="email" id="registerEmail" name="registerEmail" required aria-label="Email">
                    </div>
                    <div class="registerProfilePictureSection">
                        <label for="registerProfilePicture">Profile Picture</label>
                        <input type="file" id="registerProfilePicture" name="registerProfilePicture" accept="image/*" required aria-label="Profile Picture">
                    </div>
                </div>

                <div class="btnGroup">
                    <input type="submit" id="registerBtn" value="Register">
                    <button type="button" id="problemBtn">Problems?</button>
                </div>
            </form>
            <a id="loginLink" href="index.jsp">Already registered? Log in here.</a>
        </div>
    </div>

</body>
</html>
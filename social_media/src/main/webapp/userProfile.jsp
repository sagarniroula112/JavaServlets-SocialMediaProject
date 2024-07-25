<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="stylesheets/styleProfile.css">
    <title>Your Profile</title>
</head>
<body>
    <div class="profileContainer">
        <div class="centerbox">
            <h1 id="topHeading">Your Information</h1>
            <div class="imgSection">
                <img id="profileImg" src="stylesheets/boy.png" alt="Your profile picture here..." id="profilePic">
                <h2 id="userName">Gordon Ramsay</h2>
                <h4 id="userEmail">gordonramsay@gmail.com</h4>
            </div>
            <div class="bioSection">
                <p><strong>Bio:</strong> <span id="userBio">Nick is a software engineer with over 5 years of experience in full-stack development. He loves coding, hiking, and exploring new technologies.</span></p>
            </div>
            <button type="button" id="editBtn" onclick="toggleEditMode()">Edit Profile</button>
            <form id="editForm" style="display: none;">
                <div class="imgSection">
                    <label for="profilePicInput">Profile Picture:</label>
                    <input type="file" id="profilePicInput" accept="image/*">
                </div>
                <div class="editSection">
                    <label for="userNameInput">Name:</label>
                    <input type="text" id="userNameInput" value="Nick DiGiovanni">
                </div>
                <div class="editSection">
                    <label for="userEmailInput">Email:</label>
                    <input type="email" id="userEmailInput" value="nickdigiovanni21@gmail.com">
                </div>
                <div class="editSection">
                    <label for="userBioInput">Bio:</label>
                    <textarea id="userBioInput">Nick is a software engineer with over 5 years of experience in full-stack development. He loves coding, hiking, and exploring new technologies.</textarea>
                </div>
                <button type="button" onclick="saveProfile()">Save</button>
                <button type="button" onclick="cancelEdit()">Cancel</button>
            </form>
        </div>
    </div>
</body>
</html>

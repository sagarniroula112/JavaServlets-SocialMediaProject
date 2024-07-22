<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>BeeHive - Posts</title>
    <link rel="stylesheet" href="stylesheets/stylePosts.css">
</head>

<body>
    <header>
        <nav>
            <div class="logo">BeeHive</div>
            <ul class="nav-links">
                <li><a href="#">Home</a></li>
                <li><a href="userProfile.jsp">Profile</a></li>
                <li><a href="#">Messages</a></li>
                <li><a href="#">Logout</a></li>
            </ul>
        </nav>
    </header>

    <div class="createPostContainer">
        <h2>Create a Post</h2>
        <form action="#" method="post" enctype="multipart/form-data">
            <div class="inputPost">
                <label for="postDesc">Description</label>
                <textarea id="postDesc" name="postDesc" placeholder="Write something..." rows="5" required></textarea>
            </div>
            <div class="registerPictureSection">
                <label for="postPicture">Picture</label>
                <input type="file" id="postPicture" name="postPicture" accept="image/*" aria-label="Post Picture">
            </div>
            <button type="submit" class="postBtn">Post</button>
        </form>
    </div>

    <div class="border">
        <h1>View what your friends share below!</h1>
    </div>
    
    
    <div class="mainContainer">
        <div class="postContainer">
            <div class="post">
                <div class="postHeader">
                    <img src="Screenshot (18).png" alt="Profile Picture" class="profilePic">
                    <div class="userInfo">
                        <h2>Jane Doe</h2>
                        <p>5 mins ago</p>
                    </div>
                </div>
                <div class="postContent">
                    <p>Just finished teaching 3D-Mathematics to second year engineering students.</p>
                    <img src="stylesheets/Screenshot (18).png" alt="Post Image" class="postImg">
                </div>
                <div class="postActions">
                    <button class="likeBtn">Like</button>
                    <button class="commentBtn">Comment</button>
                </div>
            </div>
            <div class="post">
                <div class="postHeader">
                    <img src="images/profile2.jpg" alt="Profile Picture" class="profilePic">
                    <div class="userInfo">
                        <h2>John Smith</h2>
                        <p>2 hours ago</p>
                    </div>
                </div>
                <div class="postContent">
                    <p>Had a fantastic day at the beach with friends!</p>
                    <img src="images/post2.jpg" alt="Post Image" class="postImg">
                </div>
                <div class="postActions">
                    <button class="likeBtn">Like</button>
                    <button class="commentBtn">Comment</button>
                </div>
            </div>

            <div class="post">
                <div class="postHeader">
                    <img src="images/profile2.jpg" alt="Profile Picture" class="profilePic">
                    <div class="userInfo">
                        <h2>John Smith</h2>
                        <p>2 hours ago</p>
                    </div>
                </div>
                <div class="postContent">
                    <p>Had a fantastic day at the beach with friends!</p>
                    <img src="images/post2.jpg" alt="Post Image" class="postImg">
                </div>
                <div class="postActions">
                    <button class="likeBtn">Like</button>
                    <button class="commentBtn">Comment</button>
                </div>
            </div>

            <div class="post">
                <div class="postHeader">
                    <img src="images/profile2.jpg" alt="Profile Picture" class="profilePic">
                    <div class="userInfo">
                        <h2>John Smith</h2>
                        <p>2 hours ago</p>
                    </div>
                </div>
                <div class="postContent">
                    <p>Had a fantastic day at the beach with friends!</p>
                    <img src="images/post2.jpg" alt="Post Image" class="postImg">
                </div>
                <div class="postActions">
                    <button class="likeBtn">Like</button>
                    <button class="commentBtn">Comment</button>
                </div>
            </div>

            <div class="post">
                <div class="postHeader">
                    <img src="images/profile2.jpg" alt="Profile Picture" class="profilePic">
                    <div class="userInfo">
                        <h2>John Smith</h2>
                        <p>2 hours ago</p>
                    </div>
                </div>
                <div class="postContent">
                    <p>Had a fantastic day at the beach with friends!</p>
                    <img src="images/post2.jpg" alt="Post Image" class="postImg">
                </div>
                <div class="postActions">
                    <button class="likeBtn">Like</button>
                    <button class="commentBtn">Comment</button>
                </div>
            </div>
        </div>
    </div>
</body>

</html>

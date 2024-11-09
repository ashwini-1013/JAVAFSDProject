<%-- 
    Document   : profile
    Created on : 7 Nov, 2024, 7:56:32 PM
    Author     : kavit
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="com.blog.entities.Post"%>
<%@page import="com.blog.entities.PostData"%>
<%@page import="com.blog.entities.Database"%>
<%@page import="com.blog.entities.User"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    User user = (User) session.getAttribute("currentUser");
    if (user == null) {
        response.sendRedirect("login-page.jsp");
    }
%>

<!DOCTYPE html>
<!-- Coding By CodingNepal - codingnepalweb.com -->
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <!-- ===== Boxicons CSS ===== -->
        <link href='https://unpkg.com/boxicons@2.1.1/css/boxicons.min.css' rel='stylesheet'>
        <!-- ===== CSS ===== -->
        <link rel="stylesheet" href="profile.css">
         <link rel="stylesheet" href="style.css">
        <title>Profile</title>
    </head>
    <body>
        <nav>
            <div class="nav-bar">
                <i class='bx bx-menu sidebarOpen' ></i>
                <span class="logo navLogo"><a href="#">Blog <span style="color:rgb(37, 150, 190);">Brew</span></a></span>
                <div class="menu">
                    <div class="logo-toggle">
                        <span class="logo"><a href="#">Blog Brew</a></span>
                        <i class='bx bx-x siderbarClose'></i>
                    </div>
                    <ul class="nav-links">
                        <li><a style="cursor:pointer;" id="home">Home</a></li>
                        <li><a style="cursor:pointer;" id="post" >Post</a></li>
                        <li><a style="cursor:pointer;" id="profile">Profile</a></li>
                    </ul>
                </div>
                <div class="darkLight-searchBox">
                    <div class="dark-light">
                        <i class='bx bx-moon moon'></i>
                        <i class='bx bx-sun sun'></i>
                    </div>
                    <div class="searchBox">
                        <div class="searchToggle">
                            <i class='bx bx-x cancel'></i>
                            <i class='bx bx-search search'></i>
                        </div>
                        <div class="search-field">
                            <input type="text" placeholder="Search...">
                            <i class='bx bx-search'></i>
                        </div>
                    </div>
                </div>
                <div>
                    <a style="display:flex;flex-direction: row; gap:5px;"><img src="profile/default-profile.png" style="width:30px;" /> <span style="align-items: center;margin-top:4px; color:rgb(37, 150, 190);font-size:18px;"><%= user.getName()%></span></a>
                </div>
            </div>
        </nav>

        <!-- Home section in navbar -->
        <div id="home-display" style="display:none;margin-top:90px;align-items:center;">
            <div class="post-filter container">
		<span class="filter-item active-filter" data-filter="all">All</span> <span
			class="filter-item" data-filter="tech">Travel</span> <span
			class="filter-item" data-filter="food">Food</span> <span
			class="filter-item" data-filter="news">Lifestyle</span>
	</div>

	<div class="post container">
		<!-- Post 1 -->
		<div class="post-box tech">
			<img src="images/img1.jpg" alt="" class="post-img">
			<h2 class="category">Tech</h2>
			<a href="#" class="post-title">How to create the best UI with
				Figma</a> <span class="post-date">12 Feb 2022</span>
			<p class="post-description">Lorem ipsum dolor sit, amet
				consectetur adipisicing elit. Consectetur, similique, rerum
				excepturi harum, vitae facilis corrupti vel modi debitis est
				perferendis aut quasi ea unde repudiandae iste architecto. Corporis,
				voluptates.</p>
			<div class="profile">
				<img src="images/testi1.jpg" alt="" class="profile-img"> <span
					class="profile-name">MKHB</span>
			</div>
		</div>
		<!-- Post 2 -->
		<div class="post-box food">
			<img src="images/img2.jpg" alt="" class="post-img">
			<h2 class="category">Tech</h2>
			<a href="#" class="post-title">How to create the best UI with
				Figma</a> <span class="post-date">12 Feb 2022</span>
			<p class="post-description">Lorem ipsum dolor sit, amet
				consectetur adipisicing elit. Consectetur, similique, rerum
				excepturi harum, vitae facilis corrupti vel modi debitis est
				perferendis aut quasi ea unde repudiandae iste architecto. Corporis,
				voluptates.</p>
			<div class="profile">
				<img src="images/testi1.jpg" alt="" class="profile-img"> <span
					class="profile-name">MKHB</span>
			</div>
		</div>
		<!-- Post 3 -->
		<div class="post-box food">
			<img src="images/img3.jpg" alt="" class="post-img">
			<h2 class="category">Food</h2>
			<a href="#" class="post-title">How to create the best UI with
				Figma</a> <span class="post-date">12 Feb 2022</span>
			<p class="post-description">Lorem ipsum dolor sit, amet
				consectetur adipisicing elit. Consectetur, similique, rerum
				excepturi harum, vitae facilis corrupti vel modi debitis est
				perferendis aut quasi ea unde repudiandae iste architecto. Corporis,
				voluptates.</p>
			<div class="profile">
				<img src="images/testi1.jpg" alt="" class="profile-img"> <span
					class="profile-name">MKHB</span>
			</div>
		</div>
		<!-- Post 4 -->
		<div class="post-box news">
			<img src="images/img4.jpg" alt="" class="post-img">
			<h2 class="category">Tech</h2>
			<a href="#" class="post-title">How to create the best UI with
				Figma</a> <span class="post-date">12 Feb 2022</span>
			<p class="post-description">Lorem ipsum dolor sit, amet
				consectetur adipisicing elit. Consectetur, similique, rerum
				excepturi harum, vitae facilis corrupti vel modi debitis est
				perferendis aut quasi ea unde repudiandae iste architecto. Corporis,
				voluptates.</p>
			<div class="profile">
				<img src="images/testi1.jpg" alt="" class="profile-img"> <span
					class="profile-name">MKHB</span>
			</div>
		</div>
		<!-- Post 5 -->
		<div class="post-box tech">
			<img src="images/img5.jpg" alt="" class="post-img">
			<h2 class="category">Tech</h2>
			<a href="#" class="post-title">How to create the best UI with
				Figma</a> <span class="post-date">12 Feb 2022</span>
			<p class="post-description">Lorem ipsum dolor sit, amet
				consectetur adipisicing elit. Consectetur, similique, rerum
				excepturi harum, vitae facilis corrupti vel modi debitis est
				perferendis aut quasi ea unde repudiandae iste architecto. Corporis,
				voluptates.</p>
			<div class="profile">
				<img src="images/testi1.jpg" alt="" class="profile-img"> <span
					class="profile-name">MKHB</span>
			</div>
		</div>
		<!-- Post 6 -->
		<div class="post-box news">
			<img src="images/img4.jpg" alt="" class="post-img">
			<h2 class="category">News</h2>
			<a href="#" class="post-title">How to create the best UI with
				Figma</a> <span class="post-date">12 Feb 2022</span>
			<p class="post-description">Lorem ipsum dolor sit, amet
				consectetur adipisicing elit. Consectetur, similique, rerum
				excepturi harum, vitae facilis corrupti vel modi debitis est
				perferendis aut quasi ea unde repudiandae iste architecto. Corporis,
				voluptates.</p>
			<div class="profile">
				<img src="images/testi1.jpg" alt="" class="profile-img"> <span
					class="profile-name">MKHB</span>
			</div>
		</div>
		<!-- Post 7 -->
		<div class="post-box tech">
			<img src="images/img7.jpg" alt="" class="post-img">
			<h2 class="category">Tech</h2>
			<a href="#" class="post-title">How to create the best UI with
				Figma</a> <span class="post-date">12 Feb 2022</span>
			<p class="post-description">Lorem ipsum dolor sit, amet
				consectetur adipisicing elit. Consectetur, similique, rerum
				excepturi harum, vitae facilis corrupti vel modi debitis est
				perferendis aut quasi ea unde repudiandae iste architecto. Corporis,
				voluptates.</p>
			<div class="profile">
				<img src="images/testi1.jpg" alt="" class="profile-img"> <span
					class="profile-name">MKHB</span>
			</div>
		</div>
		<!-- Post 1 -->
		<div class="post-box news">
			<img src="images/img8.jpg" alt="" class="post-img">
			<h2 class="category">News</h2>
			<a href="#" class="post-title">How to create the best UI with
				Figma</a> <span class="post-date">12 Feb 2022</span>
			<p class="post-description">Lorem ipsum dolor sit, amet
				consectetur adipisicing elit. Consectetur, similique, rerum
				excepturi harum, vitae facilis corrupti vel modi debitis est
				perferendis aut quasi ea unde repudiandae iste architecto. Corporis,
				voluptates.</p>
			<div class="profile">
				<img src="images/testi1.jpg" alt="" class="profile-img"> <span
					class="profile-name">MKHB</span>
			</div>
		</div>
		<!-- Post 9 -->
		<div class="post-box food">
			<img src="images/img10.jpg" alt="" class="post-img">
			<h2 class="category">Food</h2>
			<a href="#" class="post-title">How to create the best UI with
				Figma</a> <span class="post-date">12 Feb 2022</span>
			<p class="post-description">Lorem ipsum dolor sit, amet
				consectetur adipisicing elit. Consectetur, similique, rerum
				excepturi harum, vitae facilis corrupti vel modi debitis est
				perferendis aut quasi ea unde repudiandae iste architecto. Corporis,
				voluptates.</p>
			<div class="profile">
				<img src="images/testi1.jpg" alt="" class="profile-img"> <span
					class="profile-name">MKHB</span>
			</div>
		</div>
	</div>

        </div>

        <!-- Post section in navbar -->        
        <div id="post-blog" style="display:none;margin-top:90px;align-items:center;">
            <div class="container">
                <h2>Create a New Blog</h2>
                <form action="AddPostServlet" method="POST" id="blog-form" enctype=multipart/form-data>
                    <label for="title">Title</label>
                    <input type="text" id="title" name="title" placeholder="Enter your blog title" required>

                    <label for="content">Content</label>
                    <textarea id="content" name="content" rows="8" placeholder="Write your blog content here..." required></textarea>

                    <label for="tags">Tags</label>
                    <input type="text" id="tags" name="tags" placeholder="e.g., Grilled Sandwhich, Venice " required>

                    <label for="image">Upload an Image</label>
                    <input type="file" id="image" name="image" accept="image/*">

                    <button type="submit">Create Blog</button>
                </form>
            </div>
        </div>

        <!--Profile Of user-->
        <div id="user-profile" style="display:none;margin-top:90px;align-items:center;width:80%;margin-left:10%;">
            <table class="table" style="align-items:center;margin-left:40%;">

                <tbody>
                    <tr>
                        <th scope="row">User Name :   </th>
                       
                        <td><%=user.getName()%></td>
                    </tr>
                    <tr>
                        <th>User Email : </th>
                        <td><%=user.getEmail()%></td>
                    </tr>
                </tbody>
                
            </table>
        </div>

        <script>
            const body = document.querySelector("body"),
                    nav = document.querySelector("nav"),
                    modeToggle = document.querySelector(".dark-light"),
                    searchToggle = document.querySelector(".searchToggle"),
                    sidebarOpen = document.querySelector(".sidebarOpen"),
                    siderbarClose = document.querySelector(".siderbarClose");
            let getMode = localStorage.getItem("mode");
            if (getMode && getMode === "dark-mode") {
                body.classList.add("dark");
            }
            // js code to toggle dark and light mode
            modeToggle.addEventListener("click", () => {
                modeToggle.classList.toggle("active");
                body.classList.toggle("dark");
                // js code to keep user selected mode even page refresh or file reopen
                if (!body.classList.contains("dark")) {
                    localStorage.setItem("mode", "light-mode");
                } else {
                    localStorage.setItem("mode", "dark-mode");
                }
            });
            // js code to toggle search box
            searchToggle.addEventListener("click", () => {
                searchToggle.classList.toggle("active");
            });


            //   js code to toggle sidebar
            sidebarOpen.addEventListener("click", () => {
                nav.classList.add("active");
            });
            body.addEventListener("click", e => {
                let clickedElm = e.target;
                if (!clickedElm.classList.contains("sidebarOpen") && !clickedElm.classList.contains("menu")) {
                    nav.classList.remove("active");
                }
            });
        </script>
        <script>
            let post = document.getElementById("post");
            let postBlog = document.getElementById("post-blog");

            post.addEventListener("click", () => {
                postBlog.style.display = "block";
                homeDisplay.style.display = "none";
                userProfile.style.display = "none";
            });
        </script>
        <script>
            let home = document.getElementById("home");
            let homeDisplay = document.getElementById("home-display");
            home.addEventListener("click", () => {
                homeDisplay.style.display = "block";
                postBlog.style.display = "none";
                userProfile.style.display = "none";
            });
        </script>
        <script>
            let profile = document.getElementById("profile");
            let userProfile = document.getElementById("user-profile");
            profile.addEventListener("click", () => {
                userProfile.style.display = "block";
                homeDisplay.style.display = "none";
                postBlog.style.display = "none";
            });
        </script>

    </body>
</html>
<%-- 
    Document   : index
    Created on : 7 Nov, 2024, 6:57:57 PM
    Author     : kavit
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Blog Brew</title>
        <!-- Box-icon -->
        <link
            href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
            rel="stylesheet"
            integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
            crossorigin="anonymous">
        <link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css'
              rel='stylesheet'>
        <link rel="stylesheet" href="style.css">

        <!--        <script
                    src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.1/jquery.min.js"
                    integrity="sha512-aVKKRRi/Q/YV+4mjoKBsE4x3H+BkegoM/em46NNlCqNTmUYADjBbeNefNxYV7giUp0VxICtqdrbqU7iVaeZNXA=="
                crossorigin="anonymous" referrerpolicy="no-referrer"></script>-->
        <script
            src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
        crossorigin="anonymous"></script>
        <script src="main.js"></script>

    </head>
    <body>
        <header>
            <div class="nav container">
                <a href="#" class="logo">Blog <span>Brew</span></a> <a href="#"
                                                                       class="login" data-bs-toggle="modal"
                                                                       data-bs-target="#staticBackdrop">Sign Up</a>
            </div>
        </header>

        <section class="home" id="home">
            <div class="home-text container">
                <h2 class="home-title">Illuminate Your Journey</h2>
                <span class="home-subtitle">Your source of great content</span>
            </div>
        </section>

        <section class="about container" id="about">
            <div class="contentBx">
                <h2 class="titleText">Explore Our World</h2>
                <p class="title-text">Welcome to Blog Brew, your go-to
                    destination for engaging content on food, travel, and lifestyle. We
                    are passionate about creating a platform where you can read, write,
                    and share your thoughts on various topics. Our goal is to provide a
                    space for creativity and interaction without the pressure of traffic
                    or engagement metrics. Join us in exploring the world of blogging
                    and sharing your unique voice with the community.</p>
                <a href="#" class="btn2">Read more</a>
            </div>
            <div class="imgBx">
                <img src="images/blog-ele.png" alt="" class="fitBg">
            </div>
        </section>

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

        <footer>
            <div class="footer-container">
                <div class="sec aboutus">
                    <h2>About Us</h2>
                    <p>At Blog Brew, we celebrate individuality, foster creativity,
                        and encourage authentic expression. Join our lively blogging
                        community and let your unique voice echo through our vibrant
                        network.</p>
                    <ul class="sci">
                        <li><a href="#"><i class="bx bxl-facebook"></i></a></li>
                        <li><a href="#"><i class="bx bxl-instagram"></i></a></li>
                        <li><a href="#"><i class="bx bxl-twitter"></i></a></li>
                        <li><a href="#"><i class="bx bxl-linkedin"></i></a></li>
                    </ul>
                </div>
                <div class="sec quicklinks">
                    <h2>Quick Links</h2>
                    <ul>
                        <li><a href="#">Home</a></li>
                        <li><a href="#">About</a></li>
                    </ul>
                </div>
                <div class="sec contactBx">
                    <h2>Contact Info</h2>
                    <ul class="info">
                        <li><span><i class='bx bxs-map'></i></span> <span>6444
                                London street <br> Brighton PA 33445 <br> Uk
                            </span></li>
                        <li><span><i class='bx bx-envelope'></i></span>
                            <p>
                                <a href="mailto:codemyhobby9@gmail.com">blogbrew@gmail.com</a>
                            </p></li>
                    </ul>
                </div>
            </div>
        </footer>

        <div>


            <!-- Sign Up & Login Modal -->
            <div class="modal fade" id="staticBackdrop" data-bs-backdrop="static"
                 data-bs-keyboard="false" tabindex="-1"
                 aria-labelledby="staticBackdropLabel" aria-hidden="true">
                <div class="modal-dialog">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h5 class="modal-title" id="staticBackdropLabel" style="align-items:center;text-align:center;margin-left:37%;font-size:30px;color:#366BA1;">Register</h5>
                            <button type="button" class="btn-close" data-bs-dismiss="modal"
                                    aria-label="Close"></button>
                        </div>
                        <div class="modal-body">
                            <div class="form_container">
                                <i class="uil uil-times form_close"></i>
                                <!-- Login From -->
                                <div id="login-div" class="form login_form">
                                    <form id="login-form"  action="LoginServlet" method="POST" 
                                          style="display: flex; flex-direction: column; gap: 6px; align-items: center;">
                                        <h2>Login</h2>

                                        <p style="color:red;">

                                        </p>


                                        <div class="input_box">

                                            <input name="username" type="text" placeholder="Enter username" required
                                                   style="border-radius: 10px; width: 280px; height: 35px; padding: 10px;" />
                                            <i class="uil uil-envelope-alt email"></i>
                                        </div>
                                        <div class="input_box">

                                            <input name="password" type="password" placeholder="Enter your password"
                                                   required
                                                   style="border-radius: 10px; width: 280px; height: 35px; padding: 10px;" />
                                            <i class="uil uil-lock password"></i> <i
                                                class="uil uil-eye-slash pw_hide"></i>
                                        </div>
                                        <div>
                                            <input name="check" type="checkbox" required="true" /> 
                                            <label>Remeber me</label>
                                        </div>
                                        <button class="button"
                                                style="width: 35%; height: 40px; border-radius: 20px; background-color: #CDDEEE; border: none;">Login
                                            Now</button>
                                        <div class="login_signup">
                                            Don't have an account? <a href="#" id="signup"
                                                                      style="color: blue;">Signup</a>
                                        </div>
                                    </form>
                                </div>
                                <!-- Signup From -->
                                <div id="signup-div" class="form signup_form" style="display:none;">
                                    <form action="SignUpServlet" method="POST" id="signup-form" style="display: flex; flex-direction: column; gap: 6px; align-items: center;">
                                        <h2>Signup</h2>
                                        <div class="input_box">
                                            <input name="username1" type="text" placeholder="Enter your name" required style="border-radius: 10px; width: 280px; height: 35px; padding: 10px;" />

                                        </div>
                                        <div class="input_box">
                                            <input name="password1" type="password" placeholder="Create password" required style="border-radius: 10px; width: 280px; height: 35px; padding: 10px;" />
                                            <i class="uil uil-lock password"></i> <i class="uil uil-eye-slash pw_hide"></i>
                                        </div>
                                        <div class="input_box">
                                            <input name="email" type="email" placeholder="Enter your email" required style="border-radius: 10px; width: 280px; height: 35px; padding: 10px;" />
                                            <i class="uil uil-envelope-alt email"></i> <i class="uil uil-eye-slash pw_hide"></i>
                                        </div>
                                        <div>
                                            <input name="check1" type="checkbox" required="true" value="someValue" /> 
                                            <label>Agree Terms & Conditions</label>
                                        </div>
                                        <button type="submit" class="button" style="width: 35%; height: 40px; border-radius: 20px; background-color: #CDDEEE; border: none;">Signup Now</button>
                                        <div class="login_signup">
                                            Already have an account? <a href="#" id="login" style="color: blue;">Login</a>
                                        </div>
                                    </form>

                                </div>
                            </div>
                            <div class="slider" style="align-items:center;padding-left:42%;">
                                <img id="slider-1" src="images/left.png" style="width:80px;cursor:pointer" />
                                <img id="slider-2" src="images/right.png" style="width:80px;cursor:pointer;display:none;" />
                            </div>
                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-secondary"
                                    data-bs-dismiss="modal">Close</button>
                            <button type="button" class="btn btn-primary">Understood</button>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <script>
            let slider1 = document.getElementById("slider-1");
            let slider2 = document.getElementById("slider-2");
            let signup = document.getElementById("signup-div");
            let login = document.getElementById("login-div");

            slider1.addEventListener("click", () => {

                login.style.display = "none";
                signup.style.display = "block";
                slider2.style.display = "block";
                slider1.style.display = "none";

            });

            slider2.addEventListener("click", () => {
                login.style.display = "block";
                signup.style.display = "none";
                slider2.style.display = "none";
                slider1.style.display = "block";
            });


        </script>

    </body>
</html>

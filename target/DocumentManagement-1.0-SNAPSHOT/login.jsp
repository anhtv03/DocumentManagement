<%-- 
    Document   : login
    Created on : Oct 23, 2023, 10:37:17 PM
    Author     : PC
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Document Management</title>
        <link rel="icon" type="image/x-icon" href="asets/img/book-icon.png">
        <!--=================== Bootstrap CSS ========================== -->
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css"
              integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css">
        <link rel="stylesheet" href="asets/css/loginStyle.css">
    </head>
    <body>
        <div id="container">
            <!--=================== header ========================== -->
            <div id="header">
                <!--=================== Begin: navbar ========================== -->
                <nav class="navbar navbar-expand-sm navbar-dark bg-primary fixed-top">
                    <div class="container">
                        <div class="navbar-home">
                            <a class="navbar-brand" href="index.html">
                                <img src="asets/img/logo_dragon.png" width="35px" height="35px" alt="Logo"/>
                                VA<span style="color: #00A888">DocS</span>
                            </a>
                        </div>
                    </div>
                </nav>
                <!--=================== End: navbar ========================== -->
            </div>

            <!--=================== content ========================== -->
            <div class="back"></div>
            <div class="login">
                <!-- left -->
                <div class="content">
                    <h1>Welcome!</h1>
                    <h3>First Time Here?</h3>
                    <h5>Feel free to join with us</h5>
                    <a href="register.jsp" class="input-submit">SIGN UP</a>
                </div>

                <!-- right -->
                <div class="home">
                    <c:set var="cookie" value="${pageContext.request.cookies}"/>
                    <form action="login" method="get">
                        <div class="modal-container">
                            <!-- header -->
                            <header class="modal-header">
                                LOGIN
                            </header>
                            <!-- body -->
                            <div class="modal-body">
                                <% if (request.getAttribute("loginError") != null && (boolean) request.getAttribute("loginError")) { %>
                                <span class="text-xs whitespace-normal block text-red-500">Incorrect information!</span>
                                <% } %>
                                <!-- email -->
                                <div class="input-box">
                                    <input type="email" class="input-field" name="email" value="${cookie.cemail.value}" required>
                                    <label for="email">Email</label>
                                </div>
                                <!-- password -->
                                <div class="input-box">
                                    <input type="password" class="input-field" id="password" name="password" value="${cookie.cpass.value}" required>
                                    <i class="fa-regular fa-eye" onclick="changeTypePass()"></i>
                                    <i class="fa-regular fa-eye-slash" onclick="changeTypePass()"></i>
                                    <label for="password">Password</label>
                                </div>
                                <!-- forgot -->
                                <div class="forgot">
                                    <section>
                                        <input type="checkbox" name="remember" id="check" ${cookie.crem != null?'checked':''}>
                                        <label for="check">Remember me</label>
                                    </section>
                                    <section>
                                        <a href="#" class="forgot-link">Forgot password?</a>
                                    </section>
                                </div>
                                <!-- sign in -->
                                <div class="input-box">
                                    <button type="submit" name="action" value="signIn" class="input-submit">
                                        SIGN IN
                                    </button>
                                </div>
                            </div>
                        </div>
                    </form>
                </div>

            </div>

            <!--=================== footer ========================== -->
            <div id="footer">

            </div>
        </div>


        <!--=================== Optional JavaScript ========================== -->
        <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"
                integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
        crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js"
                integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
        crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js"
                integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
        crossorigin="anonymous"></script>
    </body>

    <script>
                                        let password = document.getElementById('password');
                                        function changeTypePass() {
                                            if (password.type === 'text') {
                                                password.type = 'password';
                                            } else {
                                                password.type = 'text';
                                            }
                                        }

    </script>

</html>

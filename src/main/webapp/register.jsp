<%-- 
    Document   : register
    Created on : Oct 23, 2023, 10:41:07 PM
    Author     : PC
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
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
        <script>
            <% Boolean showRedirect = (Boolean)request.getAttribute("show"); %>
            <% if (showRedirect != null && showRedirect) { %>
            setTimeout(function () {
                window.location.href = "login.jsp";
            }, 700);
            <% } %>
        </script>
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
                <div class="home">
                    <form action="login" method="get">
                        <div class="modal-container">
                            <!-- header -->
                            <header class="modal-header">
                                REGISTER
                            </header>
                            <!-- body -->
                            <div class="modal-body">
                                <div class="body-error mb-3" id="">
                                    <span class="text-xs whitespace-normal block text-red-500">${requestScope.loginError}</span>
                                    <span class="text-xs whitespace-normal block text-green-500">${requestScope.loginSuccess}</span>
                                </div>
                                <!-- name -->
                                <div class="input-box">
                                    <input type="text" class="input-field" name="name" value="${name}" required>
                                    <label for="email">Full Name *</label>
                                </div>
                                <!-- email -->
                                <div class="input-box">
                                    <input type="email" class="input-field" name="email" value="${email}" required>
                                    <label for="email">Email *</label>
                                </div>
                                <!-- phone -->
                                <div class="input-box">
                                    <input type="text" class="input-field" name="phone" value="${phone}" required>
                                    <label for="email">Phone *</label>
                                </div>
                                <!-- password -->
                                <div class="input-box">
                                    <input type="password" class="input-field" name="password" required>
                                    <label for="password">Password *</label>
                                </div>
                                <!-- sign up -->
                                <div class="input-box">
                                    <button type="submit" name="action" value="signUp" class="input-submit">
                                        SIGN UP
                                    </button>
                                </div>
                            </div>
                        </div>
                    </form>
                </div>

                <!-- right -->
                <div class="content">
                    <h1>Welcome!</h1>
                    <h3>Are you ready!</h3>
                    <h5>Let's try it with us</h5>
                    <a href="login.jsp" class="input-submit">SIGN IN</a>
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
</html>

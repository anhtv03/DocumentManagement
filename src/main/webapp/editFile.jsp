<%-- 
    Document   : docManager
    Created on : Nov 9, 2023, 2:25:13 PM
    Author     : PC
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Document Management</title>
        <link rel="icon" type="image/x-icon" href="asets/img/book-icon.png">
        <!--=================== Bootstrap CSS ========================== -->
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css"
              integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
              crossorigin="anonymous">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/flatpickr/dist/flatpickr.min.css">
        <link rel="stylesheet" href="asets/css/profile.css">
        <style>
            /*===================pop-up=============================-*/
            #toast {
                position: fixed;
                top: 100px;
                right: 32px;
            }

            #toast .toast {
                max-width: 300px;
                max-height: 120px;
                display: flex;
                align-items: center;
                gap: 20px;
                background-color: #fff;
                padding: 10px 10px;
                border-radius: 2px;
                border-left: 4px solid #47d864;
                box-shadow: 0 5px 8px rgba(0, 0, 0, 0.08);
                animation: slideInLeft ease 2s, fadeOut linear 3s 2s forwards;
            }

            @keyframes slideInLeft {
                from {
                    opacity: 0;
                    transform: translateX(calc(100% + 32px));
                }

                to {
                    opacity: 1;
                    transform: translateX(0);
                }
            }

            @keyframes fadeOut {
                to {
                    opacity: 0;
                }
            }


            .toast__icon {
                font-size: 22px;
                color: #47d864;
            }

            .toast__body--msg {
                font-family: Arial, Helvetica, sans-serif;
                font-size: 17px;
                color: rgb(77, 75, 75);
                margin-bottom: 0;
            }
            .hide {
                display: none;
            }
        </style>
    </head>

    <body>
        <div id="main">
            <!--=================== header ========================== -->
            <div id="header">
                <!--=================== Begin: navbar ========================== -->
                <nav class="navbar navbar-expand-sm navbar-light bg-light fixed-top">
                    <div class="container">
                        <!-- Begin: logo -->
                        <div class="navbar-home col-md-2">
                            <a class="navbar-brand" href="home">
                                <img src="asets/img/logo_dragon.png" width="35px" height="35px" alt="Logo" />
                                VA<span style="color: #00A888">DocS</span>
                            </a>
                        </div>
                        <!-- End:logo -->
                        <button class="navbar-toggler" type="button" data-toggle="collapse"
                                data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent"
                                aria-expanded="false" aria-label="Toggle navigation">
                            <span class="navbar-toggler-icon"></span>
                        </button>

                        <!-- Begin: search -->
                        <div class="search-form col-md-1">

                        </div>

                        <!--search by text-->
                        <div class="collapse navbar-collapse col-md-5" id="navbarSupportedContent">
                            <form action="search" method="post" class="search-form nav-item form-inline my-2 my-lg-0">
                                <input name="key" class="form-control wider-search mr-sm-3" type="search" placeholder="Search..."
                                       aria-label="Search">
                                <input type="submit" class="hidden" id="search">
                                <a href="javascript:void(0)" class="search-text" id="searchButton">
                                    <i class="fa-solid fa-magnifying-glass"></i>
                                </a>
                            </form>
                        </div>
                        <!-- End: search -->

                        <!--Begin: up file-->
                        <div class="col-md-1 upload">
                            <a href="upload" class="py-1 px-2 font-weight-bold text-uppercase whitespace-nowrap">upload</a>
                        </div>
                        <!--end:up file-->

                        <!-- Begin: user -->
                        <div class="user col-md-3">
                            <!--menu user-->
                            <div class="user-header pointer relative js-user" onclick="toggleUserMenu()">
                                <span class="relative float-left mr-2 h-8 w-8">
                                    <img src="https://media.store123doc.com/images/default/user_small.png" alt="user">
                                </span>
                                <a class="user-name" href="javascript:void(0)">${requestScope.user.name}</a>
                            </div>
                            <!--list menu-->
                            <div class="user-modal absolute js-modal">
                                <ul class="user-modal-sub">
                                    <li><a href="overview">Dashboard</a></li>
                                    <li><a href="profile">Profile</a></li>
                                    <li><a href="management">Doc Management</a></li>
                                    <li><a href="login?action=logout">LogOut</a></li>
                                </ul>
                            </div>
                        </div>
                        <!-- End: user -->
                    </div>
                </nav>
                <!-- End: navbar -->
            </div>


            <!--=================== wall ========================== -->
            <section id="wall" class="wall">
                <div class="w-full h-24 ad_user"></div>
                <div class="py-4 px-2 bg-white">
                    <div class="container relative flex max-w-screen-xl mx-auto justify-between">
                        <div class="flex">
                            <div class="w-24 h-24 mt_16 shrink-0">
                                <img src="https://media.store123doc.com/images/default/user_small.png"
                                     alt="avatar" class="h-full w-full border-4 rounded shadow border-white" />
                            </div>
                            <div class="w-full">
                                <div class="flex items-center pl-4">
                                    <h3 class="mr-4 text-2xl">${requestScope.user.name}</h3>
                                </div>
                            </div>
                        </div>
                        <div class="px-4 block min-w-16rem">
                            <ul class="flex justify-around text-center">
                                <!--view-->
                                <li class="pr-4">
                                    <span
                                        class="block text-10px text-title-darker uppercase font-bold">View</span>
                                    <span class="font-bold">${requestScope.view}</span>
                                    <!--lay du lieu tu ben database-->
                                </li>
                                <li class="border-gray-400 border-solid border-r"></li>
                                <!--document-->
                                <li class="px-4">
                                    <span
                                        class="block text-10px text-title-darker uppercase font-bold">Document</span>
                                    <span class="font-bold">${requestScope.count}</span>
                                    <!--lay du lieu tu ben database-->
                                </li>
                                <li class="border-gray-400 border-solid border-r"></li>
                                <!--Downloads-->
                                <li class="pl-4">
                                    <span
                                        class="block text-10px text-title-darker uppercase font-bold">Downloads</span>
                                    <span class="font-bold">0</span>
                                    <!--lay du lieu tu ben database-->
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
            </section>


            <!--=================== content ========================== -->
            <section id="content">
                <div class="container flex max-w-screen-xl">
                    <h3 style="display: none">Personal information</h3>

                    <!--Begin: left content-->
                    <div class="col-md-3 mt-20">
                        <div class="w-full space-y-2">
                            <!-- Overview -->
                            <div class="bg-white border rounded text-title-darker bg-primary">
                                <a href="overview">
                                    <p class="py-3 px-2-5">
                                        <i class="fa-solid fa-display h-6 w-6 mr-1 font-1-25"></i> Overview
                                    </p>
                                </a>
                            </div>
                            <!-- Document Management -->
                            <div class="bg-white border rounded text-title-darker run-choices">
                                <a href="management">
                                    <p class="py-3 px-2-5">
                                        <i class="fa-solid fa-file-lines h-6 w-6 mr-1 font-1-25"></i> Document
                                        Management
                                    </p>
                                </a>
                            </div>
                            <!-- personal information -->
                            <div class="bg-white border rounded text-title-darker bg-primary">
                                <a href="profile">
                                    <p class="py-3 px-2-5">
                                        <i class="fa-regular fa-circle-user h-6 w-6 mr-1 font-1-25"></i>
                                        Personal Information
                                    </p>
                                </a>
                            </div>
                            <!-- image icon -->
                            <div class="overflow-hidden w-full block">
                                <i class="image-icon ad-user-image"></i>
                            </div>
                        </div>
                    </div>
                    <!--End: left content-->

                    <!--Begin: right content-->
                    <div class="col-md-9" id="displayEdit">
                        <h1 class="my-4 text-2xl">Edit document information</h1>
                        <form action="editFile" method="post">
                            <div class="mb-4 w-full rounded border bg-light px-10 pt-10">
                                <div class="container upload-result space-y-3">
                                    <input type="hidden" id="editID" name="documentID" value="${requestScope.doc.documentID}">
                                    <!-- file name -->
                                    <div>
                                        <label for="txtName" class="text-center col-md-3">
                                            File name
                                            <i class="i_req">(*)</i>
                                        </label>
                                        <input type="text" name="fileName" id="txtName" placeholder="Enter title" 
                                               value="${requestScope.doc.docName}" class="col-md-8 p-2" />
                                        <div id="txtError" class="error-message" style="color: red;"></div>
                                    </div>
                                    <!-- category -->
                                    <div>
                                        <label for="category" class="text-center col-md-3">
                                            Category
                                            <i class="i_req">(*)</i>
                                        </label>
                                        <select name="categorySelect" id="category" class="w-full px-2 py-2 col-md-8">
                                            <option value="-1"> - Category - </option>
                                            <c:forEach items="${category}" var="ca">
                                                <option value="${ca.categoryID}">
                                                    ${ca.categoryName}
                                                </option>
                                            </c:forEach>
                                        </select>
                                        <div id="categoryError" class="error-message" style="color: red;"></div>
                                    </div>
                                    <!-- submit -->
                                    <div>
                                        <div class="col-md-2 ml-56 py-4">
                                            <input style="cursor: pointer;" type="submit" value="SAVE" class="submit">
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </section>


            <!--=================== footer ========================== -->
            <footer class="mt-auto" id="footer">
                <div class="bg-light border-t text-title-darker">
                    <h3 class="p-6 text-center">
                        <a href="javascript:;">
                            <img src="asets/img/logo_dragon.png" width="35px" height="35px" alt="Logo" />
                            VA<span style="color: #00A888">DocS</span>
                        </a>
                    </h3>
                    <div class="container">
                        <div class="row">
                            <!-- about me -->
                            <div class="col-md-4">
                                <div class="footer__about">
                                    <h3>ABOUT ME</h3>
                                </div>
                                <ul>
                                    <li><i class="fa-solid fa-map-location-dot"></i><p>Ha Noi, Viet Nam</p></li>
                                    <li><i class="fa-regular fa-envelope"></i><p>anhtvhe176717@fpt.edu.vn</p></li>
                                    <li><i class="fa-solid fa-phone"></i><p>+84 123456789</p></li>
                                </ul>
                            </div>
                            <!-- help -->
                            <div class="col-md-4">
                                <div class="footer__about">
                                    <h3>HELP</h3>
                                </div>
                                <ul>
                                    <li><a href="terms.jsp">Terms of Use</a></li>
                                    <li><a href="privacy.jsp">Privacy Policy</a></li>
                                </ul>
                            </div>
                            <!-- contact -->
                            <div class="col-md-4">
                                <div class="footer__about">
                                    <h3>CONTACT</h3>
                                </div>
                                <a href="#"><i class="fa-brands fa-facebook first-icon"></i></a>
                                <a href="#"><i class="fa-brands fa-instagram"></i></a>
                                <a href="#"><i class="fa-brands fa-linkedin"></i></a>
                                <a href="#"><i class="fa-brands fa-tiktok"></i></a>
                            </div>
                        </div>
                    </div>
                    <!-- copy right -->
                    <div class="row w-full">
                        <div class="col-lg-12 text-center text-xs">
                            <p>Copyright © 2023. Designed by VADocS</p>
                        </div>
                    </div>
                </div>
            </footer>
        </div>

        <!--pop-up notification-->
        <div id="toast" class="${status == 'success' ? '' : 'hide'}">
            <div class="toast">
                <div class="toast__icon">
                    <div class="fas fa-check-circle"></div>
                </div>
                <div class="toast__body">
                    <p class="toast__body--msg">Information changed successfully</p>
                </div>
            </div>
        </div>
        <!--pop-up notification--> 


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
        <script src="https://cdn.jsdelivr.net/gh/alpinejs/alpine@2.x/dist/alpine.js" defer></script>
        <script src="https://cdn.jsdelivr.net/npm/flatpickr"></script>
    </body>
    <script type="text/javascript">


                                function validateForm() {
                                    let currentPass = document.getElementsByName("currentPass")[0].value;
                                    let newPass = document.getElementsByName("newPass")[0].value;
                                    let confirmPass = document.getElementsByName("confirmPass")[0].value;
                                    let newPassError = document.getElementById("newPassError");
                                    let currentPassError = document.getElementById("currentPassError");

                                    if (currentPass !== "admin123") {
                                        currentPassError.innerHTML = "Current Password is incorrect.";
                                        return false;
                                    } else {
                                        currentPassError.innerHTML = "";
                                    }

                                    if (newPass === "") {
                                        newPassError.innerHTML = "New Password is required.";
                                        return false;
                                    } else {
                                        newPassError.innerHTML = "";
                                    }

                                    if (newPass !== confirmPass) {
                                        newPassError.innerHTML = "New Password and Confirm Password do not match.";
                                        return false;
                                    } else {
                                        newPassError.innerHTML = "";
                                    }
                                    return true;
                                }

                                document.getElementById('searchButton').addEventListener('click', function () {
                                    document.getElementById('search').click();
                                });
    </script>
</html>

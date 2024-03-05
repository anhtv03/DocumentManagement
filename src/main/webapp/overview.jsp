<%-- Document : profile Created on : Oct 29, 2023, 10:02:55 PM Author : PC --%>

<%@page contentType="text/html" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>

    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Overview</title>
        <link rel="icon" type="image/x-icon" href="asets/img/book-icon.png">
        <!--=================== Bootstrap CSS ========================== -->
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css"
              integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
              crossorigin="anonymous">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/flatpickr/dist/flatpickr.min.css">
        <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.6.0/Chart.min.js"></script>
        <link rel="stylesheet" href="asets/css/profile.css">
    </head>

    <body>
        <div id="main">
            <!--===================Begin: header ========================== -->
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
            <!--===================End: header =============================-->

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
                            <div class="bg-white border rounded text-title-darker run-choices">
                                <a href="#">
                                    <p class="py-3 px-2-5">
                                        <i class="fa-solid fa-display h-6 w-6 mr-1 font-1-25"></i> Overview
                                    </p>
                                </a>
                            </div>
                            <!-- Document Management -->
                            <div class="bg-white border rounded text-title-darker bg-primary">
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
                    <div class="col-md-9">
                        <canvas id="myChart"></canvas>
                        <div class="py-5"></div>
                    </div>
                    <!-- End: right content -->
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

        <script type="text/javascript">
                                const modal = document.querySelector('.js-modal');
                                let menuStatus = false;

                                // thêm class vào modal
                                function showUserMenu() {
                                    modal.classList.add('open');
                                }

                                //gỡ bỏ class open của modal
                                function hideUserMenu() {
                                    modal.classList.remove('open');
                                }

                                function toggleUserMenu() {
                                    if (menuStatus) {
                                        hideUserMenu();
                                    } else {
                                        showUserMenu();
                                    }
                                    menuStatus = !menuStatus;
                                }


                                function validateForm() {
                                    let currentPass = document.getElementsByName("currentPass")[0].value;
                                    let currentPassError = document.getElementById("currentPassError");
                                    let newPass = document.getElementsByName("newPass")[0].value;
                                    let confirmPass = document.getElementsByName("confirmPass")[0].value;
                                    let newPassError = document.getElementById("newPassError");

                                    if (currentPass !== "${requestScope.account.password}") {
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

                                // Chart
                                let myChart = document.getElementById('myChart').getContext('2d');
                                // Global Options
                                Chart.defaults.global.defaultFontFamily = 'Lato';
                                Chart.defaults.global.defaultFontSize = 18;
                                Chart.defaults.global.defaultFontColor = '#777';

                                let massPopChart = new Chart(myChart, {
                                    type: 'bar', // bar, horizontalBar, pie, line, doughnut, radar, polarArea
                                    data: {
                                        labels: ['August', 'September', 'October', 'November', 'December'],
                                        datasets: [{
                                                label: 'Quantity',
                                                data: [
                                                    ${requestScope.month1},
                                                    ${requestScope.month2},
                                                    ${requestScope.month3},
                                                    ${requestScope.month4},
                                                    ${requestScope.month5}
                                                ],
                                                //backgroundColor:'green',
                                                backgroundColor: [
                                                    'rgba(255, 99, 132, 0.6)',
                                                    'rgba(54, 162, 235, 0.6)',
                                                    'rgba(255, 206, 86, 0.6)',
                                                    'rgba(75, 192, 192, 0.6)',
                                                    'rgba(153, 102, 255, 0.6)',
                                                    'rgba(255, 159, 64, 0.6)'
                                                ],
                                                borderWidth: 1,
                                                borderColor: '#777',
                                                hoverBorderWidth: 3,
                                                hoverBorderColor: '#000'
                                            }]
                                    },
                                    options: {
                                        scales: {
                                            y: {
                                                beginAtZero: true
                                            }
                                        },
                                        title: {
                                            display: true,
                                            text: 'Number of documents posted',
                                            fontSize: 25
                                        },
                                        legend: {
                                            display: true,
                                            position: 'right',
                                            labels: {
                                                fontColor: '#000'
                                            }
                                        },
                                        layout: {
                                            padding: {
                                                left: 50,
                                                right: 0,
                                                bottom: 0,
                                                top: 0
                                            }
                                        },
                                        tooltips: {
                                            enabled: true
                                        }
                                    }
                                });
                                document.getElementById('searchButton').addEventListener('click', function () {
                                                document.getElementById('search').click();
                                            });
        </script>
    </body>



</html>
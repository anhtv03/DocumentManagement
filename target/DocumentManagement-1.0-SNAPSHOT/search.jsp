<%-- 
    Document   : admin
    Created on : Oct 28, 2023, 3:37:11 PM
    Author     : PC
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Search '${requestScope.key}'</title>
        <link rel="icon" type="image/x-icon" href="asets/img/book-icon.png">
        <!--=================== Bootstrap CSS ========================== -->
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css"
              integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css">
        <link rel="stylesheet" href="asets/css/admin.css">
    </head>
    <body>
        <%
            
        %>
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
            <!--=================== End: header ========================== -->


            <!--=================== content ========================== -->
            <section id="content" class="content">
                <div class="h-100"></div>
                <!-- Begin: content container -->
                <div class="container">
                    <form action="search" method="post">
                        <h1 class="p-2 text-2xl">
                            Results with keywords "<strong class="font-semibold">${requestScope.key}</strong>"
                        </h1>
                        <input name="key" value="${key}" type="hidden"/>
                        <!--search continue-->
                        <div class="flex px-2 filter_search text-sm-center overflow-x-visible">
                            <div class="filterItem filterCate">
                                <select name="categorySelect" id="category" class="px-2 py-2" onchange="this.form.submit()">
                                    <option value="0"> - Category - </option>
                                    <c:forEach items="${requestScope.category}" var="ca">
                                        <option value="${ca.categoryID}" ${ca.categoryID == requestScope.categorySelect ? 'selected' : ''}>
                                            ${ca.categoryName}
                                        </option>
                                    </c:forEach>
                                </select>
                                <div id="categoryError" class="error-message" style="color: red;"></div>
                            </div>
                            <div class="filterItem"></div>
                            <div class="filterItem"></div>
                        </div>

                        <!--show result-->
                        <div class="p-4 h-a">
                            <c:if test="${not empty doc}">
                                <div class="grid mt-2 mb-4 grid-col-5 gap-2">
                                    <c:forEach items="${requestScope.doc}" var="doc">
                                        <div class="p-4 bg-light rounded overflow-hidden space-y-3 relative">
                                            <a href="detail?documentID=${doc.documentID}" class="relative block" title="${doc.docName}">
                                                <img src="${doc.imgDoc}" alt="${doc.docName}" class="mx-auto border rounded w-36 flex align-content-center"/>
                                            </a>
                                            <a href="detail?documentID=${doc.documentID}" class="text-lg break-words text-ellipsis line-clamp-2" title="${doc.docName}">
                                                ${doc.docName}
                                            </a>
                                            <ul class="flex text-xs text-title-darker space-x-2">
                                                <li>
                                                    <i class="fa-regular fa-eye w-4 h-4 inline mr-1"></i>
                                                    ${doc.view}
                                                </li>
                                                <li>
                                                    <i class="fa-regular fa-calendar-days w-4 h-4 inline mr-1"></i>
                                                    ${doc.dateCreated}
                                                </li>
                                            </ul>
                                        </div>
                                    </c:forEach>
                                </div> 
                            </c:if>
                            <c:if test="${empty doc}">
                                <div style="display: flex; justify-content: center; width: 100%;"><h2 style="height: 200px">Not found!!!</h2></div>
                            </c:if>
                        </div>
                    </form>
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
    </body>

    <script type="text/javascript">
                                    const user = document.querySelector('.js-user');
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

                                    document.getElementById('searchButton').addEventListener('click', function () {
                                        document.getElementById('search').click();
                                    });
    </script>
</html>

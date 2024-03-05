<%-- 
    Document   : upFile
    Created on : Nov 5, 2023, 11:50:41 PM
    Author     : PC
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Upload File</title>
        <link rel="icon" type="image/x-icon" href="asets/img/book-icon.png">
        <!--=================== Bootstrap CSS ========================== -->
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css"
              integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css">
        <link rel="stylesheet" href="asets/css/profile.css">
    </head>
    <body>
        <%
            if(session.getAttribute("account") == null){
                
            }
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
                    </div>
                </nav>
                <!--=================== End: navbar ========================== -->
            </div>


            <!--=================== content ========================== -->
            <section id="content" class="content wall">
                <div class="container mx-auto pt-2 main-upload">
                    <h2 class="text-3xl">Upload and share documents with us</h2>
                    <h4 class="text-xl">VA<span style="color: #00A888">DocS</span> will bring you more than 10 million
                        readers, income, fame and more</h4>
                    <!-- main-wrap -->
                    <div class="main-wrap relative">
                        <h1 class="text-3xl">Upload documents to VA<span style="color: #00A888">DocS</span></h1>
                        <div class="relative">
                            <a id="uploadLink" href="javascript:void(0);">Upload</a>
                        </div>
                        <p>Select the upload button to select multiple files from your computer or drag and drop files here
                        </p>
                        <p>Press the Shift or Ctrl button to select multiple files</p>
                        <h3 style="color: green;">${mess}</h3>
                    </div>
                    <!-- upload-text -->
                    <div class="mb-3 mt-4 clear overflow-hidden upload_text">
                        <h2>The reason you post documents at VA<span style="color: #00A888">DocS</span></h2>
                        <ul>
                            <li><a><i class="fa-solid fa-people-line"></i> reaches 10 million<br> readers daily</a></li>
                            <li><a><i class="fa-brands fa-google-plus"></i> Appears in Top 3<br> search engines</a></li>
                            <li><a><i class="fa-solid fa-money-bill-wave"></i> Increase income from<br> your own publications</a></li>
                            <li><a><i class="fa-solid fa-house-laptop"></i> Experience reading<br> on any device</a></li>
                            <li><a><i class="fa-solid fa-arrow-trend-up"></i> Analyze index reports</a></li>
                        </ul>
                    </div>
                    <!-- has Document -->
                    <div class="title-upload" id="hasDocument">Upload documents</div>

                    <!-- ========SAVE all mode======== -->
                    <div id="form-upload" style="display: none;">
                        <form action="upload" method="post" onsubmit="return validateForm()"  enctype="multipart/form-data">
                            <input type="file" name="file" id="fileInput" style="display: none;" accept=".docx, .pdf, .ppt, pptx, .xls, .xlsx, .txt">
                            <table class="upload-result w-full" id="upLoadResult">
                                <tr class="tr_process">
                                    <td colspan="2">
                                        <label id="progress-label" for="progress"></label>
                                        <span>Loaded • </span><span id="file-name"></span>
                                        <progress id="progress" value="0" max="100">
                                    </td>
                                </tr>
                                <tr class="tr_info">
                                    <td class="p-2">
                                        <div class="container upload-result space-y-3">
                                            <!-- file name -->
                                            <div>
                                                <label for="txtName" class="text-center col-md-3">
                                                    File name
                                                    <i class="i_req">(*)</i>
                                                </label>
                                                <input type="text" name="fileName" id="txtName" placeholder="Enter title"
                                                       value="" class="col-md-8 p-2" />
                                                <div id="txtError" class="error-message" style="color: red;"></div>
                                                <!--<input type="text" name="fileTitle" id="fileTilte" value=""  class="hidden"/>-->
                                            </div>
                                            <!-- category -->
                                            <div>
                                                <label for="category" class="text-center col-md-3">
                                                    Category
                                                    <i class="i_req">(*)</i>
                                                </label>
                                                <select name="categorySelect" id="category"
                                                        class="w-full px-2 py-2 col-md-8">
                                                    <option value="-1"> - Category - </option>
                                                    <c:forEach items="${requestScope.category}" var="ca">
                                                        <option value="${ca.categoryID}">${ca.categoryName}</option>
                                                    </c:forEach>
                                                </select>
                                                <div id="categoryError" class="error-message" style="color: red;"></div>
                                            </div>
                                            <!-- submit -->
                                            <div>
                                                <div class="col-md-2">
                                                    <input type="submit" value="SAVE" class="submit">
                                                </div>
                                            </div>
                                        </div>
                                    </td>
                                </tr>
                                <tr></tr>
                            </table>
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
                                    <li><i class="fa-solid fa-map-location-dot"></i>
                                        <p>Ha Noi, Viet Nam</p>
                                    </li>
                                    <li><i class="fa-regular fa-envelope"></i>
                                        <p>anhtvhe176717@fpt.edu.vn</p>
                                    </li>
                                    <li><i class="fa-solid fa-phone"></i>
                                        <p>+84 123456789</p>
                                    </li>
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
                            document.addEventListener("DOMContentLoaded", function () {
                                const mainUpload = document.querySelector('.main-upload');
                                const mainWrap = document.querySelector('.main-wrap');
                                const uploadText = document.querySelector('.upload_text');
                                const hasDocument = document.getElementById('hasDocument');

                                document.getElementById('uploadLink').addEventListener('click', function () {
                                    mainUpload.querySelector('h2').style.display = 'none';
                                    mainUpload.querySelector('h4').style.display = 'none';

                                    mainWrap.querySelector('p').style.display = 'none';
                                    mainWrap.style.backgroundColor = 'transparent';
                                    mainWrap.style.border = 'none';
                                    mainWrap.style.marginTop = '0px';

                                    uploadText.style.display = 'none';
                                    hasDocument.style.display = 'block';

                                    document.getElementById('form-upload').style.display = 'block';
                                    document.getElementById('fileInput').click();
                                });
                            });

                            const fileUploader = document.getElementById('fileInput');
                            const txtName = document.getElementById('txtName');
                            const fileTilte = document.getElementById('fileTilte');
                            const fileNameDisplay = document.getElementById('file-name');
                            const reader = new FileReader();

                            fileUploader.addEventListener('change', (event) => {
                                const files = event.target.files;
                                const file = files[0];
                                reader.readAsDataURL(file);

                                reader.addEventListener('loadend', () => {
                                    txtName.value = file.name;
                                    fileTilte.value = file.name;
                                    fileNameDisplay.textContent = "File: " + file.name;
                                });
                            });

                            function validateForm() {
                                const categorySelect = document.getElementById('category');
                                const categoryError = document.getElementById('categoryError');
                                const txtError = document.getElementById("txtError");

                                if (txtName.value === "") {
                                    txtError.innerHTML = "File name is required.";
                                    return false;
                                } else {
                                    txtError.innerHTML = "";
                                }

                                if (categorySelect.value === "-1") {
                                    categoryError.innerHTML = "Category has not been selected";
                                    return false;
                                } else {
                                    categoryError.textContent = "";
                                    return true;
                                }
                            }
    </script>
</html>

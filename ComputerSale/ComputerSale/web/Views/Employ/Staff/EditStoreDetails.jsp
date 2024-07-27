<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <link rel="icon" href="Image/laptop-icon.png" type="image/x-icon">
        <meta charset="UTF-8">
        <title>Edit Store Info</title>
        <meta content="width=device-width, initial-scale=1.0" name="viewport">
        <meta content="" name="keywords">
        <meta content="" name="description">

        <!-- Favicon -->
        <link href="img/favicon.ico" rel="icon">

        <!-- Google Web Fonts -->
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=Open+Sans:wght@400;600&family=Roboto:wght@500;700&display=swap" rel="stylesheet"> 

        <!-- Icon Font Stylesheet -->
        <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css" rel="stylesheet">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css" rel="stylesheet">

        <!-- Libraries Stylesheet -->
        <link href="lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet">
        <link href="lib/tempusdominus/css/tempusdominus-bootstrap-4.min.css" rel="stylesheet" />

        <!-- Customized Bootstrap Stylesheet -->
        <link href="cssE/bootstrap.min.css" rel="stylesheet">

        <!-- Template Stylesheet -->
        <link href="cssE/style.css" rel="stylesheet">

        <script src="https://cdn.jsdelivr.net/npm/@tinymce/tinymce-webcomponent@2/dist/tinymce-webcomponent.min.js"></script>
        <script src="tinymce/tinymce.min.js"></script> 

        <style>
            .multi-line {
                min-height: 100px; /* Minimum height */
                max-height: 300px; /* Maximum height, adjust as needed */
                overflow-y: auto; /* Enables vertical scrolling */
                border: 1px solid #ced4da; /* Example border style */
                padding: 8px; /* Example padding */
            }
        </style>
    </head>
    <body>
        <div class="container-fluid position-relative d-flex p-0">
            <!-- Sidebar Start -->
            <%@include file="../HeadFoot/EmployeeSidebar.jsp" %>
            <!-- Sidebar End -->

            <!-- Content Start -->
            <div class="content">
                <!-- Navbar Start -->
                <%@include file="../HeadFoot/EmployeeNav.jsp" %>
                <!-- Navbar End -->

                <!-- Blank Start -->
                <div class="container-fluid pt-4 px-4">
                    <div class="row bg-light rounded justify-content-center mx-0">
                        <div class="container p-2">
                            <div class="row">
                                <div class="container col-md-12">
                                    <div class="container row">
                                        <div class="col">
                                            <h1 class="display-3 p-4">Edit Store Info</h1>
                                        </div>
                                        <div class="col d-flex justify-content-end align-items-center">
                                            <a href="managenews" class="btn btn-outline-primary">Come back Manage Store Info</a>
                                        </div>
                                    </div>
                                    <div class="container">
                                        <c:if test="${not empty requestScope.alertMessage}">
                                            <div class="alert alert-${alertType} alert-dismissible fade show" role="alert">
                                                ${requestScope.alertMessage}
                                                <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
                                            </div>
                                        </c:if>
                                    </div>
                                    <div class="container">
                                        <form action="editstoreinfo?newsid=1" id="storeInfoForm" method="post">
                                            <input type="hidden" name="id" value="1">
                                            <div class="mb-3 row">
                                                <div class="col-md-2">
                                                    <label for="storeAddress" class="form-label"><strong>Address:</strong></label>
                                                </div>
                                                <div class="col-md-10">
                                                    <input type="text" class="form-control" id="storeAddress" name="address" required value="${address}">
                                                </div>
                                            </div>
                                            <div class="mb-3 row">
                                                <div class="col-md-2">
                                                    <label for="storePhone" class="form-label"><strong>Phone Number:</strong></label>
                                                </div>
                                                <div class="col-md-10">
                                                    <input type="text" class="form-control" id="storePhone" name="phone" required value="${phone}">
                                                </div>
                                            </div>
                                            <div class="mb-3 row">
                                                <div class="col-md-2">
                                                    <label for="storeEmail" class="form-label"><strong>Email Address:</strong></label>
                                                </div>
                                                <div class="col-md-10">
                                                    <input type="email" class="form-control" id="storeEmail" name="email" required value="${email}">
                                                </div>
                                            </div>
                                            <div class="text-end mb-3">
                                                <button type="submit" class="btn btn-success" name="action" value="1">Save Changes</button>
                                            </div>
                                        </form>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- Footer Start -->
                <%@include file="../HeadFoot/EmployeeFooter.jsp" %>
                <!-- Footer End -->
            </div>
        </div>

        <!-- Place the following <script> and <textarea> tags your HTML's <body> -->
        <script>
            tinymce.init({
                selector: '.tinymce',
                plugins: 'anchor autolink charmap codesample emoticons image link lists media searchreplace table visualblocks wordcount checklist mediaembed casechange export formatpainter pageembed linkchecker a11ychecker tinymcespellchecker permanentpen powerpaste advtable advcode editimage advtemplate ai mentions tinycomments tableofcontents footnotes mergetags autocorrect image typography inlinecss markdown',
                toolbar: 'undo redo | blocks fontfamily fontsize | bold italic underline strikethrough | insertfile link image media table mergetags | addcomment showcomments | spellcheckdialog a11ycheck typography | align lineheight | checklist numlist bullist indent outdent | emoticons charmap | removeformat',

                tinycomments_mode: 'embedded',
                tinycomments_author: 'Author name',
                mergetags_list: [
                    {value: 'First.Name', title: 'First Name'},
                    {value: 'Email', title: 'Email'},
                ],
                license_key: 'gpl',
                ai_request: (request, respondWith) => respondWith.string(() => Promise.reject("See docs to implement AI Assistant")),
            });
        </script>

        <!-- JavaScript Libraries -->
        <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js"></script>
        <script src="lib/chart/chart.min.js"></script>
        <script src="lib/easing/easing.min.js"></script>
        <script src="lib/waypoints/waypoints.min.js"></script>
        <script src="lib/owlcarousel/owl.carousel.min.js"></script>
        <script src="lib/tempusdominus/js/moment.min.js"></script>
        <script src="lib/tempusdominus/js/moment-timezone.min.js"></script>
        <script src="lib/tempusdominus/js/tempusdominus-bootstrap-4.min.js"></script>

        <!-- Template Javascript -->
        <script src="js/main.js"></script> 

    </body>
</html>
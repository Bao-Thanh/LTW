<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1"/>
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Nhóm 9 Shop</title>

        <!-- Google Fonts -->
        <link href='http://fonts.googleapis.com/css?family=Titillium+Web:400,200,300,700,600' rel='stylesheet' type='text/css'>
        <link href='http://fonts.googleapis.com/css?family=Roboto+Condensed:400,700,300' rel='stylesheet' type='text/css'>
        <link href='http://fonts.googleapis.com/css?family=Raleway:400,100' rel='stylesheet' type='text/css'>

        <!-- Bootstrap -->
        <!--        <link rel="stylesheet" href="css/bootstrap.min.css">-->
        <link href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.1/css/bootstrap.min.css" rel="stylesheet">
        <script src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.1/js/bootstrap.min.js"></script>
        <!-- Font Awesome -->
        <link rel="stylesheet" href="css/font-awesome.min.css">

        <!-- Custom CSS -->
        <link rel="stylesheet" href="css/owl.carousel.css">
        <link rel="stylesheet" href="css/style.css">
        <link rel="stylesheet" href="css/responsive.css">
    </head>
    <body>
        <header>
            <jsp:include page="header.jsp" flush="true"></jsp:include>
            </header>
            <p> </p>
            <h3 class="modal-title" id="contact">Thông tin liên hệ</h3>
            <table class="table table-bordered">
                <thead>
                    <tr>
                        <th scope="col">#</th>
                        <th scope="col">Họ và tên</th>
                        <th scope="col">MSSV</th>
                        <th scope="col">Trang cá nhân</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <th scope="row">1</th>
                        <td>Nguyễn Lê Bảo Thanh</td>
                        <td>
                            <a href="https://https://mail.google.com/mail/u/0/?fs=1&tf=cm&source=mailto&to=19110019@student.hcmute.edu.vn" target="_blank">19110019</a>
                        </td>
                        <td>
                            <a href="https://https://www.facebook.com/lebaothanh.nguyen.73/" target="_blank">Nguyễn Lê Bảo Thanh </a>
                        </td>
                    </tr>
                    <tr>
                        <th scope="row">2</th>
                        <td>Nguyễn Hồng Phúc</td>
                        <td>
                            <a href="https://mail.google.com/mail/u/0/?fs=1&amp;tf=cm&amp;source=mailto&amp;to=19110267@student.hcmute.edu.vn" target="_blank">19110267</a>
                        </td>
                        <td>
                            <a href="https://www.facebook.com/profile.php?id=100004408368875/" target="_blank">Nguyễn Hồng Phúc </a>
                        </td>
                    </tr>
                    <tr>
                        <th scope="row">3</th>
                        <td>Lê Minh Hiếu</td>
                        <td>
                            <a href="https://mail.google.com/mail/u/0/?fs=1&amp;tf=cm&amp;source=mailto&amp;to=19110203@student.hcmute.edu.vn" target="_blank">19110203</a>
                        </td>
                        <td>
                            <a href="https://www.facebook.com/LeeHieu.13/" target="_blank">Lê Hiếu</a>
                        </td>
                    </tr>
                </tbody>
            </table>
        <jsp:include page="footer.jsp" flush="true"></jsp:include>

        <!-- Latest jQuery form server -->
        <script src="https://code.jquery.com/jquery.min.js"></script>

        <!-- Bootstrap JS form CDN -->
        <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>

        <!-- jQuery sticky menu -->
        <script src="js/owl.carousel.min.js"></script>
        <script src="js/jquery.sticky.js"></script>

        <!-- jQuery easing -->
        <script src="js/jquery.easing.1.3.min.js"></script>

        <!-- Main Script -->
        <script src="js/main.js"></script>

        <!-- Slider -->
        <script type="text/javascript" src="js/bxslider.min.js"></script>
        <script type="text/javascript" src="js/script.slider.js"></script>
    </body>
</html>

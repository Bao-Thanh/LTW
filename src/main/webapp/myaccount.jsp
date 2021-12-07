<%@page import="model.Khachhang"%>
<%@page import="dao.KhachhangDAOImpl"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang = "vi">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Shop Page - Nhóm 9 Shop</title>

        <!-- Google Fonts -->
        <link href='http://fonts.googleapis.com/css?family=Titillium+Web:400,200,300,700,600' rel='stylesheet' type='text/css'>
        <link href='http://fonts.googleapis.com/css?family=Roboto+Condensed:400,700,300' rel='stylesheet' type='text/css'>
        <link href='http://fonts.googleapis.com/css?family=Raleway:400,100' rel='stylesheet' type='text/css'>

        <!-- Bootstrap -->
        <link rel="stylesheet" href="css/bootstrap.min.css">

        <!-- Font Awesome -->
        <link rel="stylesheet" href="css/font-awesome.min.css">

        <!-- Custom CSS -->
        <link rel="stylesheet" href="css/owl.carousel.css">
        <link rel="stylesheet" href="css/style.css">
        <link rel="stylesheet" href="css/responsive.css">F
    </head>
    <body>
        <header>
            <jsp:include page="header.jsp" flush="true"></jsp:include>
            </header>

        <%
            String err = "";
            if (request.getAttribute("err") != null) {
                err = (String) request.getAttribute("err");
            }
        %>

        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <div class="form-group">
                        <p> </p>
                        <h2 class="section-title">THÔNG TIN CÁ NHÂN</h2>
                        <form action="KhachhangServlet"  method="POST">                      
                            <li style="color: red"><%=err%></li>
                            <label class="" for="tenKH">Tên của bạn: <abbr title="required" class="required">*</abbr>
                            </label>
                            <input type="text" value="${kh.tenKH}" id="tenKH" name="tenKH" class="form-control">
                            </div>

                            <div class="form-group">
                                <label class="" for="tenTK">Tài khoản: <abbr title="required" class="required">*</abbr>
                                </label>
                                <input type="text" value="${kh.tenTK}" id="tenTK" name="tenTK" class="form-control">
                            </div>

                            <div class="form-group">
                                <label class="" for="matKhau">Mật khẩu: <abbr title="required" class="required">*</abbr>
                                </label>
                                <input type="password" value="${kh.matKhau}" id="matKhau" name="matKhau" class="form-control">
                            </div>

                            <div class="form-group">                     
                                <label class="" for="diaChi">Địa chỉ: <abbr title="required" class="required">*</abbr>
                                </label>
                                <input type="text" value="${kh.diaChi}" id="diaChi" name="diaChi" class="form-control">
                            </div>   

                            <div class="form-group">
                                <label class="" for="sdt">Số điện thoại: <abbr title="required" class="required">*</abbr>
                                </label>
                                <input type="text" value="${kh.sdt}" id="sdt" name="sdt" class="form-control">
                            </div>

                            <div class="form-group">                       
                                <label class="" for="email">Email: <abbr title="required" class="required">*</abbr>
                                </label>
                                <input type="email" value="${kh.email}" id="email" name="email" class="form-control">
                            </div>
                            <input type="hidden" value="${kh.maKH}" id="maKH" name="maKH" class="form-control">
                            <button type="submit" class="btn btn-primary">Lưu lại</button>      
                        </form>                     
                    </div>
                </div>
            </div>

            <div>
                <p>

                </p>
            </div>

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

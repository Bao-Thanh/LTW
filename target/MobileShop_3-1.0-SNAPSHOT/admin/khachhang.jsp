<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!doctype html>
<html lang="vi">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <link rel="icon" type="image/png" href="assets/img/favicon.ico">
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />

        <title>Admin - Quản lý khách hàng</title>

        <meta content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0' name='viewport' />
        <meta name="viewport" content="width=device-width" />


        <!-- Bootstrap core CSS     -->
        <link href="admin/assets/css/bootstrap.min.css" rel="stylesheet" />

        <!-- Animation library for notifications   -->
        <link href="admin/assets/css/animate.min.css" rel="stylesheet"/>

        <!--  Light Bootstrap Table core CSS    -->
        <link href="admin/assets/css/light-bootstrap-dashboard.css?v=1.4.0" rel="stylesheet"/>


        <!--  CSS for Demo Purpose, don't include it in your project     -->
        <!--        <link href="assets/css/demo.css" rel="stylesheet" />-->


        <!--     Fonts and icons     -->
        <link href="http://maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css" rel="stylesheet">
        <link href='http://fonts.googleapis.com/css?family=Roboto:400,700,300' rel='stylesheet' type='text/css'>
        <link href="admin/assets/css/pe-icon-7-stroke.css" rel="stylesheet" />
    </head>
    <body>

        <div class="wrapper">
            <div class="sidebar" data-color="purple" data-image="admin/assets/img/sidebar-5.jpg">

                <!--   you can change the color of the sidebar using: data-color="blue | azure | green | orange | red | purple" -->
                <jsp:include page="menu.jsp" flush="true"></jsp:include>
                </div>

                <div class="main-panel">
                <jsp:include page="header.jsp" flush="true"></jsp:include>


                    <div class="content">
                        <div class="container-fluid">
                            <div class="row">
                                <div class="col-md-12">
                                    <div class="card">
                                        <div class="header">
                                            <h4 class="title">Danh sách khách hàng</h4>
                                        </div>
                                        <div class="content">  
                                            <table class="table table-bordered">
                                                <thead class="thead-light">
                                                    <tr>
                                                        <th scope="col">#</th>
                                                        <th scope="col">Tên khách hàng</th>
                                                        <th scope="col">Tên tài khoản</th>
                                                        <th scope="col">Mật khẩu</th>
                                                        <th scope="col">Địa chỉ</th>
                                                        <th scope="col">SĐT</th>
                                                        <th scope="col">Email</th>
                                                    </tr>
                                                </thead>
                                                <tbody>
                                                <c:forEach items="${listkh}" var="kh" >
                                                    <tr>
                                                        <th scope="row">${kh.maKH}</th>
                                                        <td>${kh.tenKH}</td>
                                                        <td>${kh.tenTK}</td>
                                                        <td>${kh.matKhau}</td>
                                                        <td>${kh.diaChi}</td>
                                                        <td><a href="tel:">${kh.sdt}</a></td>
                                                        <td><a href="mailto:${kh.email}" target="blank">${kh.email}</a></td>
                                                    </tr>
                                                </c:forEach>
                                            </tbody>
                                        </table>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

    </body>
    <jsp:include page="footer.jsp" flush="true"></jsp:include>
</html>

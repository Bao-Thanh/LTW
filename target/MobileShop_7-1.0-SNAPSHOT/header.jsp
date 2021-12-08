<%@page import="model.Nhomsanpham"%>
<%@page import="dao.NSP_NCC_DAOImpl"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>

<div class="header-area">
    <div class="container">
        <div class="row">
            <div class="col-md-8">
                <div class="user-menu">
                    <ul>
                        <%
                            String username = null;
                            Cookie[] cookies = request.getCookies();
                            if (cookies != null) {
                                for (Cookie cookie : cookies) {
                                    if (cookie.getName().equals("username")) {
                                        username = cookie.getValue();
                                    }
                                }
                            }

                            if (username != null) {
                        %>
                        <li> Welcome <%=username%></li>
                            <%
                                }
                            %>
                        <li><a href="MyaccountServlet"><i class="fa fa-user"></i>Tài khoản</a></li>
                        <li><a href="baotri.jsp"><i class="fa fa-heart"></i> Yêu thích</a></li>
                        <li><a href="cart.jsp"><i class="fa fa-user"></i> Giỏ hàng</a></li>
                        <li><a href="baotri.jsp"><i class="fa fa-user"></i> Lịch sử</a></li>
                        <li><a href="LogoutServlet">Đăng xuất</a></li>
                    </ul>
                </div>
            </div>

            <div class="col-md-4">
                <div class="header-right">
                    <ul class="list-unstyled list-inline">
                        <li class="dropdown dropdown-small">
                            <a data-toggle="dropdown" data-hover="dropdown" class="dropdown-toggle" href="#"><span class="value">USD </span><b class="caret"></b></a>
                            <ul class="dropdown-menu">
                                <li><a href="#">USD</a></li>
                                <li><a href="#">VND</a></li>
                                <li><a href="#">INR</a></li>
                                <li><a href="#">GBP</a></li>
                            </ul>
                        </li>

                        <li class="dropdown dropdown-small">
                            <a data-toggle="dropdown" data-hover="dropdown" class="dropdown-toggle" href="#"><span class="value">Tiếng Việt </span><b class="caret"></b></a>
                            <ul class="dropdown-menu">
                                <li><a href="/"><span>Tiếng Việt</span></a></li>
                                <li><a href="/"><span>English</span></a></li>
                                <li><a href="/sk/"><span>Slovenský</span></a></li>
                                <li><a href="/lv/"><span>Latvių</span></a></li>
                                <li><a href="/pt/"><span>Português</span></a></li>
                                <li><a href="/cz/"><span>Čeština</span></a></li>
                                <li><a href="/dk/"><span>Dansk</span></a></li>
                                <li><a href="/nl/"><span>Nederlands</span></a></li>
                                <li><a href="/bg/"><span>български</span></a></li>
                                <li><a href="/gr/"><span>ελληνικά</span></a></li>
                                <li><a href="/ro/"><span>Română</span></a></li>
                                <li><a href="/hr/"><span>Hrvatski</span></a></li>
                                <li><a href="/si/"><span>Slovenščina</span></a></li>
                                <li><a href="/pl/"><span>Polski</span></a></li>
                                <li><a href="/es/"><span>Español</span></a></li>
                                <li><a href="/fr/"><span>Français</span></a></li>
                                <li><a href="/de/"><span>Deutsch</span></a></li>
                                <li><a href="/it/"><span>Italiano</span></a></li>
                            </ul>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
</div> <!-- End header area -->

<div class="site-branding-area">
    <div class="container">
        <div class="row">
            <div class="col-sm-6">
                <div class="logo">
                    <h1><a href="SanphamServlet"><img src="img/shop.jpg" width="60" height="40"></a></h1>
                </div>
            </div>

            <div class="col-sm-6">
                <div class="shopping-item">
                    <a href="cart.jsp">Giỏ hàng<span class="cart-amunt"></span><i class="fa fa-shopping-cart"></i></a>
                </div>
            </div>
        </div>
    </div>
</div> <!-- End site branding area -->

<div class="mainmenu-area">
    <div class="container">
        <div class="row">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
            </div> 
            <div class="navbar-collapse collapse">
                <ul class="nav navbar-nav">
                    <li><a href="SanphamServlet">Trang chủ</a></li>
                    <li><a href="ShopServlet">Shop page</a></li>
                    <li><a href="cart.jsp">Giỏ hàng</a></li>
                    <li><a href="CheckServlet">Thanh toán</a></li>
                    <li><a data-toggle="collapse" href="#collapseExample" role="button" aria-expanded="false" aria-controls="collapseExample">
                            Category điện thoại</a>

                    </li>
                    <li><a href="#" data-toggle="modal" data-target="#contact">Liên hệ</a></li>
                    <li><a href="#" data-toggle="modal" data-target="#other">Khác</a></li>
                </ul>
            </div>  
        </div>
    </div>
</div> <!-- End mainmenu area -->

<!-- Modal -->
<div class="modal fade" id="contact" tabindex="-1" aria-labelledby="contact" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <h3 class="modal-title" id="contact">Thông tin liên hệ</h3>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
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
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-primary" data-dismiss="modal">Close</button>
            </div>
        </div>
    </div>
</div>

<!-- Modal -->
<div class="modal fade" id="other" tabindex="-1" aria-labelledby="other" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <h3 class="modal-title" id="other">Khác</h3>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <table class="table table-bordered">
                    <thead>
                        <tr>
                            <th scope="col">#</th>
                            <th scope="col">Loại tài tài liệu</th>
                            <th scope="col">Mô tả</th>
                            <th scope="col">Link</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <th scope="row">1</th>
                            <td>Github</td>
                            <td>Link github đồ án của nhóm</td>
                            <td>
                                <a href="https://github.com/Bao-Thanh/LTW" target="_blank">Link</a>
                            </td>
                        </tr>
                        <tr>
                            <th scope="row">2</th>
                            <td>Google drive</td>
                            <td>Video báo cáo cả nhóm</td>
                            <td>
                                <a href="https://drive.google.com/drive/u/1/folders/1bfDz0MmiJF080q95QoQJARy98w8CEivt?fbclid=IwAR1ceZmNm3rtMkuiGxGgA1nduQKvVD0sDtIiAYFiU_bECmmnPhfRRk_Mo_I" target="_blank">Link</a>
                            </td>
                        </tr>
                    </tbody>
                </table>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-primary" data-dismiss="modal">Close</button>
            </div>
        </div>
    </div>
</div>

<%
    NSP_NCC_DAOImpl dao = new NSP_NCC_DAOImpl();
    List<Nhomsanpham> category = dao.getListNSP();
    request.setAttribute("category", category);
%>
<div class="collapse" id="collapseExample">
    <div class="card">
        <table class="table">
            <thead>
                <tr>
                    <th scope="col">#</th>
                    <th scope="col">Tên hãng</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach items="${category}" var="nsp" >
                    <tr>
                        <th scope="row">${nsp.maNhomSP}</th>
                        <td><a href="CategoryServlet?tenNSP=${nsp.tenNhomSP}">${nsp.tenNhomSP}</a></td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>
    </div>
</div>
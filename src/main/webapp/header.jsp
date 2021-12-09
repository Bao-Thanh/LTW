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
                    <li><a href="cartheader">Giỏ hàng</a></li>
                    <li><a href="CheckServlet">Thanh toán</a></li>
                        <%
                            NSP_NCC_DAOImpl dao = new NSP_NCC_DAOImpl();
                            List<Nhomsanpham> category = dao.getListNSP();
                            request.setAttribute("category", category);
                        %>
                        <c:forEach items="${category}" var="nsp" >
                        <li><a href="CategoryServlet?tenNSP=${nsp.tenNhomSP}">${nsp.tenNhomSP}</a></li>
                        </c:forEach>
                    <li><a href="contact.jsp">Liên hệ</a></li>
                </ul>
            </div>  
        </div>
    </div>
</div> <!-- End mainmenu area -->



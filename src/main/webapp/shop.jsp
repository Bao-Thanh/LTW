<%@page import="java.util.List"%>
<%@page import="model.Sanpham"%>
<%@page import="dao.SanphamDAOImpl"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="vi">
    <head>
       <jsp:include page="head.jsp" flush="true"></jsp:include>
    </head>
    <body>

        <header>
            <jsp:include page="header.jsp" flush="true"></jsp:include>
            </header>

            <div class="product-big-title-area">
                <div class="container">
                    <div class="row">
                        <div class="col-md-12">
                            <div class="product-bit-title text-center">
                                <h2>Shop</h2>
                            </div>
                        </div>
                    </div>
                </div>
            </div>


        <%
            SanphamDAOImpl dao = new SanphamDAOImpl();
            List<Sanpham> sanpham = dao.getList();

            request.setAttribute("sanpham", sanpham);
        %>

        <div class="single-product-area">
            <div class="zigzag-bottom"></div>
            <div class="container">
                <div class="row">
                    <h2 class="section-title">Danh sách sản phẩm</h2>
                    <c:forEach items="${sanpham}" var="sp" >
                        <div class="col-md-3 col-sm-6">
                            <div class="single-shop-product">
                                <div class="product-upper">
                                    <img src="${sp.anh}" alt="">
                                </div>
                                <h2><a href="">${sp.tenSP}</a></h2>
                                <div class="product-carousel-price">
                                    <ins>$${sp.gia}</ins> <del>$999.00</del>
                                </div>  

                                <div class="product-option-shop">
                                    <a class="add_to_cart_button" data-quantity="1" data-product_sku="" data-product_id="70" rel="nofollow" href="/canvas/shop/?add-to-cart=70">Add to cart</a>
                                </div>                       
                            </div>
                        </div>
                    </c:forEach>
                </div>

                <div class="row">
                    <div class="col-md-12">
                        <div class="product-pagination text-center">
                            <nav>
                                <ul class="pagination">
                                    <li>
                                        <a href="#" aria-label="Previous">
                                            <span aria-hidden="true">&laquo;</span>
                                        </a>
                                    </li>
                                    <li><a href="#">1</a></li>
                                    <li><a href="#">2</a></li>
                                    <li><a href="#">3</a></li>
                                    <li><a href="#">4</a></li>
                                    <li><a href="#">5</a></li>
                                    <li>
                                        <a href="#" aria-label="Next">
                                            <span aria-hidden="true">&raquo;</span>
                                        </a>
                                    </li>
                                </ul>
                            </nav>                        
                        </div>
                    </div>
                </div>
            </div>
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
    </body>
</html>

<%@page import="model.Vanchuyen"%>
<%@page import="dao.VanchuyenDAOImpl"%>
<%@page import="model.Quangcao"%>
<%@page import="dao.QuangcaoDAOImpl"%>
<%@page import="java.util.List"%>
<%@page import="model.Sanpham"%>
<%@page import="dao.SanphamDAOImpl"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <jsp:include page="head.jsp" flush="true"></jsp:include>
    </head>
    <body>
        <header>
            <jsp:include page="header.jsp" flush="true"></jsp:include>
            </header>

        <%
            QuangcaoDAOImpl qcdao = new QuangcaoDAOImpl();
            List<Quangcao> quangcao = qcdao.getList();
            request.setAttribute("quangcao", quangcao);
        %>
        <div class="slider-area">
            <!-- Slider -->
            <div class="block-slider block-slider4">
                <ul class="" id="bxslider-home4">
                    <c:forEach items="${quangcao}" var="qc" >
                        <li>
                            <img src="img/h4-slide.png" alt="Slide">
                            <div class="caption-group">
                                <h2 class="caption title">
                                    <span class="primary"> <strong>${qc.tenQC}</strong></span>
                                </h2>                
                                <c:set var="promotion" scope="session" value="${(qc.gia - 0.5*qc.gia)}"/>
                                <h4 class="caption subtitle">Giá sốc: ${promotion}
                                    <del>${qc.gia}</del>
                                </h4>
                                <a class="caption button-radius" href="#"><span class="icon"></span>Shop now</a>
                            </div>
                        </li>
                    </c:forEach>
                </ul>
            </div>
            <!-- ./Slider -->
        </div> <!-- End slider area -->

        <div class="promo-area">
            <div class="zigzag-bottom"></div>
            <div class="container">
                <div class="row">
                    <div class="col-md-3 col-sm-6" data-toggle="modal" data-target="#return">
                        <div class="single-promo promo1">
                            <i class="fa fa-refresh"></i>
                            <p>Đổi trả trong 30 ngày</p>
                        </div>
                    </div>
                    <div class="col-md-3 col-sm-6" data-toggle="modal" data-target="#vanchuyen">
                        <div class="single-promo promo2">
                            <i class="fa fa-truck"></i>
                            <p>Vận chuyển</p>
                        </div>
                    </div>
                    <div class="col-md-3 col-sm-6" data-toggle="modal" data-target="#pay">
                        <div class="single-promo promo3">
                            <i class="fa fa-lock"></i>
                            <p>Mua sắm an toàn</p>
                        </div>
                    </div>
                    <div class="col-md-3 col-sm-6" data-toggle="modal" data-target="#new">
                        <div class="single-promo promo4">
                            <i class="fa fa-gift"></i>
                            <p>Sản phẩm mới</p>
                        </div>
                    </div>
                </div>
            </div>
        </div> <!-- End promo area -->

        <%
            SanphamDAOImpl spdao = new SanphamDAOImpl();
            List<Sanpham> sanpham = spdao.getListSPgia();
            request.setAttribute("sanpham", sanpham);
        %>

        <div class="maincontent-area">
            <div class="zigzag-bottom"></div>
            <div class="container">
                <div class="row">
                    <div class="col-md-12">
                        <div class="latest-product">
                            <h2 class="section-title">Latest Products</h2>
                            <div class="product-carousel">
                                <c:forEach items="${sanpham}" var="sp" >
                                    <div class="single-product">
                                        <div class="product-f-image">
                                            <img src="${sp.anh}" alt="">
                                            <div class="product-hover">
                                                <a href="#" class="add-to-cart-link"><i class="fa fa-shopping-cart"></i> Add to cart</a>
                                                <a href="single-product.html" class="view-details-link"><i class="fa fa-link"></i> See details</a>
                                            </div>
                                        </div>

                                        <h2><a href="single-product.html">${sp.tenSP}</a></h2>

                                        <div class="product-carousel-price">
                                            <ins>$${sp.gia}</ins> <del>$100.00</del>
                                        </div> 
                                    </div>
                                </c:forEach>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div> <!-- End main content area -->

        <div class="brands-area">
            <div class="zigzag-bottom"></div>
            <div class="container">
                <div class="row">
                    <div class="col-md-12">
                        <div class="brand-wrapper">
                            <div class="brand-list">
                                <img src="img/brand1.png" alt="">
                                <img src="img/brand2.png" alt="">
                                <img src="img/brand3.png" alt="">
                                <img src="img/brand4.png" alt="">
                                <img src="img/brand5.png" alt="">
                                <img src="img/brand6.png" alt="">
                                <img src="img/brand1.png" alt="">
                                <img src="img/brand2.png" alt="">                            
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div> <!-- End brands area -->

        <div class="product-widget-area">
            <div class="zigzag-bottom"></div>
            <div class="container">
                <div class="row">
                    <div class="col-md-4">
                        <div class="single-product-widget">
                            <h2 class="product-wid-title">Top Sellers</h2>
                            <a href="" class="wid-view-more">View All</a>
                            <div class="single-wid-product">
                                <a href="single-product.jsp"><img src="img/product-thumb-1.jpg" alt="" class="product-thumb"></a>
                                <h2><a href="single-product.jsp">Sony Smart TV - 2015</a></h2>
                                <div class="product-wid-rating">
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                </div>
                                <div class="product-wid-price">
                                    <ins>$400.00</ins> <del>$425.00</del>
                                </div>                            
                            </div>
                            <div class="single-wid-product">
                                <a href="single-product.jsp"><img src="img/product-thumb-2.jpg" alt="" class="product-thumb"></a>
                                <h2><a href="single-product.jsp">Apple new mac book 2015</a></h2>
                                <div class="product-wid-rating">
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                </div>
                                <div class="product-wid-price">
                                    <ins>$400.00</ins> <del>$425.00</del>
                                </div>                            
                            </div>
                            <div class="single-wid-product">
                                <a href="single-product.jsp"><img src="img/product-thumb-3.jpg" alt="" class="product-thumb"></a>
                                <h2><a href="single-product.jsp">Apple new i phone 6</a></h2>
                                <div class="product-wid-rating">
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                </div>
                                <div class="product-wid-price">
                                    <ins>$400.00</ins> <del>$425.00</del>
                                </div>                            
                            </div>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="single-product-widget">
                            <h2 class="product-wid-title">Recently Viewed</h2>
                            <a href="#" class="wid-view-more">View All</a>
                            <div class="single-wid-product">
                                <a href="single-product.jsp"><img src="img/product-thumb-4.jpg" alt="" class="product-thumb"></a>
                                <h2><a href="single-product.jsp">Sony playstation microsoft</a></h2>
                                <div class="product-wid-rating">
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                </div>
                                <div class="product-wid-price">
                                    <ins>$400.00</ins> <del>$425.00</del>
                                </div>                            
                            </div>
                            <div class="single-wid-product">
                                <a href="single-product.jsp"><img src="img/product-thumb-1.jpg" alt="" class="product-thumb"></a>
                                <h2><a href="single-product.jsp">Sony Smart Air Condtion</a></h2>
                                <div class="product-wid-rating">
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                </div>
                                <div class="product-wid-price">
                                    <ins>$400.00</ins> <del>$425.00</del>
                                </div>                            
                            </div>
                            <div class="single-wid-product">
                                <a href="single-product.jsp"><img src="img/product-thumb-2.jpg" alt="" class="product-thumb"></a>
                                <h2><a href="single-product.jsp">Samsung gallaxy note 4</a></h2>
                                <div class="product-wid-rating">
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                </div>
                                <div class="product-wid-price">
                                    <ins>$400.00</ins> <del>$425.00</del>
                                </div>                            
                            </div>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="single-product-widget">
                            <h2 class="product-wid-title">Top New</h2>
                            <a href="#" class="wid-view-more">View All</a>
                            <div class="single-wid-product">
                                <a href="single-product.jsp"><img src="img/product-thumb-3.jpg" alt="" class="product-thumb"></a>
                                <h2><a href="single-product.jsp">Apple new i phone 6</a></h2>
                                <div class="product-wid-rating">
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                </div>
                                <div class="product-wid-price">
                                    <ins>$400.00</ins> <del>$425.00</del>
                                </div>                            
                            </div>
                            <div class="single-wid-product">
                                <a href="single-product.jsp"><img src="img/product-thumb-4.jpg" alt="" class="product-thumb"></a>
                                <h2><a href="single-product.jsp">Samsung gallaxy note 4</a></h2>
                                <div class="product-wid-rating">
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                </div>
                                <div class="product-wid-price">
                                    <ins>$400.00</ins> <del>$425.00</del>
                                </div>                            
                            </div>
                            <div class="single-wid-product">
                                <a href="single-product.jsp"><img src="img/product-thumb-1.jpg" alt="" class="product-thumb"></a>
                                <h2><a href="single-product.jsp">Sony playstation microsoft</a></h2>
                                <div class="product-wid-rating">
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                </div>
                                <div class="product-wid-price">
                                    <ins>$400.00</ins> <del>$425.00</del>
                                </div>                            
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div> <!-- End product widget area -->
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


<%
    VanchuyenDAOImpl vchdao = new VanchuyenDAOImpl();
    List<Vanchuyen> vanchuyen = vchdao.getList();
    request.setAttribute("vanchuyen", vanchuyen);
%>
<!-- Modal -->
<div class="modal fade" id="vanchuyen" tabindex="-1" aria-labelledby="#vanchuyen" aria-hidden="true" class="modal-dialog modal-lg">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <h3 class="modal-title" id="vanchuyen">Các loại hình vận chuyển</h3>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body"> 

                <table class="table">
                    <thead>
                        <tr>
                            <th scope="col">Hãng vận chuyển</th>
                            <th scope="col">Giá</th>
                            <th scope="col">Mô tả</th>
                        </tr>
                    </thead>
                    <tbody>
                        <c:forEach items="${vanchuyen}" var="vch" >
                            <tr>
                                <td>${vch.tenVC}</td>
                                <td>${vch.gia}</td>
                                <td>${vch.moTa}</td>
                            </tr>
                        </c:forEach>
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
<div class="modal fade" id="return" tabindex="-1" aria-labelledby="#return" aria-hidden="true" class="modal-dialog modal-lg">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <h3 class="modal-title" id="return">Chính sách đổi trả</h3>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body"> 
                ........
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-primary" data-dismiss="modal">Close</button>
            </div>
        </div>
    </div>
</div>


<!-- Modal -->
<div class="modal fade" id="pay" tabindex="-1" aria-labelledby="#pay" aria-hidden="true" class="modal-dialog modal-lg">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <h3 class="modal-title" id="pay">An toàn khi mua sắm</h3>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body"> 
                ........
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-primary" data-dismiss="modal">Close</button>
            </div>
        </div>
    </div>
</div>


<!-- Modal -->
<div class="modal fade" id="new" tabindex="-1" aria-labelledby="#new" aria-hidden="true" class="modal-dialog modal-lg">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <h3 class="modal-title" id="new">Các sản phẩm mới</h3>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body"> 
                <table class="table">
                    <thead>
                        <tr>
                            <th scope="col">#</th>
                            <th scope="col">First</th>
                            <th scope="col">Last</th>
                            <th scope="col">Handle</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <th scope="row">1</th>
                            <td>Mark</td>
                            <td>Otto</td>
                            <td>@mdo</td>
                        </tr>
                        <tr>
                            <th scope="row">2</th>
                            <td>Jacob</td>
                            <td>Thornton</td>
                            <td>@fat</td>
                        </tr>
                        <tr>
                            <th scope="row">3</th>
                            <td>Larry</td>
                            <td>the Bird</td>
                            <td>@twitter</td>
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
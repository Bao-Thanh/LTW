<<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="vi">
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
        <link rel="stylesheet" href="css/responsive.css">
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
                                <h2>Thanh toán</h2>
                            </div>
                        </div>
                    </div>
                </div>
            </div>


            <div class="single-product-area">
                <div class="zigzag-bottom"></div>
                <div class="container">
                    <div class="row">
                        <div class="col-md-4">
                            <div class="single-sidebar">
                                <h2 class="sidebar-title">Search Products</h2>
                                <form action="SearchCheckout">
                                    <input name="txt" type="text" placeholder="Search products..." value="${txtS}">
                                <input type="submit" value="Search">
                            </form>
                        </div>

                        <div class="single-sidebar">
                            <h2 class="sidebar-title">Products</h2>
                            <jsp:include page="left.jsp" flush="true"></jsp:include>                               
                            </div>


                        </div>

                        <div class="col-md-8">
                            <div class="product-content-right">
                                <div class="woocommerce">
                                    <!--                                    <div class="woocommerce-info">Returning customer? <a class="showlogin" data-toggle="collapse" href="#login-form-wrap" aria-expanded="false" aria-controls="login-form-wrap">Click here to login</a>
                                                                        </div>
                                    
                                                                        <form id="login-form-wrap" class="login collapse" method="post">
                                    
                                    
                                                                            <p>If you have shopped with us before, please enter your details in the boxes below. If you are a new customer please proceed to the Billing &amp; Shipping section.</p>
                                    
                                                                            <p class="form-row form-row-first">
                                                                                <label for="username">Username or email <span class="required">*</span>
                                                                                </label>
                                                                                <input type="text" id="username" name="username" class="input-text">
                                                                            </p>
                                                                            <p class="form-row form-row-last">
                                                                                <label for="password">Password <span class="required">*</span>
                                                                                </label>
                                                                                <input type="password" id="password" name="password" class="input-text">
                                                                            </p>
                                                                            <div class="clear"></div>
                                    
                                    
                                                                            <p class="form-row">
                                                                                <input type="submit" value="Login" name="login" class="button">
                                                                                <label class="inline" for="rememberme"><input type="checkbox" value="forever" id="rememberme" name="rememberme"> Remember me </label>
                                                                            </p>
                                                                            <p class="lost_password">
                                                                                <a href="#">Lost your password?</a>
                                                                            </p>
                                    
                                                                            <div class="clear"></div>
                                                                        </form>-->

                                    <!--                                    <div class="woocommerce-info">Have a coupon? <a class="showcoupon" data-toggle="collapse" href="#coupon-collapse-wrap" aria-expanded="false" aria-controls="coupon-collapse-wrap">Click here to enter your code</a>
                                                                        </div>
                                    
                                                                        <form id="coupon-collapse-wrap" method="post" class="checkout_coupon collapse">
                                    
                                                                            <p class="form-row form-row-first">
                                                                                <input type="text" value="" id="coupon_code" placeholder="Coupon code" class="input-text" name="coupon_code">
                                                                            </p>
                                    
                                                                            <p class="form-row form-row-last">
                                                                                <input type="submit" value="Apply Coupon" name="apply_coupon" class="button">
                                                                            </p>
                                    
                                                                            <div class="clear"></div>
                                                                        </form>-->

                                    <form action="InsertServlet" class="checkout" method="post" name="checkout">

                                        <div id="customer_details" class="col2-set">
                                            <div class="col-1">
                                                <div class="woocommerce-billing-fields">
                                                    <h3>Điền thông tin</h3>
                                                    <p id="billing_country_field" class="form-row form-row-wide address-field update_totals_on_change validate-required woocommerce-validated">


                                                    <p id="billing_first_name_field" class="form-row form-row-first validate-required">
                                                        <label class="" for="billing_first_name">Họ và Tên <abbr title="required" class="required">*</abbr>
                                                        </label>
                                                        <input type="text" value="${kh.tenKH}" placeholder="" id="billing_first_name" name="txtName" class="input-text ">
                                                </p>
                                                <p id="billing_address_1_field" class="form-row form-row-wide address-field validate-required">
                                                    <label class="" for="billing_address_1">Địa chỉ <abbr title="required" class="required">*</abbr>
                                                    </label>
                                                    <input type="text" value="${kh.diaChi}" placeholder="" id="billing_address_1" name="txtDiachi" class="input-text ">
                                                </p>


                                                <!--                                                    <p id="billing_city_field" class="form-row form-row-wide address-field validate-required" data-o_class="form-row form-row-wide address-field validate-required">
                                                                                                        <label class="" for="billing_city">Town / City <abbr title="required" class="required">*</abbr>
                                                                                                        </label>
                                                                                                        <input type="text" value="" placeholder="Town / City" id="billing_city" name="billing_city" class="input-text ">
                                                                                                    </p>
                                                
                                                                                                    <p id="billing_state_field" class="form-row form-row-first address-field validate-state" data-o_class="form-row form-row-first address-field validate-state">
                                                                                                        <label class="" for="billing_state">County</label>
                                                                                                        <input type="text" id="billing_state" name="billing_state" placeholder="State / County" value="" class="input-text ">
                                                                                                    </p>
                                                                                                    <p id="billing_postcode_field" class="form-row form-row-last address-field validate-required validate-postcode" data-o_class="form-row form-row-last address-field validate-required validate-postcode">
                                                                                                        <label class="" for="billing_postcode">Postcode <abbr title="required" class="required">*</abbr>
                                                                                                        </label>
                                                                                                        <input type="text" value="" placeholder="Postcode / Zip" id="billing_postcode" name="billing_postcode" class="input-text ">
                                                                                                    </p>
                                                
                                                                                                    <div class="clear"></div>-->

                                                <p id="billing_email_field" class="form-row form-row-first validate-required validate-email">
                                                    <label class="" for="billing_email">Email <abbr title="required" class="required">*</abbr>
                                                    </label>
                                                    <input type="text" value="${kh.email}" placeholder="" id="billing_email" name="txtEmail" class="input-text ">
                                                </p>

                                                <p id="billing_phone_field" class="form-row form-row-last validate-required validate-phone">
                                                    <label class="" for="billing_phone">SĐT <abbr title="required" class="required">*</abbr>
                                                    </label>
                                                    <input type="text" value="${kh.sdt}" placeholder="" id="billing_phone" name="txtPhone" class="input-text ">
                                                </p>
                                                <label class="" for="vanchuyen">Hình thức vận chuyển <abbr title="required" class="required">*</abbr>
                                                </label>
                                                <select name="vanchuyen" id="vanchuyen">
                                                    <c:forEach items="${vclist}" var="vc">
                                                        <option value="${vc.maVC}">${vc.tenVC}: ${vc.gia}đ</option>
                                                    </c:forEach>
                                                </select>
                                                <label class="" for="thanhtoan">Hình thức thanh toán <abbr title="required" class="required">*</abbr>
                                                </label>
                                                <select name="thanhtoan" id="thanhtoan">
                                                    <c:forEach items="${ttlist}" var="tt">
                                                        <option value="${tt.maTT}">${tt.tenTT}: ${tt.moTa}</option>
                                                    </c:forEach>
                                                </select>
                                                <div class="clear"></div>
                                            </div>
                                        </div>
                                    </div>
                                    <h3 id="order_review_heading">Your order</h3>
                                    <div id="order_review" style="position: relative;">
                                        <table class="shop_table">

                                            <thead>
                                                <tr>
                                                    <th class="product-name">Sản Phẩm</th>
                                                    <th class="product-mount">Số Lượng</th>
                                                    <th class="product-total">Giá</th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                <c:set var="total" value="${0}"/>
                                                <c:forEach items="${update}" var="sp">
                                                    <tr class="cart_item">
                                                        <td class="product-name">
                                                            <a href="singleproduct?maSP=${sp.sanpham.maSP}">${sp.sanpham.tenSP}</a>  
                                                        </td>
                                                        <td class="product-mount">
                                                            <span class="amount" >${sp.quantity}</span> 
                                                        </td>
                                                        <td class="product-total">
                                                            <span class="amount" >$${sp.total}</span> 
                                                            <c:set var="total" value="${total + sp.total}"/>
                                                        </td>
                                                    </tr>
                                                </c:forEach>    
                                            </tbody>
                                            <tfoot>                                                                                                                         
                                                <tr class="order-total">
                                                    <th>Order Total</th>
                                                    <td>
                                                        <strong><span class="amount">$${total - khuyenmai.giaTri}</span></strong>
                                                        <input type="hidden" name="tongTien" value="${total - khuyenmai.giaTri}">
                                                    </td> 
                                                </tr> 
                                            </tfoot>
                                        </table>
                                    </div>
                                    <button type="submit" class="btn btn-primary">Đặt hàng</button>               
                                </form>
                                <div class="coupon">
                                    <form action="KhuyenmaiServlet" method="post">
                                        <label for="coupon_code">Coupon:</label>
                                        <input type="text" placeholder="Coupon" id="coupon_code" class="input-text" name="coupon" value="${khuyenmai.maKM}" size="4">

                                        <input class="add_to_cart_button" type="submit" value="Apply Coupon">
                                    </form>
                                </div>
                            </div>                       
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

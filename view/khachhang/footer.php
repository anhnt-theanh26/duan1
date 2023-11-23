<footer class="footer-area">
    <div class="bg-gray-2">
        <div class="container">
            <div class="footer-top pt-80 pb-35">
                <div class="row">
                    <div class="col-lg-3 col-md-6 col-sm-6 col-12">
                        <div class="footer-widget footer-about mb-40">
                            <div class="footer-logo">
                                <?php
                                extract($logo);
                                $linkimg = '../../view/img/' . $img;
                                ?>
                                <a href="index.php?act=home"><img src="<?= $linkimg ?>" alt="logo" width="150px" height="50px"></a>
                            </div>
                            <p>Cửa hàng sách đẹp trai</p>
                            <!-- <div class="payment-img">
                                <a href="#"><img src="assets/images/icon-img/payment.png" alt="logo"></a>
                            </div> -->
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-6 col-sm-6 col-12">
                        <div class="footer-widget footer-widget-margin-1 footer-list mb-40">
                            <h3 class="footer-title">Danh mục sản phẩm</h3>
                            <ul>
                                <?php
                                $danhmuc = loadall_danhmuc();
                                foreach ($danhmuc as $dm) {
                                    extract($dm);
                                ?>
                                <li><a href="index.php?act=danhmuc&&id=<?= $id ?>"><?= $ten_danh_muc ?></a></li>
                                <?php
                                }
                                ?>
                                <!-- <li><a href="about-us.html">About Us</a></li>
                                <li><a href="#">Delivery Information</a></li>
                                <li><a href="#">Privacy Policy</a></li>
                                <li><a href="#">Terms & Conditions</a></li>
                                <li><a href="#">Customer Service</a></li> -->
                            </ul>
                        </div>
                    </div>
                    <div class="col-lg-2 col-md-6 col-sm-6 col-12">
                        <div class="footer-widget footer-list mb-40">
                            <h3 class="footer-title">Liên hệ</h3>
                            <ul>
                                <?php
                                foreach ($admin as $ad) {
                                    extract($ad);
                                ?>
                                    <li>MR: <a href="#"><?= $ten_nguoi_dung ?></a></li>
                                    <li>SĐT: <a href="#"><?= $sdt_nguoi_dung ?></a></li>
                                <?php
                                }
                                ?>
                                <!-- <li><a href="my-account.html">My Account</a></li>
                                <li><a href="#">Order History</a></li>
                                <li><a href="wishlist.html">Wish List</a></li>
                                <li><a href="#">Newsletter</a></li>
                                <li><a href="#">Order History</a></li> -->
                            </ul>
                        </div>
                    </div>
                    <div class="col-lg-4 col-md-6 col-sm-6 col-12">
                        <div class="footer-widget footer-widget-margin-2 footer-address mb-40">
                            <h3 class="footer-title">Get in touch</h3>
                            <ul>
                                <li><span>Địa chỉ: </span><?= $dia_chi ?></li>
                                <li><span>Điện thoại:</span><?= $sdt ?></li>
                                <li><span>Email: </span><?= $email ?></li>
                            </ul>
                            <div class="open-time">
                                <p>Mở cửa : <span>8:00 sáng</span> - Đóng cửa : <span>22:00 tối</span></p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="bg-gray-3">
        <div class="container">
            <div class="footer-bottom copyright text-center bg-gray-3">
                <p>Copyright ©2022 All rights reserved | Made with <i class="fa fa-heart"></i> by <a href="index.php?act=home">TAD</a>.</p>
            </div>
        </div>
    </div>
</footer>
<!-- Product Modal start -->
<div class="modal fade quickview-modal-style" id="exampleModal" tabindex="-1" role="dialog">
    <div class="modal-dialog modal-dialog-centered" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <a href="#" class="close" data-bs-dismiss="modal" aria-label="Close"><i class=" ti-close "></i></a>
            </div>
            <div class="modal-body">
                <div class="row gx-0">
                    <div class="col-lg-5 col-md-5 col-12">
                        <div class="modal-img-wrap">
                            <img src="assets/images/product/quickview.png" alt="">
                        </div>
                    </div>
                    <div class="col-lg-7 col-md-7 col-12">
                        <div class="product-details-content quickview-content">
                            <h2>New Modern Chair</h2>
                            <div class="product-details-price">
                                <span class="old-price">$25.89 </span>
                                <span class="new-price">$20.25</span>
                            </div>
                            <div class="product-details-review">
                                <div class="product-rating">
                                    <i class=" ti-star"></i>
                                    <i class=" ti-star"></i>
                                    <i class=" ti-star"></i>
                                    <i class=" ti-star"></i>
                                    <i class=" ti-star"></i>
                                </div>
                                <span>( 1 Customer Review )</span>
                            </div>
                            <div class="product-color product-color-active product-details-color">
                                <span>Color :</span>
                                <ul>
                                    <li><a title="Pink" class="pink" href="#">pink</a></li>
                                    <li><a title="Yellow" class="active yellow" href="#">yellow</a></li>
                                    <li><a title="Purple" class="purple" href="#">purple</a></li>
                                </ul>
                            </div>
                            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer ornare tincidunt neque vel semper. Cras placerat enim sed nisl mattis eleifend.</p>
                            <div class="product-details-action-wrap">
                                <div class="product-quality">
                                    <input class="cart-plus-minus-box input-text qty text" name="qtybutton" value="1">
                                </div>
                                <div class="single-product-cart btn-hover">
                                    <a href="#">Add to cart</a>
                                </div>
                                <div class="single-product-wishlist">
                                    <a title="Wishlist" href="#"><i class="pe-7s-like"></i></a>
                                </div>
                                <div class="single-product-compare">
                                    <a title="Compare" href="#"><i class="pe-7s-shuffle"></i></a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- Product Modal end -->
<!-- Mobile Menu start -->
<div class="off-canvas-active">
    <a class="off-canvas-close"><i class=" ti-close "></i></a>
    <div class="off-canvas-wrap">
        <div class="welcome-text off-canvas-margin-padding">
            <p>Default Welcome Msg! </p>
        </div>
        <div class="mobile-menu-wrap off-canvas-margin-padding-2">
            <div id="mobile-menu" class="slinky-mobile-menu text-left">
                <ul>
                    <li>
                        <a href="#">HOME</a>
                        <ul>
                            <li><a href="index.html">Home version 1 </a></li>
                            <li><a href="index-2.html">Home version 2</a></li>
                            <li><a href="index-3.html">Home version 3</a></li>
                            <li><a href="index-4.html">Home version 4</a></li>
                            <li><a href="index-5.html">Home version 5</a></li>
                            <li><a href="index-6.html">Home version 6</a></li>
                            <li><a href="index-7.html">Home version 7</a></li>
                            <li><a href="index-8.html">Home version 8</a></li>
                        </ul>
                    </li>
                    <li>
                        <a href="#">SHOP</a>
                        <ul>
                            <li>
                                <a href="#">Shop Layout</a>
                                <ul>
                                    <li><a href="shop.html">Standard Style</a></li>
                                    <li><a href="shop-sidebar.html">Shop Grid Sidebar</a></li>
                                    <li><a href="shop-list.html">Shop List Style</a></li>
                                    <li><a href="shop-list-sidebar.html">Shop List Sidebar</a></li>
                                    <li><a href="shop-right-sidebar.html">Shop Right Sidebar</a></li>
                                    <li><a href="shop-location.html">Store Location</a></li>
                                </ul>
                            </li>
                            <li>
                                <a href="#">Product Layout</a>
                                <ul>
                                    <li><a href="product-details.html">Tab Style 1</a></li>
                                    <li><a href="product-details-2.html">Tab Style 2</a></li>
                                    <li><a href="product-details-gallery.html">Gallery style </a></li>
                                    <li><a href="product-details-affiliate.html">Affiliate style</a></li>
                                    <li><a href="product-details-group.html">Group Style</a></li>
                                    <li><a href="product-details-fixed-img.html">Fixed Image Style </a></li>
                                </ul>
                            </li>
                        </ul>
                    </li>
                    <li>
                        <a href="#">PAGES </a>
                        <ul>
                            <li><a href="about-us.html">About Us </a></li>
                            <li><a href="cart.html">Cart Page</a></li>
                            <li><a href="checkout.html">Checkout </a></li>
                            <li><a href="my-account.html">My Account</a></li>
                            <li><a href="wishlist.html">Wishlist </a></li>
                            <li><a href="compare.html">Compare </a></li>
                            <li><a href="contact-us.html">Contact us </a></li>
                            <li><a href="login-register.html">Login / Register </a></li>
                        </ul>
                    </li>
                    <li>
                        <a href="#">BLOG </a>
                        <ul>
                            <li><a href="blog.html">Blog Standard </a></li>
                            <li><a href="blog-sidebar.html">Blog Sidebar</a></li>
                            <li><a href="blog-details.html">Blog Details</a></li>
                        </ul>
                    </li>
                    <li>
                        <a href="about-us.html">ABOUT US</a>
                    </li>
                    <li>
                        <a href="contact-us.html">CONTACT US</a>
                    </li>
                </ul>
            </div>
        </div>
        <div class="language-currency-wrap language-currency-wrap-modify">
            <div class="currency-wrap border-style">
                <a class="currency-active" href="#">$ Dollar (US) <i class=" ti-angle-down "></i></a>
                <div class="currency-dropdown">
                    <ul>
                        <li><a href="#">Taka (BDT) </a></li>
                        <li><a href="#">Riyal (SAR) </a></li>
                        <li><a href="#">Rupee (INR) </a></li>
                    </ul>
                </div>
            </div>
            <div class="language-wrap">
                <a class="language-active" href="#"><img src="assets/images/icon-img/flag.png" alt=""> English <i class=" ti-angle-down "></i></a>
                <div class="language-dropdown">
                    <ul>
                        <li><a href="#"><img src="assets/images/icon-img/flag.png" alt="">English </a></li>
                        <li><a href="#"><img src="assets/images/icon-img/spanish.png" alt="">Spanish</a></li>
                        <li><a href="#"><img src="assets/images/icon-img/arabic.png" alt="">Arabic </a></li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
</div>
</div>
<!-- All JS is here -->
<script src="assets/js/vendor/modernizr-3.11.7.min.js"></script>
<script src="assets/js/vendor/jquery-3.6.0.min.js"></script>
<script src="assets/js/vendor/jquery-migrate-3.3.2.min.js"></script>
<script src="assets/js/vendor/popper.min.js"></script>
<script src="assets/js/vendor/bootstrap.min.js"></script>
<script src="assets/js/plugins/wow.js"></script>
<script src="assets/js/plugins/scrollup.js"></script>
<script src="assets/js/plugins/aos.js"></script>
<script src="assets/js/plugins/magnific-popup.js"></script>
<script src="assets/js/plugins/jquery.syotimer.min.js"></script>
<script src="assets/js/plugins/swiper.min.js"></script>
<script src="assets/js/plugins/imagesloaded.pkgd.min.js"></script>
<script src="assets/js/plugins/isotope.pkgd.min.js"></script>
<script src="assets/js/plugins/jquery-ui.js"></script>
<script src="assets/js/plugins/jquery-ui-touch-punch.js"></script>
<script src="assets/js/plugins/jquery.nice-select.min.js"></script>
<script src="assets/js/plugins/waypoints.min.js"></script>
<script src="assets/js/plugins/jquery.counterup.js"></script>
<script src="assets/js/plugins/select2.min.js"></script>
<script src="assets/js/plugins/easyzoom.js"></script>
<script src="assets/js/plugins/slinky.min.js"></script>
<script src="assets/js/plugins/ajax-mail.js"></script>
<!-- Main JS -->
<script src="assets/js/main.js"></script>
</body>


<!-- Mirrored from htmldemo.net/urdan/urdan/index.html by HTTrack Website Copier/3.x [XR&CO'2014], Wed, 01 Nov 2023 08:19:16 GMT -->

</html>
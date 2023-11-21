<?php
if (isset($_SESSION['user']) && is_array($_SESSION['user'])) {
    extract($_SESSION['user']);
    $linkimg = '../../view/img/' . $img_khach_hang;
}
?>
<!-- <div class="sidebar-cart-active">
    <div class="sidebar-cart-all">
        <a class="cart-close" href="#"><i class="pe-7s-close"></i></a>
        <div class="cart-content">
            <h3>Shopping Cart</h3>
            <ul>
                <li>
                    <div class="cart-img">
                        <a href="#"><img src="assets/images/cart/cart-1.jpg" alt=""></a>
                    </div>
                    <div class="cart-title">
                        <h4><a href="#">Stylish Swing Chair</a></h4>
                        <span> 1 × $49.00 </span>
                    </div>
                    <div class="cart-delete">
                        <a href="#">×</a>
                    </div>
                </li>
                <li>
                    <div class="cart-img">
                        <a href="#"><img src="assets/images/cart/cart-2.jpg" alt=""></a>
                    </div>
                    <div class="cart-title">
                        <h4><a href="#">Modern Chairs</a></h4>
                        <span> 1 × $49.00 </span>
                    </div>
                    <div class="cart-delete">
                        <a href="#">×</a>
                    </div>
                </li>
            </ul>
            <div class="cart-total">
                <h4>Subtotal: <span>$170.00</span></h4>
            </div>
            <div class="cart-btn btn-hover">
                <a class="theme-color" href="cart.html">view cart</a>
            </div>
            <div class="checkout-btn btn-hover">
                <a class="theme-color" href="checkout.html">checkout</a>
            </div>
        </div>
    </div>
</div> -->
<div class="breadcrumb-area bg-gray-4 breadcrumb-padding-1">
    <div class="container">
        <div class="breadcrumb-content text-center">
            <h2>Tài khoản của tôi </h2>
            <h6>
                <?php
                if (isset($id) && ($id) != '') {
                    echo $id;
                }
                ?>
            </h6>
            <ul>
                <li><a href="index.html">Home</a></li>
                <li><i class="ti-angle-right"></i></li>
                <li>Tài khoản</li>
            </ul>
        </div>
    </div>
    <!-- <div class="breadcrumb-img-1">
        <img src="#" alt="">
    </div>
    <div class="breadcrumb-img-2">
        <img src="#" alt="">
    </div> -->
</div>
<!-- my account wrapper start -->
<div class="my-account-wrapper pb-100 pt-100">
    <div class="container">
        <div class="row">
            <div class="col-lg-12">
                <!-- My Account Page Start -->
                <div class="myaccount-page-wrapper">
                    <!-- My Account Tab Menu Start -->
                    <div class="row">
                        <div class="col-lg-3 col-md-4">
                            <div class="myaccount-tab-menu nav" role="tablist">
                                <a href="#dashboad" class="active" data-bs-toggle="tab">Bảng điều khiển</a>
                                <a href="#orders" data-bs-toggle="tab">Đơn hàng đặt</a>
                                <a href="#download" data-bs-toggle="tab">Bình luận</a>
                                <a href="#payment-method" data-bs-toggle="tab">Phương thức thanh toán</a>
                                <!-- <a href="#address-edit" data-bs-toggle="tab">Address</a> -->
                                <a href="#account-info" data-bs-toggle="tab">Chi tiết tài khoản</a>
                                <a href="index.php?act=dangxuat">Đăng xuất</a>
                            </div>
                        </div>
                        <!-- My Account Tab Menu End -->
                        <!-- My Account Tab Content Start -->
                        <div class="col-lg-9 col-md-8">
                            <div class="tab-content" id="myaccountContent">
                                <!-- Single Tab Content Start -->
                                <div class="tab-pane fade show active" id="dashboad" role="tabpanel">
                                    <div class="myaccount-content">
                                        <div class="sidebar-widget mb-50" data-aos="fade-up" data-aos-delay="-5000">
                                            <div class="blog-author-content text-center">
                                                <img src="<?= $linkimg ?>" alt="" style="border-radius: 50%; width: 180px;">
                                                <h2><?= $ten_khach_hang ?></h2>
                                                <h4><?= $email_khach_hang ?></h4>
                                                <!-- <div class="social-icon-style-1">
                                                    <a href="#"><i class="fa fa-facebook"></i></a>
                                                    <a href="#"><i class="fa fa-dribbble"></i></a>
                                                    <a href="#"><i class="fa fa-pinterest-p"></i></a>
                                                    <a href="#"><i class="fa fa-twitter"></i></a>
                                                    <a href="#"><i class="fa fa-glide-g"></i></a>
                                                </div> -->
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <!-- Single Tab Content End -->
                                <!-- Single Tab Content Start -->
                                <div class="tab-pane fade" id="orders" role="tabpanel">
                                    <div class="myaccount-content">
                                        <h3>Orders</h3>
                                        <div class="myaccount-table table-responsive text-center">
                                            <table class="table table-bordered">
                                                <thead class="thead-light">
                                                    <tr>
                                                        <th>Order</th>
                                                        <th>Date</th>
                                                        <th>Status</th>
                                                        <th>Total</th>
                                                        <th>Action</th>
                                                    </tr>
                                                </thead>
                                                <tbody>
                                                    <tr>
                                                        <td>1</td>
                                                        <td>Aug 22, 2022</td>
                                                        <td>Pending</td>
                                                        <td>$3000</td>
                                                        <td><a href="cart.html" class="check-btn sqr-btn ">View</a></td>
                                                    </tr>
                                                    <tr>
                                                        <td>2</td>
                                                        <td>July 22, 2022</td>
                                                        <td>Approved</td>
                                                        <td>$200</td>
                                                        <td><a href="cart.html" class="check-btn sqr-btn ">View</a></td>
                                                    </tr>
                                                    <tr>
                                                        <td>3</td>
                                                        <td>June 12, 2017</td>
                                                        <td>On Hold</td>
                                                        <td>$990</td>
                                                        <td><a href="cart.html" class="check-btn sqr-btn ">View</a></td>
                                                    </tr>
                                                </tbody>
                                            </table>
                                        </div>
                                    </div>
                                </div>
                                <!-- Single Tab Content End -->
                                <!-- Single Tab Content Start -->
                                <div class="tab-pane fade" id="download" role="tabpanel">
                                    <div class="myaccount-content">
                                        <div class="myaccount-content">
                                                <?php
                                                include 'binhluan/binhluan.php';
                                                ?>
                                            <h3>Bình luận</h3>
                                            <div class="myaccount-table table-responsive text-center">
                                                <table class="table table-bordered">
                                                    <thead class="thead-light">
                                                        <tr>
                                                            <!-- <th style="width: 1%;">id</th> -->
                                                            <th style="width: 10%;">Nội dung</th>
                                                            <th style="width: 10%;">Tên sản phẩm</th>
                                                            <!-- <th style="width: 10%;">Ngày bình luận</th> -->
                                                            <th style="width: 10%;">Xóa</th>
                                                        </tr>
                                                    </thead>
                                                    <tbody>
                                                        <?php
                                                        if (isset($binhluan)) {
                                                            foreach ($binhluan as $bl) {
                                                                extract($bl);
                                                        ?>
                                                                <tr>
                                                                    <td><?= $noi_dung ?></td>
                                                                    <td><?= $ten_san_pham  ?></td>
                                                                    <td><a onclick="return confirm('Xóa bình luận');" href="index.php?act=taikhoan&&idbl=<?= $id ?>" class="check-btn sqr-btn ">Xóa</a></td>
                                                                </tr>
                                                        <?php
                                                            }
                                                        }
                                                        ?>
                                                        <!-- <tr>
                                                            <td>2</td>
                                                            <td>July 22, 2022</td>
                                                            <td>Approved</td>
                                                            <td>$200</td>
                                                            <td><a href="cart.html" class="check-btn sqr-btn ">View</a></td>
                                                        </tr>
                                                        <tr>
                                                            <td>3</td>
                                                            <td>June 12, 2017</td>
                                                            <td>On Hold</td>
                                                            <td>$990</td>
                                                            <td><a href="cart.html" class="check-btn sqr-btn ">View</a></td>
                                                        </tr> -->
                                                    </tbody>
                                                </table>
                                            </div>
                                        </div>
                                        <!-- <h3>Bình luận</h3>
                                        <div class="myaccount-table table-responsive text-center">
                                            <table class="table table-bordered">
                                                <thead class="thead-light">
                                                    <tr>
                                                        <th>Product</th>
                                                        <th>Date</th>
                                                        <th>Expire</th>
                                                        <th>Download</th>
                                                    </tr>
                                                </thead>
                                                <tbody>
                                                    <tr>
                                                        <td>Haven - Free Real Estate PSD Template</td>
                                                        <td>Aug 22, 2022</td>
                                                        <td>Yes</td>
                                                        <td><a href="#" class="check-btn sqr-btn "><i class="fa fa-cloud-download"></i> Download File</a></td>
                                                    </tr>
                                                    <tr>
                                                        <td>HasTech - Profolio Business Template</td>
                                                        <td>Sep 12, 2022</td>
                                                        <td>Never</td>
                                                        <td><a href="#" class="check-btn sqr-btn "><i class="fa fa-cloud-download"></i> Download File</a></td>
                                                    </tr>
                                                </tbody>
                                            </table>
                                        </div> -->
                                    </div>
                                </div>
                                <!-- Single Tab Content End -->
                                <!-- Single Tab Content Start -->
                                <div class="tab-pane fade" id="payment-method" role="tabpanel">
                                    <div class="myaccount-content">
                                        <h3>Phương thức thanh toán</h3>
                                        <p class="saved-message">Thanh toán khi nhận hàng</p>
                                    </div>
                                </div>
                                <!-- Single Tab Content End -->
                                <!-- Single Tab Content Start -->
                                <div class="tab-pane fade" id="address-edit" role="tabpanel">
                                    <div class="myaccount-content">
                                        <h3>Billing Address</h3>
                                        <address>
                                            <p><strong>Alex Tuntuni</strong></p>
                                            <p>1355 Market St, Suite 900 <br>
                                                San Francisco, CA 94103</p>
                                            <p>Mobile: (123) 456-7890</p>
                                        </address>
                                        <a href="#" class="check-btn sqr-btn "><i class="fa fa-edit"></i> Edit Address</a>
                                    </div>
                                </div>
                                <!-- Single Tab Content End -->
                                <!-- Single Tab Content Start -->
                                <div class="tab-pane fade" id="account-info" role="tabpanel">
                                    <div class="myaccount-content">
                                        <h3>Chi tiết tài khoản</h3>
                                        <div class="account-details-form">
                                            <!-- index.php?act=doithongtin -->
                                            <form action="index.php?act=updateuser" method="post" enctype="multipart/form-data">
                                                <div class="single-input-item">
                                                    <input type="hidden" name="id" id="" value="<?= $id ?>">
                                                    <label for="ten" class="required">Tên hiển thị</label>
                                                    <input name="ten" type="text" id="ten" value="<?= $ten_khach_hang ?>" />
                                                </div>
                                                <div class="single-input-item">
                                                    <label for="tendangnhap" class="required">Tên đăng nhập</label>
                                                    <input name="tendangnhap" type="text" id="email" value="<?= $ten_dang_nhap ?>" />
                                                </div>
                                                <div class="single-input-item">
                                                    <label for="email" class="required">Email</label>
                                                    <input name="email" type="text" id="email" value="<?= $email_khach_hang ?>" />
                                                </div>
                                                <div class="single-input-item">
                                                    <label for="sdt" class="required">Số điện thoại</label>
                                                    <input name="sdt" type="text" id="sdt" value="<?= $sdt_khach_hang ?>" />
                                                </div>
                                                <div class="single-input-item">
                                                    <label for="diachi" class="required">Địa chỉ</label>
                                                    <input name="diachi" type="text" id="diachi" value="<?= $dia_chi_khach_hang ?>" />
                                                </div>
                                                <div class="single-input-item">
                                                    <label for="display-name" class="required">Ảnh</label>
                                                    <img src="<?= $linkimg ?>" alt="lỗi ảnh" style="border-radius: 50%; width: 100px;">
                                                    <input name="img" type="file" value="<?= $email_khach_hang ?>" />

                                                </div>
                                                <fieldset>
                                                    <legend>Thay đổi mật khẩu</legend>
                                                    <div class="single-input-item">
                                                        <label for="matkhau" class="required">Mật khẩu mới</label>
                                                        <input name="matkhau" type="text" id="matkhau" />
                                                    </div>
                                                </fieldset>
                                                <div class="single-input-item btn-hover">
                                                    <input type="submit" name="capnhap" class="check-btn sqr-btn" id="" value="Lưu thay đổi">
                                                    <!-- <button name="capnhap" class="check-btn sqr-btn" type="submit">Save Changes</button> -->
                                                </div>
                                            </form>
                                        </div>
                                    </div>
                                </div> <!-- Single Tab Content End -->
                            </div>
                        </div> <!-- My Account Tab Content End -->
                    </div>
                </div> <!-- My Account Page End -->
            </div>
        </div>
    </div>
</div>
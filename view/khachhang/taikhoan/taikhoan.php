<?php
if (isset($_SESSION['user']) && is_array($_SESSION['user'])) {
    extract($_SESSION['user']);
    $idkh = $id;
    $linkimg = '../../view/img/' . $img_khach_hang;
}
?>
<div class="breadcrumb-area bg-gray-4 breadcrumb-padding-1">
    <div class="container">
        <div class="breadcrumb-content text-center">
            <h2>Tài khoản của tôi </h2>
            <h6>
                <?php
                // if (isset($id) && ($id) != '') {
                //     echo $id;
                // }
                ?>
                <?php
                // if (isset($thongbao) && ($thongbao) != "") {
                //     echo $thongbao;
                // }
                ?>
            </h6>
            <ul>
                <li><a href="index.php?act=home">Home</a></li>
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
                                <!-- <a href="#payment-method" data-bs-toggle="tab">Phương thức thanh toán</a> -->
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
                                        <?php
                                        if (isset($thongbao) && ($thongbao) != "") {
                                            echo $thongbao;
                                        }
                                        ?>
                                    </div>
                                </div>
                                <!-- Single Tab Content End -->
                                <!-- Single Tab Content Start -->
                                <div class="tab-pane fade" id="orders" role="tabpanel">
                                    <div class="myaccount-content">
                                        <h3>Đơn đặt hàng</h3>
                                        <div class="myaccount-table table-responsive text-center">
                                            <table class="table table-bordered">
                                                <thead class="thead-light">
                                                    <tr>
                                                        <th>Ngày</th>
                                                        <th>Tổng cộng</th>
                                                        <th>Trạng thái</th>
                                                        <th>Xem</th>
                                                        <th>Hủy</th>
                                                    </tr>
                                                </thead>
                                                <tbody>
                                                    <?php
                                                    if (isset($hoadon)) {
                                                        foreach ($hoadon as $hd) {
                                                            extract($hd);
                                                            $iddh = $id;
                                                            if ($trang_thai == 0) {
                                                                $trangthai = 'Chờ xác nhận';
                                                            }
                                                            if ($trang_thai == 1) {
                                                                $trangthai = 'Đang chuẩn bị';
                                                            }
                                                            if ($trang_thai == 2) {
                                                                $trangthai = 'Đang giao';
                                                            }
                                                            if ($trang_thai == 3) {
                                                                $trangthai = 'Đã giao';
                                                            }
                                                    ?>

                                                            <tr>
                                                                <td><?php echo date('d/m/Y', strtotime($ngay_dat)); ?></td>
                                                                <td><?= $tong_tien ?> đ</td>
                                                                <td><?= $trangthai ?></td>
                                                                <td><a href="index.php?act=chitiethoadon&&id=<?= $iddh ?>" class="check-btn sqr-btn ">Chi tiết</a></td>
                                                                <?php
                                                                if ($trang_thai == 0 || $trang_thai == 1) {
                                                                ?>
                                                                    <td><a onclick="return confirm('xác nhận hủy đơn hàng')" href="index.php?act=huydonhang&&iddh=<?= $iddh ?>" class="check-btn sqr-btn ">Hủy</a></td>
                                                                <?php
                                                                } else {
                                                                ?>
                                                                    <td>Không thể hủy</td>
                                                                <?php
                                                                }
                                                                ?>
                                                            </tr>
                                                    <?php
                                                        }
                                                    }
                                                    ?>
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
                                                                $idbl = $id;
                                                        ?>
                                                                <tr>
                                                                    <td><?= $noi_dung ?></td>
                                                                    <td><?= $ten_san_pham  ?></td>
                                                                    <td><a onclick="return confirm('Xóa bình luận');" href="index.php?act=taikhoan&&idbl=<?= $idbl ?>" class="check-btn sqr-btn ">Xóa</a></td>
                                                                </tr>
                                                        <?php
                                                            }
                                                        }
                                                        ?>
                                                    </tbody>
                                                </table>
                                            </div>
                                        </div>
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
                                            <form action="index.php?act=doithongtin" method="post" enctype="multipart/form-data">
                                                <div class="single-input-item">
                                                    <input type="hidden" name="id" id="id" value="<?= $idkh ?>" placeholder=" id">
                                                    <label for="ten" class="required">Tên hiển thị</label>
                                                    <input name="ten" type="text" id="ten" value="<?= $ten_khach_hang ?>" />
                                                </div>
                                                <div class="single-input-item">
                                                    <label for="tendangnhap" class="required">Tên đăng nhập</label>
                                                    <input name="tendangnhap" type="text" id="tendangnhap" value="<?= $ten_dang_nhap ?>" />
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
                                                    <input name="img" type="file" />

                                                </div>
                                                <fieldset>
                                                    <legend>Thay đổi mật khẩu</legend>
                                                    <div class="single-input-item">
                                                        <label for="matkhau" class="required">Mật khẩu mới</label>
                                                        <input name="matkhaucu" type="hidden" id="matkhaucu" value="<?= $mat_khau ?>" />
                                                        <input name="matkhau" type="text" id="matkhau" placeholder="Mật khẩu mới" />
                                                    </div>
                                                </fieldset>
                                                <div class="single-input-item btn-hover">
                                                    <input type="submit" name="capnhaptaikhoan" class="check-btn sqr-btn" id="" value="Lưu thay đổi">
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
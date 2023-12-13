<div class="breadcrumb-area bg-gray-4 breadcrumb-padding-1">
    <div class="container">
        <div class="breadcrumb-content text-center">
            <h2>Đăng nhập - Đăng ký </h2>
            <ul>
                <li><a href="index.php?act=home">Home</a></li>
                <li><i class="ti-angle-right"></i></li>
                <li>Đăng nhập - Đăng ký </li>
            </ul>
        </div>
    </div>
    <div class="breadcrumb-img-1">
        <img src="assets/images/banner/breadcrumb-1.png" alt="">
    </div>
    <div class="breadcrumb-img-2">
        <img src="assets/images/banner/breadcrumb-2.png" alt="">
    </div>
</div>
<div class="login-register-area pb-100 pt-95">
    <div class="container">
        <div class="row">
            <div class="col-lg-8 col-md-12 offset-lg-2">
                <div class="login-register-wrapper">
                    <div class="login-register-tab-list nav">
                        <a href="index.php?act=dangnhaptaikhoan">
                            <h4> Đăng nhập </h4>
                        </a>
                        <a href="index.php?act=dangkytaikhoan">
                            <h4> Đăng ký </h4>
                        </a>
                    </div>
                    <div class="tab-content">
                        <div id="lg1" class="tab-pane active">
                            <div class="login-form-container">
                                <div class="login-register-form">
                                    <!-- index.php?act=dangkytaikhoan -->
                                    <form action="index.php?act=dangkytaikhoan" method="post">
                                        <input type="text" name="ten" placeholder="Tên khách hàng">
                                        <input type="text" name="tendangnhap" placeholder="Tên đăng nhập">
                                        <input type="password" name="matkhau" placeholder="Mật khẩu">
                                        <input type="email" name="email" placeholder="Email">
                                        <input type="text" name="sdt" placeholder="Số điện thoại">
                                        <input type="text" name="diachi" placeholder="Địa chỉ">
                                        <div class="button-box btn-hover">
                                            <input name="dangky" type="submit" type="text" id="" value="Đăng ký">
                                            <!-- <button name="dangky" type="submit">Đăng ký</button> -->
                                        </div>
                                    </form>
                                </div>
                                <?php
                                if (isset($thongbao) && $thongbao != "") {
                                    echo $thongbao;
                                }
                                ?>
                            </div>
                        </div>

                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
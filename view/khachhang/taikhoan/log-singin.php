<div class="login-register-area pb-100 pt-95">
    <div class="container">
        <div class="row">
            <div class="col-lg-8 col-md-12 offset-lg-2">
                <div class="login-register-wrapper">
                    <div class="login-register-tab-list nav">
                        <a class="active" data-bs-toggle="tab" href="#lg1">
                            <h4> Đăng nhập </h4>
                        </a>
                        <a data-bs-toggle="tab" href="#lg2">
                            <h4> Đăng ký </h4>
                        </a>
                    </div>
                    <div class="tab-content">
                        <div id="lg1" class="tab-pane active">
                            <div class="login-form-container">
                                <div class="login-register-form">
                                    <!-- index.php?act=dangnhaptaikhoan -->
                                    <form action="index.php?act=dangnhap" method="post">
                                        <input type="text" name="tendangnhap" placeholder="Tên đăng nhập">
                                        <input type="text" name="matkhau" placeholder="Mật khẩu">
                                        <div class="login-toggle-btn">
                                            <input type="checkbox">
                                            <label>Remember me</label>
                                            <a href="#">Forgot Password?</a>
                                        </div>
                                        <div class="button-box btn-hover">
                                            <button name="dangnhap" type="submit">Đăng nhập</button>
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
                        <div id="lg2" class="tab-pane">
                            <div class="login-form-container">
                                <div class="login-register-form">
                                    <!-- index.php?act=dangky -->
                                    <form action="index.php?act=dangky" method="post">
                                        <input type="text" name="ten" placeholder="Tên khách hàng">
                                        <input type="text" name="tendangnhap" placeholder="Tên đăng nhập">
                                        <input type="password" name="pass" placeholder="Mật khẩu">
                                        <input type="email" name="email" placeholder="Email">
                                        <input type="text" name="sdt" placeholder="Số điện thoại">
                                        <input type="text" name="diachi" placeholder="Địa chỉ">
                                        <div class="button-box btn-hover">
                                            <button name="dangky" type="submit">Đăng ký</button>
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

<div class="breadcrumb-area bg-gray-4 breadcrumb-padding-1">
    <div class="container">
        <div class="breadcrumb-content text-center">
            <h2>Đăng nhập - Đăng ký </h2>
            <ul>
                <li><a href="index.html">Home</a></li>
                <li><i class="ti-angle-right"></i></li>
                <li>Đăng nhập - Đăng ký </li>
            </ul>
        </div>
    </div>
    <div class="breadcrumb-img-1">
        <img src="#" alt="">
    </div>
    <div class="breadcrumb-img-2">
        <img src="#" alt="">
    </div>
</div>
<div class="login-register-area pb-100 pt-95">
    <div class="container">
        <div class="row">
            <div class="col-lg-8 col-md-12 offset-lg-2">
                <div class="login-register-wrapper">
                    <div class="login-register-tab-list nav">
                        <a href="index.php?act=dangnhap">
                            <h4> Đăng nhập </h4>
                        </a>
                        <a href="index.php?act=dangky">
                            <h4> Đăng ký </h4>
                        </a>
                    </div>
                    <div class="tab-content">
                        <div id="lg1" class="tab-pane active">
                            <div class="login-form-container">
                                <div class="login-register-form">
                                    <!-- index.php?act=dangnhaptaikhoan -->
                                    <form action="index.php?act=dangnhap" method="post">
                                        <input type="text" name="user" placeholder="Tên đăng nhập">
                                        <input type="text" name="pass" placeholder="Mật khẩu">
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

                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

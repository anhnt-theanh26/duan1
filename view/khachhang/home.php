<div class="slider-area">
    <div class="slider-active swiper-container">
        <div class="swiper-wrapper">
            <?php
            foreach ($banner as $bn) {
                extract($bn);
                $linkimgbanner = 'view/img/' . $img_banner;
            ?>
                <div class="swiper-slide">
                    <div class="intro-section slider-height-1 slider-content-center bg-img single-animation-wrap slider-bg-color-1" style="background-image:url(view/assets/images/slider/slider-bg-1.jpg)">
                        <div class="container">
                            <div class="row align-items-center">
                                <div class="col-lg-6 col-md-6">
                                    <div class="slider-content-1 slider-animated-1">
                                        <h1 class="animated"><?= $ten_banner ?></h1>
                                    </div>
                                </div>
                                <div class="col-lg-6 col-md-6">
                                    <div class="hero-slider-img-1 slider-animated-1">
                                        <img class="animated animated-slider-img-1" src="<?= $linkimgbanner ?>" alt="" style="width: 500px;">
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            <?php
            }
            ?>
            <div class="home-slider-prev main-slider-nav"><i class="fa fa-angle-left"></i></div>
            <div class="home-slider-next main-slider-nav"><i class="fa fa-angle-right"></i></div>
        </div>
    </div>
</div>
<div class="service-area pb-70">
</div>

<div class="service-area pb-70">
    <div class="product-area pb-95">
        <div class="container">
            <div class="product-slider-active-1 swiper-container">
                <div class="swiper-wrapper">
                    <?php
                    foreach ($danhmuc as $dm) {
                        extract($dm);
                        $linkdm = 'index.php?act=danhmuc&&id=' . $id;
                        $linkimg = 'view/img/' . $img_danh_muc;
                    ?>
                        <div class="swiper-slide">
                            <a href="<?= $linkdm ?>">
                                <div class="service-wrap">
                                    <div class="service-img">
                                        <img src="<?= $linkimg ?>" alt="">
                                    </div>
                                    <div class="service-content">
                                        <h3><?= $ten_danh_muc ?></h3>
                                        <p>Xem các sản phẩm</p>
                                    </div>
                                </div>
                            </a>
                        </div>
                    <?php
                    }
                    ?>
                </div>
                <div class="product-prev-1 product-nav-1" data-aos-delay="200"><i class="fa fa-angle-left"></i></div>
                <div class="product-next-1 product-nav-1" data-aos-delay="200"><i class="fa fa-angle-right"></i></div>
            </div>
        </div>
    </div>
</div>
<div class="product-area pb-60">
    <div class="container">
        <div class="section-title-tab-wrap mb-75">
            <div class="section-title-2">
                <h2>Sản phẩm</h2>
            </div>
        </div>
        <div class="tab-content jump">
            <div id="pro-1" class="tab-pane active">
                <div class="row">
                    <?php
                    foreach ($sanpham as $sp) {
                        extract($sp);
                        $linkimg = 'view/img/' . $img_dai_dien;
                        $linksp = "index.php?act=chitietsanpham&&idsp=$id&&iddm=$iddm";
                    ?>
                        <div class="col-lg-3 col-md-4 col-sm-6 col-12">
                            <div class="product-wrap mb-35">
                                <div class="product-img img-zoom mb-25">
                                    <a href="<?= $linksp ?>">
                                        <img src="<?= $linkimg ?>" alt="" style="width: 270x; height: 300px;">
                                    </a>
                                    <!-- <form action="index.php?act=addcart" method="post"> -->
                                    <div class="product-action-2-wrap">
                                        <input type="hidden" name="id" id="" value="<?= $id ?>">
                                        <input type="hidden" name="name" id="" value="<?= $ten_san_pham ?>">
                                        <input type="hidden" name="price" id="" value="<?= $gia_san_pham ?>">
                                        <input type="hidden" name="img" id="" value="<?= $img_dai_dien ?>">
                                        <input type="hidden" name="iddm" id="" value="<?= $iddm ?>">
                                        <?php
                                        if ($so_luong > 0) {
                                        ?>
                                            <button data-id="<?= $id ?>" onclick="addtocart('<?= $id ?>', '<?= $ten_san_pham ?>', '<?= $gia_san_pham ?>')" name="addtocart" class="product-action-btn-2" title="Thêm vào giỏ hàng"><i class="pe-7s-cart"></i>Thêm vào giỏ hàng</button>
                                        <?php
                                        } else {
                                        ?>
                                            <button class="product-action-btn-2" title="Thêm vào giỏ hàng">Hết hàng</button>
                                        <?php
                                        }
                                        ?>
                                    </div>
                                    <!-- </form> -->
                                </div>
                                <div class="product-content">
                                    <h3><a href="<?= $linksp ?>"><?= $ten_san_pham ?></a></h3>
                                    <div class="product-price">
                                        <span class="new-price"><?= number_format($gia_san_pham, 0, ',', '.') ?> đ</span>
                                    </div>
                                </div>
                            </div>
                        </div>

                    <?php
                    }
                    ?>
                </div>
            </div>
        </div>
    </div>
</div>
</div>
</div>
<div class="blog-area pb-70">
    <div class="container">
        <div class="section-title-2 st-border-center text-center mb-75">
            <h2>Tin tức mới</h2>
        </div>
        <div class="row">
            <?php
            foreach ($tintuc as $tt) {
                extract($tt);
                $linkimg = 'view/img/' . $img_tin_tuc;
                $linknews = 'index.php?act=chitiettintuc&&id=' . $idtt;
                $linkdm = 'index.php?act=danhmuc&&id=' . $iddm;
            ?>
                <div class="col-lg-4 col-md-6">
                    <div class="blog-wrap mb-30">
                        <div class="blog-img-date-wrap mb-25">
                            <div class="blog-img">
                                <a href="<?= $linknews ?>"><img src="<?= $linkimg ?>" alt="" style="width: 370x; height: 250px;"></a>
                            </div>
                            <div class="blog-date">
                                <h5><?php echo date("d", strtotime($ngay_dang)) ?><span><?php echo date("m", strtotime($ngay_dang)) ?></span></h5>
                            </div>
                        </div>
                        <div class="blog-content">
                            <div class="blog-meta">
                                <ul>
                                    <li><a href="<?= $linkdm ?>"><?= $ten_danh_muc ?></a></li>
                                </ul>
                            </div>
                            <h3><a href="<?= $linknews ?>"><?= $tieu_de ?></a></h3>
                            <div class="blog-btn">
                                <a href="<?= $linknews ?>">Đọc thêm</a>
                            </div>
                        </div>
                    </div>
                </div>
            <?php
            }
            ?>
        </div>
    </div>
</div>


<script src="https://code.jquery.com/jquery-3.7.1.min.js"></script>
<script>
    let totalProduct = document.getElementById('totalProduct');

    function addtocart(id, name, price) {
        // console.log(id, name, price);
        // Sử dụng jQuery
        $.ajax({
            type: 'POST',
            // Đường dẫn tới tệp PHP xử lý dữ liệu
            url: './view/khachhang/sanpham/addtocart.php',
            data: {
                id: id,
                name: name,
                price: price,
            },
            success: function(response) {
                totalProduct.innerText = response;
            },
            error: function(error) {
                console.log(error);
            }
        });
    }
</script>
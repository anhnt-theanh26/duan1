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
                                        <!-- <h3 class="animated"></h3> -->
                                        <h1 class="animated"><?= $ten_banner ?></h1>
                                        <!-- <div class="slider-btn btn-hover">
                                        <a href="product-details.html" class="btn animated">
                                            Shop Now <i class=" ti-arrow-right "></i>
                                        </a>
                                    </div> -->
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
                <div class="product-prev-1 product-nav-1"><i class="fa fa-angle-left"></i></div>
                <div class="product-next-1 product-nav-1"><i class="fa fa-angle-right"></i></div>
            </div>
        </div>
    </div>
</div>
<div class="product-area pb-60">
    <div class="container">
        <div class="section-title-tab-wrap mb-75">
            <div class="section-title-2" data-aos="fade-up">
                <h2>Sản phẩm</h2>
            </div>
            <?php
            if (isset($_GET['id']) && ($_GET['id'])) {
                $iddm = $_GET['id'];
            ?>
                <form action="#" method="post">
                    <input type="hidden" name="id" id="" value="<?= $iddm ?>">
                    <select name="tk" id="" style="width: 200px;">
                        <option value="">--Lọc sản phẩm--</option>
                        <option value="1">Giá tăng dần</option>
                        <option value="2">Giá giảm dần</option>
                    </select>
                    <input type="submit" name="loc" placeholder="" value="Lọc" id="" style="width: 50px;">
                </form>
            <?php
            }
            ?>
        </div>
        <?php if (isset($thongbao) && ($thongbao) != "") echo $thongbao ?>
        <div class="tab-content jump">
            <div id="pro-1" class="tab-pane active">
                <div class="row">
                    <?php
                    foreach ($sanpham as $sp) {
                        extract($sp);
                        $idsp = $id;
                        $linkimg = 'view/img/' . $img_dai_dien;
                        $linksp = "index.php?act=chitietsanpham&&idsp=$idsp&&iddm=$iddm";
                    ?>
                        <div class="col-lg-3 col-md-4 col-sm-6 col-12">
                            <div class="product-wrap mb-35" data-aos="fade-up">
                                <div class="product-img img-zoom mb-25">
                                    <a href="<?= $linksp ?>">
                                        <img src="<?= $linkimg ?>" alt="" style="width: 270x; height: 300px;">
                                    </a>
                                    <!-- <div class="product-badge badge-top badge-right badge-pink">
                                            <span>-10%</span>
                                        </div> -->
                                    <!-- <div class="product-action-wrap">
                                            <button class="product-action-btn-1" title="Wishlist"><i class="pe-7s-like"></i></button>
                                            <button class="product-action-btn-1" title="Quick View" data-bs-toggle="modal" data-bs-target="#exampleModal">
                                                <i class="pe-7s-look"></i>
                                            </button>
                                        </div> -->
                                    <form action="index.php?act=addcart" method="post">
                                        <div class="product-action-2-wrap">
                                            <input type="hidden" name="id" id="" value="<?= $id ?>">
                                            <input type="hidden" name="name" id="" value="<?= $ten_san_pham ?>">
                                            <input type="hidden" name="price" id="" value="<?= $gia_san_pham ?>">
                                            <input type="hidden" name="img" id="" value="<?= $img_dai_dien ?>">
                                            <input type="hidden" name="iddm" id="" value="<?= $iddm ?>">
                                            <!-- <button type="submit" name="addtocart" class="product-action-btn-2" title="Add To Cart"><i class="pe-7s-cart"></i>Thêm vào giỏ hàng</button> -->
                                            <input type="submit" name="addtocart" class="product-action-btn-2" title="Add To Cart" value="Thêm vào giỏ hàng">
                                        </div>
                                    </form>
                                </div>
                                <div class="product-content">
                                    <h3><a href="<?= $linksp ?>">
                                            <?= $ten_san_pham ?>
                                        </a></h3>
                                    <div class="product-price">
                                        <!-- <span class="old-price">$25.89 </span> -->
                                        <span class="new-price">
                                            <?= number_format($gia_san_pham, 0, ',', '.') ?> đ
                                        </span>
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
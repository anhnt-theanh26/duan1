<div class="slider-area">
    <div class="slider-active swiper-container">
        <div class="swiper-wrapper">
            <div class="swiper-slide">
                <div class="intro-section slider-height-1 slider-content-center bg-img single-animation-wrap slider-bg-color-1" style="background-image:url(view/assets/images/slider/slider-bg-1.jpg)">
                    <div class="container">
                        <div class="row align-items-center">
                            <div class="col-lg-6 col-md-6">
                                <div class="slider-content-1 slider-animated-1">
                                    <h3 class="animated">Sản phẩm mới</h3>
                                    <h1 class="animated">Hàng <br>Mới Về</h1>
                                    <!-- <div class="slider-btn btn-hover">
                                        <a href="product-details.html" class="btn animated">
                                            Shop Now <i class=" ti-arrow-right "></i>
                                        </a>
                                    </div> -->
                                </div>
                            </div>
                            <div class="col-lg-6 col-md-6">
                                <div class="hero-slider-img-1 slider-animated-1">
                                    <img class="animated animated-slider-img-1" src="img/tải xuống.jfif" alt="">
                                    <!-- <div class="product-offer animated">
                                                <h5>30% <span>Off</span></h5>
                                            </div> -->
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="swiper-slide">
                <div class="intro-section slider-height-1 slider-content-center bg-img single-animation-wrap slider-bg-color-1" style="background-image:url(view/assets/images/slider/slider-bg-1.jpg)">
                    <div class="container">
                        <div class="row align-items-center">
                            <div class="col-lg-6 col-md-6">
                                <div class="slider-content-1 slider-animated-1">
                                    <h3 class="animated">Sản phẩm mới</h3>
                                    <h1 class="animated">Hàng <br>Mới Về</h1>
                                    <!-- <div class="slider-btn btn-hover">
                                                <a href="product-details.html" class="btn animated">
                                                    Shop Now <i class=" ti-arrow-right "></i>
                                                </a>
                                            </div> -->
                                </div>
                            </div>
                            <div class="col-lg-6 col-md-6">
                                <div class="hero-slider-img-1 slider-animated-1">
                                    <img class="animated animated-slider-img-1" src="img/images (1).png" alt="">
                                    <!-- <div class="product-offer animated">
                                                <h5>30% <span>Off</span></h5>
                                            </div> -->
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="swiper-slide">
                <div class="intro-section slider-height-1 slider-content-center bg-img single-animation-wrap slider-bg-color-1" style="background-image:url(view/assets/images/slider/slider-bg-1.jpg)">
                    <div class="container">
                        <div class="row align-items-center">
                            <div class="col-lg-6 col-md-6">
                                <div class="slider-content-1 slider-animated-1">
                                    <h3 class="animated">Sản phẩm mới</h3>
                                    <h1 class="animated">Hàng <br>Mới Về</h1>
                                    <!-- <div class="slider-btn btn-hover">
                                                <a href="product-details.html" class="btn animated">
                                                    Shop Now <i class=" ti-arrow-right "></i>
                                                </a>
                                            </div> -->
                                </div>
                            </div>
                            <div class="col-lg-6 col-md-6">
                                <div class="hero-slider-img-1 slider-animated-1">
                                    <img class="animated animated-slider-img-1" src="view/assets/images/slider/slider-bg-10.jpg" alt="">
                                    <!-- <div class="product-offer animated">
                                                <h5>30% <span>Off</span></h5>
                                            </div> -->
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="home-slider-prev main-slider-nav"><i class="fa fa-angle-left"></i></div>
            <div class="home-slider-next main-slider-nav"><i class="fa fa-angle-right"></i></div>
        </div>
    </div>
</div>
<div class="service-area pb-70">
</div>
<div class="service-area pb-70">
    <div class="container">
        <div class="row">
            <?php
            foreach ($danhmuc as $dm) {
                extract($dm);
                $linkdm = 'index.php?act=danhmuc&&id=' . $id;
                $linkimg = '../../view/img/' . $img_danh_muc;
            ?>
                <div class="col-lg-3 col-md-6 col-sm-6 col-12 mb-30">
                    <a href="<?= $linkdm ?>">
                        <div class="service-wrap" data-aos="fade-up">
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
    </div>
</div>
<div class="product-area pb-60">
    <div class="container">
        <div class="section-title-tab-wrap mb-75">
            <div class="section-title-2" data-aos="fade-up">
                <h2>Hot Products</h2>
            </div>
        </div>
        <div class="tab-content jump">
            <div id="pro-1" class="tab-pane active">
                <div class="row">
                    <?php
                    foreach ($sanpham as $sp) {
                        extract($sp);
                        $linkimg = '../../view/img/' . $img_dai_dien;
                        $linksp = "index.php?act=chitietsanpham&&idsp=$id&&iddm=$iddm";
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
                                    <h3><a href="<?= $linksp ?>"><?= $ten_san_pham ?></a></h3>
                                    <div class="product-price">
                                        <!-- <span class="old-price">$25.89 </span> -->
                                        <span class="new-price"><?= $gia_san_pham ?>đ</span>
                                    </div>
                                </div>
                            </div>
                        </div>

                    <?php
                    }
                    ?>
                </div>
            </div>
            <!-- <div id="pro-2" class="tab-pane">
                <div class="row">
                    <div class="col-lg-3 col-md-4 col-sm-6 col-12">
                        <div class="product-wrap mb-35">
                            <div class="product-img img-zoom mb-25">
                                <a href="product-details.html">
                                    <img src="view/assets/images/product/product-9.png" alt="">
                                </a>
                                <div class="product-badge badge-top badge-right badge-pink">
                                    <span>-10%</span>
                                </div>
                                <div class="product-action-wrap">
                                    <button class="product-action-btn-1" title="Wishlist"><i class="pe-7s-like"></i></button>
                                    <button class="product-action-btn-1" title="Quick View" data-bs-toggle="modal" data-bs-target="#exampleModal">
                                        <i class="pe-7s-look"></i>
                                    </button>
                                </div>
                                <div class="product-action-2-wrap">
                                    <button class="product-action-btn-2" title="Add To Cart"><i class="pe-7s-cart"></i> Add to cart</button>
                                </div>
                            </div>
                            <div class="product-content">
                                <h3><a href="product-details.html">Modern Lounge Chairs</a></h3>
                                <div class="product-price">
                                    <span class="old-price">$25.89 </span>
                                    <span class="new-price">$20.25 </span>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-4 col-sm-6 col-12">
                        <div class="product-wrap mb-35">
                            <div class="product-img img-zoom mb-25">
                                <a href="product-details.html">
                                    <img src="view/assets/images/product/product-8.png" alt="">
                                </a>
                                <div class="product-action-wrap">
                                    <button class="product-action-btn-1" title="Wishlist"><i class="pe-7s-like"></i></button>
                                    <button class="product-action-btn-1" title="Quick View" data-bs-toggle="modal" data-bs-target="#exampleModal">
                                        <i class="pe-7s-look"></i>
                                    </button>
                                </div>
                                <div class="product-action-2-wrap">
                                    <button class="product-action-btn-2" title="Add To Cart"><i class="pe-7s-cart"></i> Add to cart</button>
                                </div>
                            </div>
                            <div class="product-content">
                                <h3><a href="product-details.html">Modern Swivel Chair</a></h3>
                                <div class="product-price">
                                    <span>$50.25 </span>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-4 col-sm-6 col-12">
                        <div class="product-wrap mb-35">
                            <div class="product-img img-zoom mb-25">
                                <a href="product-details.html">
                                    <img src="view/assets/images/product/product-6.png" alt="">
                                </a>
                                <div class="product-badge badge-top badge-right badge-pink">
                                    <span>-10%</span>
                                </div>
                                <div class="product-action-wrap">
                                    <button class="product-action-btn-1" title="Wishlist"><i class="pe-7s-like"></i></button>
                                    <button class="product-action-btn-1" title="Quick View" data-bs-toggle="modal" data-bs-target="#exampleModal">
                                        <i class="pe-7s-look"></i>
                                    </button>
                                </div>
                                <div class="product-action-2-wrap">
                                    <button class="product-action-btn-2" title="Add To Cart"><i class="pe-7s-cart"></i> Add to cart</button>
                                </div>
                            </div>
                            <div class="product-content">
                                <h3><a href="product-details.html">Stylish Dining Chair</a></h3>
                                <div class="product-price">
                                    <span class="old-price">$45.00 </span>
                                    <span class="new-price">$40.00 </span>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-4 col-sm-6 col-12">
                        <div class="product-wrap mb-35">
                            <div class="product-img img-zoom mb-25">
                                <a href="product-details.html">
                                    <img src="view/assets/images/product/product-7.png" alt="">
                                </a>
                                <div class="product-action-wrap">
                                    <button class="product-action-btn-1" title="Wishlist"><i class="pe-7s-like"></i></button>
                                    <button class="product-action-btn-1" title="Quick View" data-bs-toggle="modal" data-bs-target="#exampleModal">
                                        <i class="pe-7s-look"></i>
                                    </button>
                                </div>
                                <div class="product-action-2-wrap">
                                    <button class="product-action-btn-2" title="Add To Cart"><i class="pe-7s-cart"></i> Add to cart</button>
                                </div>
                            </div>
                            <div class="product-content">
                                <h3><a href="product-details.html">Round Standard Chair</a></h3>
                                <div class="product-price">
                                    <span>$30.25 </span>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-4 col-sm-6 col-12">
                        <div class="product-wrap mb-35">
                            <div class="product-img img-zoom mb-25">
                                <a href="product-details.html">
                                    <img src="view/assets/images/product/product-5.png" alt="">
                                </a>
                                <div class="product-badge badge-top badge-right badge-pink">
                                    <span>-10%</span>
                                </div>
                                <div class="product-action-wrap">
                                    <button class="product-action-btn-1" title="Wishlist"><i class="pe-7s-like"></i></button>
                                    <button class="product-action-btn-1" title="Quick View" data-bs-toggle="modal" data-bs-target="#exampleModal">
                                        <i class="pe-7s-look"></i>
                                    </button>
                                </div>
                                <div class="product-action-2-wrap">
                                    <button class="product-action-btn-2" title="Add To Cart"><i class="pe-7s-cart"></i> Add to cart</button>
                                </div>
                            </div>
                            <div class="product-content">
                                <h3><a href="product-details.html">Interior moderno render</a></h3>
                                <div class="product-price">
                                    <span class="old-price">$25.89 </span>
                                    <span class="new-price">$20.25 </span>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-4 col-sm-6 col-12">
                        <div class="product-wrap mb-35">
                            <div class="product-img img-zoom mb-25">
                                <a href="product-details.html">
                                    <img src="view/assets/images/product/product-4.png" alt="">
                                </a>
                                <div class="product-action-wrap">
                                    <button class="product-action-btn-1" title="Wishlist"><i class="pe-7s-like"></i></button>
                                    <button class="product-action-btn-1" title="Quick View" data-bs-toggle="modal" data-bs-target="#exampleModal">
                                        <i class="pe-7s-look"></i>
                                    </button>
                                </div>
                                <div class="product-action-2-wrap">
                                    <button class="product-action-btn-2" title="Add To Cart"><i class="pe-7s-cart"></i> Add to cart</button>
                                </div>
                            </div>
                            <div class="product-content">
                                <h3><a href="product-details.html">Stylish Swing Chair</a></h3>
                                <div class="product-price">
                                    <span>$50.25 </span>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-4 col-sm-6 col-12">
                        <div class="product-wrap mb-35">
                            <div class="product-img img-zoom mb-25">
                                <a href="product-details.html">
                                    <img src="view/assets/images/product/product-2.png" alt="">
                                </a>
                                <div class="product-badge badge-top badge-right badge-pink">
                                    <span>-10%</span>
                                </div>
                                <div class="product-action-wrap">
                                    <button class="product-action-btn-1" title="Wishlist"><i class="pe-7s-like"></i></button>
                                    <button class="product-action-btn-1" title="Quick View" data-bs-toggle="modal" data-bs-target="#exampleModal">
                                        <i class="pe-7s-look"></i>
                                    </button>
                                </div>
                                <div class="product-action-2-wrap">
                                    <button class="product-action-btn-2" title="Add To Cart"><i class="pe-7s-cart"></i> Add to cart</button>
                                </div>
                            </div>
                            <div class="product-content">
                                <h3><a href="product-details.html">New Modern Sofa Set</a></h3>
                                <div class="product-price">
                                    <span class="old-price">$45.00 </span>
                                    <span class="new-price">$40.00 </span>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-4 col-sm-6 col-12">
                        <div class="product-wrap mb-35">
                            <div class="product-img img-zoom mb-25">
                                <a href="product-details.html">
                                    <img src="view/assets/images/product/product-1.png" alt="">
                                </a>
                                <div class="product-action-wrap">
                                    <button class="product-action-btn-1" title="Wishlist"><i class="pe-7s-like"></i></button>
                                    <button class="product-action-btn-1" title="Quick View" data-bs-toggle="modal" data-bs-target="#exampleModal">
                                        <i class="pe-7s-look"></i>
                                    </button>
                                </div>
                                <div class="product-action-2-wrap">
                                    <button class="product-action-btn-2" title="Add To Cart"><i class="pe-7s-cart"></i> Add to cart</button>
                                </div>
                            </div>
                            <div class="product-content">
                                <h3><a href="product-details.html">New Modern Sofa Set</a></h3>
                                <div class="product-price">
                                    <span>$30.25 </span>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div id="pro-3" class="tab-pane"> -->
            <!-- <div class="row"> -->
            <!-- <div class="col-lg-3 col-md-4 col-sm-6 col-12">
                <div class="product-wrap mb-35">
                    <div class="product-img img-zoom mb-25">
                        <a href="product-details.html">
                            <img src="view/assets/images/product/product-4.png" alt="">
                        </a>
                        <div class="product-badge badge-top badge-right badge-pink">
                            <span>-10%</span>
                        </div>
                        <div class="product-action-wrap">
                            <button class="product-action-btn-1" title="Wishlist"><i class="pe-7s-like"></i></button>
                            <button class="product-action-btn-1" title="Quick View" data-bs-toggle="modal" data-bs-target="#exampleModal">
                                <i class="pe-7s-look"></i>
                            </button>
                        </div>
                        <div class="product-action-2-wrap">
                            <button class="product-action-btn-2" title="Add To Cart"><i class="pe-7s-cart"></i> Add to cart</button>
                        </div>
                    </div>
                    <div class="product-content">
                        <h3><a href="product-details.html">Stylish Swing Chair</a></h3>
                        <div class="product-price">
                            <span class="old-price">$25.89 </span>
                            <span class="new-price">$20.25 </span>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-lg-3 col-md-4 col-sm-6 col-12">
                <div class="product-wrap mb-35">
                    <div class="product-img img-zoom mb-25">
                        <a href="product-details.html">
                            <img src="view/assets/images/product/product-3.png" alt="">
                        </a>
                        <div class="product-action-wrap">
                            <button class="product-action-btn-1" title="Wishlist"><i class="pe-7s-like"></i></button>
                            <button class="product-action-btn-1" title="Quick View" data-bs-toggle="modal" data-bs-target="#exampleModal">
                                <i class="pe-7s-look"></i>
                            </button>
                        </div>
                        <div class="product-action-2-wrap">
                            <button class="product-action-btn-2" title="Add To Cart"><i class="pe-7s-cart"></i> Add to cart</button>
                        </div>
                    </div>
                    <div class="product-content">
                        <h3><a href="product-details.html">Easy Modern Chair</a></h3>
                        <div class="product-price">
                            <span>$50.25 </span>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-lg-3 col-md-4 col-sm-6 col-12">
                <div class="product-wrap mb-35">
                    <div class="product-img img-zoom mb-25">
                        <a href="product-details.html">
                            <img src="view/assets/images/product/product-5.png" alt="">
                        </a>
                        <div class="product-badge badge-top badge-right badge-pink">
                            <span>-10%</span>
                        </div>
                        <div class="product-action-wrap">
                            <button class="product-action-btn-1" title="Wishlist"><i class="pe-7s-like"></i></button>
                            <button class="product-action-btn-1" title="Quick View" data-bs-toggle="modal" data-bs-target="#exampleModal">
                                <i class="pe-7s-look"></i>
                            </button>
                        </div>
                        <div class="product-action-2-wrap">
                            <button class="product-action-btn-2" title="Add To Cart"><i class="pe-7s-cart"></i> Add to cart</button>
                        </div>
                    </div>
                    <div class="product-content">
                        <h3><a href="product-details.html">Interior moderno render</a></h3>
                        <div class="product-price">
                            <span class="old-price">$45.00 </span>
                            <span class="new-price">$40.00 </span>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-lg-3 col-md-4 col-sm-6 col-12">
                <div class="product-wrap mb-35">
                    <div class="product-img img-zoom mb-25">
                        <a href="product-details.html">
                            <img src="view/assets/images/product/product-2.png" alt="">
                        </a>
                        <div class="product-action-wrap">
                            <button class="product-action-btn-1" title="Wishlist"><i class="pe-7s-like"></i></button>
                            <button class="product-action-btn-1" title="Quick View" data-bs-toggle="modal" data-bs-target="#exampleModal">
                                <i class="pe-7s-look"></i>
                            </button>
                        </div>
                        <div class="product-action-2-wrap">
                            <button class="product-action-btn-2" title="Add To Cart"><i class="pe-7s-cart"></i> Add to cart</button>
                        </div>
                    </div>
                    <div class="product-content">
                        <h3><a href="product-details.html">New Modern Sofa Set</a></h3>
                        <div class="product-price">
                            <span>$30.25 </span>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-lg-3 col-md-4 col-sm-6 col-12">
                <div class="product-wrap mb-35">
                    <div class="product-img img-zoom mb-25">
                        <a href="product-details.html">
                            <img src="view/assets/images/product/product-1.png" alt="">
                        </a>
                        <div class="product-badge badge-top badge-right badge-pink">
                            <span>-10%</span>
                        </div>
                        <div class="product-action-wrap">
                            <button class="product-action-btn-1" title="Wishlist"><i class="pe-7s-like"></i></button>
                            <button class="product-action-btn-1" title="Quick View" data-bs-toggle="modal" data-bs-target="#exampleModal">
                                <i class="pe-7s-look"></i>
                            </button>
                        </div>
                        <div class="product-action-2-wrap">
                            <button class="product-action-btn-2" title="Add To Cart"><i class="pe-7s-cart"></i> Add to cart</button>
                        </div>
                    </div>
                    <div class="product-content">
                        <h3><a href="product-details.html">New Modern Sofa Set</a></h3>
                        <div class="product-price">
                            <span class="old-price">$25.89 </span>
                            <span class="new-price">$20.25 </span>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-lg-3 col-md-4 col-sm-6 col-12">
                <div class="product-wrap mb-35">
                    <div class="product-img img-zoom mb-25">
                        <a href="product-details.html">
                            <img src="view/assets/images/product/product-8.png" alt="">
                        </a>
                        <div class="product-action-wrap">
                            <button class="product-action-btn-1" title="Wishlist"><i class="pe-7s-like"></i></button>
                            <button class="product-action-btn-1" title="Quick View" data-bs-toggle="modal" data-bs-target="#exampleModal">
                                <i class="pe-7s-look"></i>
                            </button>
                        </div>
                        <div class="product-action-2-wrap">
                            <button class="product-action-btn-2" title="Add To Cart"><i class="pe-7s-cart"></i> Add to cart</button>
                        </div>
                    </div>
                    <div class="product-content">
                        <h3><a href="product-details.html">Modern Swivel Chair</a></h3>
                        <div class="product-price">
                            <span>$50.25 </span>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-lg-3 col-md-4 col-sm-6 col-12">
                <div class="product-wrap mb-35">
                    <div class="product-img img-zoom mb-25">
                        <a href="product-details.html">
                            <img src="view/assets/images/product/product-7.png" alt="">
                        </a>
                        <div class="product-badge badge-top badge-right badge-pink">
                            <span>-10%</span>
                        </div>
                        <div class="product-action-wrap">
                            <button class="product-action-btn-1" title="Wishlist"><i class="pe-7s-like"></i></button>
                            <button class="product-action-btn-1" title="Quick View" data-bs-toggle="modal" data-bs-target="#exampleModal">
                                <i class="pe-7s-look"></i>
                            </button>
                        </div>
                        <div class="product-action-2-wrap">
                            <button class="product-action-btn-2" title="Add To Cart"><i class="pe-7s-cart"></i> Add to cart</button>
                        </div>
                    </div>
                    <div class="product-content">
                        <h3><a href="product-details.html">Round Standard Chair</a></h3>
                        <div class="product-price">
                            <span class="old-price">$45.00 </span>
                            <span class="new-price">$40.00 </span>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-lg-3 col-md-4 col-sm-6 col-12">
                <div class="product-wrap mb-35">
                    <div class="product-img img-zoom mb-25">
                        <a href="product-details.html">
                            <img src="view/assets/images/product/product-6.png" alt="">
                        </a>
                        <div class="product-action-wrap">
                            <button class="product-action-btn-1" title="Wishlist"><i class="pe-7s-like"></i></button>
                            <button class="product-action-btn-1" title="Quick View" data-bs-toggle="modal" data-bs-target="#exampleModal">
                                <i class="pe-7s-look"></i>
                            </button>
                        </div>
                        <div class="product-action-2-wrap">
                            <button class="product-action-btn-2" title="Add To Cart"><i class="pe-7s-cart"></i> Add to cart</button>
                        </div>
                    </div>
                    <div class="product-content">
                        <h3><a href="product-details.html">Stylish Dining Chair</a></h3>
                        <div class="product-price">
                            <span>$30.25 </span>
                        </div>
                    </div>
                </div>
            </div> -->
        </div>
    </div>
</div>
</div>
</div>
<!-- <div class="brand-logo-area pb-95">
            <div class="container">
                <div class="brand-logo-active swiper-container">
                    <div class="swiper-wrapper">
                        <div class="swiper-slide">
                            <div class="single-brand-logo" data-aos="fade-up" data-aos-delay="200">
                                <a href="#"><img src="view/assets/images/brand-logo/brand-logo-1.png" alt=""></a>
                            </div>
                        </div>
                        <div class="swiper-slide">
                            <div class="single-brand-logo" data-aos="fade-up" data-aos-delay="400">
                                <a href="#"><img src="view/assets/images/brand-logo/brand-logo-2.png" alt=""></a>
                            </div>
                        </div>
                        <div class="swiper-slide">
                            <div class="single-brand-logo" data-aos="fade-up" data-aos-delay="600">
                                <a href="#"><img src="view/assets/images/brand-logo/brand-logo-3.png" alt=""></a>
                            </div>
                        </div>
                        <div class="swiper-slide">
                            <div class="single-brand-logo" data-aos="fade-up" data-aos-delay="800">
                                <a href="#"><img src="view/assets/images/brand-logo/brand-logo-4.png" alt=""></a>
                            </div>
                        </div>
                        <div class="swiper-slide">
                            <div class="single-brand-logo" data-aos="fade-up" data-aos-delay="1000">
                                <a href="#"><img src="view/assets/images/brand-logo/brand-logo-5.png" alt=""></a>
                            </div>
                        </div>
                        <div class="swiper-slide">
                            <div class="single-brand-logo" data-aos="fade-up" data-aos-delay="1200">
                                <a href="#"><img src="view/assets/images/brand-logo/brand-logo-1.png" alt=""></a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div> -->
<div class="blog-area pb-70">
    <div class="container">
        <div class="section-title-2 st-border-center text-center mb-75" data-aos="fade-up">
            <h2>Latest News</h2>
        </div>
        <div class="row">
            <?php
            foreach ($tintuc as $tt) {
                extract($tt);
                $linkimg = '../../view/img/' . $img_tin_tuc;
                $linknews = 'index.php?act=chitiettintuc&&id='.$idtt;
                $linkdm = 'index.php?act=danhmuc&&id=' . $iddm;
            ?>
                <div class="col-lg-4 col-md-6">
                    <div class="blog-wrap mb-30" data-aos="fade-up">
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
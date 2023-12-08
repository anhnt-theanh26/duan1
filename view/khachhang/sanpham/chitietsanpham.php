<?php
if (isset($_SESSION['view']) && ($_SESSION['view'])) {
    extract($_SESSION['view']);
    update_view($id);
}


extract($sanpham);
$linkimg = 'view/img/' . $img_dai_dien;
$linkimg1 = 'view/img/' . $img_san_pham1;
$linkimg2 = 'view/img/' . $img_san_pham2;
$linkimg3 = 'view/img/' . $img_san_pham3;
$idsp = $id;
?>
<div class="breadcrumb-area bg-gray-4 breadcrumb-padding-1">
    <div class="container">
        <div class="breadcrumb-content text-center">
            <h2>Chi tiết sản phẩm</h2>
            <ul>
                <li><a href="index.php?act=home">Home</a></li>
                <li><i class="ti-angle-right"></i></li>
                <li>Chi tiết sản phẩm</li>
            </ul>
        </div>
    </div>
</div>
<div class="product-details-area pb-100 pt-100">
    <div class="container">
        <div class="row">
            <div class="col-lg-6">
                <div class="product-details-img-wrap product-details-vertical-wrap">
                    <div class="product-details-small-img-wrap">
                        <div class="swiper-container product-details-small-img-slider-1 pd-small-img-style">
                            <div class="swiper-wrapper">
                                <div class="swiper-slide">
                                    <div class="product-details-small-img">
                                        <img src="<?= $linkimg ?>" alt="Product Thumnail">
                                    </div>
                                </div>
                                <div class="swiper-slide">
                                    <div class="product-details-small-img">
                                        <img src="<?= $linkimg1 ?>" alt="Product Thumnail">
                                    </div>
                                </div>
                                <div class="swiper-slide">
                                    <div class="product-details-small-img">
                                        <img src="<?= $linkimg2 ?>" alt="Product Thumnail">
                                    </div>
                                </div>
                                <div class="swiper-slide">
                                    <div class="product-details-small-img">
                                        <img src="<?= $linkimg3 ?>" alt="Product Thumnail">
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="pd-prev pd-nav-style"> <i class="ti-angle-up"></i></div>
                        <div class="pd-next pd-nav-style"> <i class="ti-angle-down"></i></div>
                    </div>
                    <div class="swiper-container product-details-big-img-slider-1 pd-big-img-style">
                        <div class="swiper-wrapper">
                            <div class="swiper-slide">
                                <div class="easyzoom-style">
                                    <div class="easyzoom easyzoom--overlay">
                                        <a href="<?= $linkimg ?>">
                                            <img src="<?= $linkimg ?>" alt="">
                                        </a>
                                    </div>
                                    <a class="easyzoom-pop-up img-popup" href="<?= $linkimg ?>">
                                        <i class="pe-7s-search"></i>
                                    </a>
                                </div>
                            </div>
                            <div class="swiper-slide">
                                <div class="easyzoom-style">
                                    <div class="easyzoom easyzoom--overlay">
                                        <a href="<?= $linkimg1 ?>">
                                            <img src="<?= $linkimg1 ?>" alt="">
                                        </a>
                                    </div>
                                    <a class="easyzoom-pop-up img-popup" href="<?= $linkimg1 ?>">
                                        <i class="pe-7s-search"></i>
                                    </a>
                                </div>
                            </div>
                            <div class="swiper-slide">
                                <div class="easyzoom-style">
                                    <div class="easyzoom easyzoom--overlay">
                                        <a href="<?= $linkimg2 ?>">
                                            <img src="<?= $linkimg2 ?>" alt="">
                                        </a>
                                    </div>
                                    <a class="easyzoom-pop-up img-popup" href="<?= $linkimg2 ?>">
                                        <i class="pe-7s-search"></i>
                                    </a>
                                </div>
                            </div>
                            <div class="swiper-slide">
                                <div class="easyzoom-style">
                                    <div class="easyzoom easyzoom--overlay">
                                        <a href="<?= $linkimg3 ?>">
                                            <img src="<?= $linkimg3 ?>" alt="">
                                        </a>
                                    </div>
                                    <a class="easyzoom-pop-up img-popup" href="<?= $linkimg3 ?>">
                                        <i class="pe-7s-search"></i>
                                    </a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-lg-6">
                <div class="product-details-content">
                    <h2><?= $ten_san_pham ?></h2>
                    <?php
                    if ($so_luong > 0) {
                    ?>
                        <div class="product-color product-color-active product-details-color">
                            <ul>
                                <li>Còn: <?= $so_luong ?> sản phẩm</li>
                            </ul>
                        </div>
                    <?php
                    } else {
                    ?>
                        <div class="product-color product-color-active product-details-color">
                            <h5 style="color: red;">Hết hàng (Xin lỗi vì sự bất tiện này)</h5><br>
                        </div>
                    <?php
                    }
                    ?>
                    <div class="product-color product-color-active product-details-color">
                        <ul>
                            <li>Đã bán: <?= $da_ban ?> sản phẩm</li>
                        </ul>
                    </div>
                    <div class="product-details-price">
                        <span class="new-price"><?= number_format($gia_san_pham, 0, ',', '.') ?> đ</span>
                    </div>
                    <?php
                    if ($so_luong > 0) {
                    ?>

                        <div class="product-details-action-wrap">

                            <div class="single-product-cart btn-hover">
                                <!-- <a href="#"><button type="submit" name="addtocart" class="product-action-btn-2" title="Add To Cart" value="Thêm vào giỏ hàng">Add To Cart </button></a> -->
                                <!-- <input type="submit" name="addtocart" class="product-action-btn-2" title="Add To Cart" value="Thêm vào giỏ hàng" style="width: 150px; height: 60px;"> -->
                                <button style="height: 59px;" data-id="<?= $id ?>" onclick="addtocart('<?= $id ?>', '<?= $ten_san_pham ?>', '<?= $gia_san_pham ?>')"><i class="pe-7s-cart"></i>Thêm vào giỏ hàng</button>
                            </div>
                            <div class="single-product-wishlist">
                                <a title="Wishlist" href="wishlist.html"><i class="pe-7s-like"></i></a>
                            </div>
                            <div class="single-product-compare">
                                <a title="Compare" href="#"><i class="pe-7s-shuffle"></i></a>
                            </div>
                        </div>
                    <?php
                    }
                    ?>
                    <div class="product-details-meta">
                        <ul>
                            <li><span class="title">Loại:</span>
                                <ul>
                                    <?php
                                    extract($danhmuc);
                                    ?>
                                    <li><a href="index.php?act=danhmuc&&id=<?= $id ?>"><?= $ten_danh_muc ?></a></li>
                                </ul>
                            </li>
                            <?php
                            if (isset($thongbao) && ($thongbao)) {
                                echo $thongbao;
                            }
                            ?>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<div class="description-review-area pb-85">
    <div class="container">
        <div class="description-review-topbar nav">
            <a class="active" data-bs-toggle="tab" href="#des-details1"> Mô tả </a>
            <a data-bs-toggle="tab" href="#des-details2" class=""> Thông tin </a>
            <a data-bs-toggle="tab" href="#des-details3" class=""> Bình luận </a>
        </div>
        <div class="tab-content">
            <div id="des-details1" class="tab-pane active">
                <div class="product-description-content text-center">
                    <p><?= $mo_ta_san_pham ?></p>
                    <!-- <p>Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Sed ut per unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo</p> -->
                </div>
            </div>
            <div id="des-details2" class="tab-pane">
                <div class="specification-wrap table-responsive">
                    <table>
                        <tbody>
                            <tr>
                                <td class="width1">Loại sách</td>
                                <?php
                                extract($danhmuc);
                                ?>
                                <td><?= $ten_danh_muc ?></td>
                            </tr>
                        </tbody>
                    </table>
                </div>
            </div>
            <div id="des-details3" class="tab-pane">
                <iframe src="view/khachhang/sanpham/binhluansanpham.php?idsp=<?= $idsp ?>" frameborder="0" width="100%" height="500px"></iframe>
            </div>
        </div>
    </div>
</div>
<div class="related-product-area pb-95">
    <div class="container">
        <div class="section-title-2 st-border-center text-center mb-75">
            <h2>Sản phẩm cùng loại</h2>
        </div>
        <div class="related-product-active swiper-container">
            <div class="swiper-wrapper">
                <?php
                if (isset($cungloai)) {
                    foreach ($cungloai as $sp) {
                        // var_dump($sp);
                        extract($sp);
                        $linkimg = 'view/img/' . $img_dai_dien;
                        $linksp = "index.php?act=chitietsanpham&&idsp=$id&&iddm=$iddm";
                ?>
                        <div class="swiper-slide">
                            <div class="product-wrap">
                                <div class="product-img img-zoom mb-25">
                                    <a href="<?= $linksp ?>">
                                        <img src="<?= $linkimg ?>" alt="" style="width: 250px; height: 300px;">
                                    </a>
                                    <div class="product-action-wrap">
                                    </div>
                                    <div class="product-action-2-wrap">                                       
                                        <button data-id="<?= $id ?>" onclick="addtocart('<?= $id ?>', '<?= $ten_san_pham ?>', '<?= $gia_san_pham ?>')" name="addtocart" class="product-action-btn-2" title="Thêm vào giỏ hàng"><i class="pe-7s-cart"></i>Thêm vào giỏ hàng</button>
                                    </div>
                                </div>
                                <div class="product-content">
                                    <h3><a href="<?= $linksp ?>"><?= $ten_san_pham ?></a></h3>
                                    <div class="product-price">
                                        <span class="new-price"><?= $gia_san_pham ?> đ</span>
                                    </div>
                                </div>
                            </div>
                        </div>

                <?php
                    }
                }
                ?>



            </div>
        </div>
    </div>
</div>
<link rel="stylesheet" href="addtocard.php">

<script src="https://code.jquery.com/jquery-3.7.1.min.js"></script>
<script>
    let totalProduct = document.getElementById('totalProduct');

    function addtocart(id, name, price) {
        console.log(id, name, price);
        // Sử dụng jQuery
        $.ajax({
            type: 'POST',
            // Đường dẫn tới tệp PHP xử lý dữ liệu
            url: './view/khachhang/sanpham/addtocard.php',
            data: {
                id: id,
                name: name,
                price: price,
            },
            success: function(response) {
                totalProduct.innerText = response;
                // alert('Bạn đã thêm sản phẩm vào giỏ hàng thành công!')
            },
            error: function(error) {
                console.log(error);
            }
        });
    }
</script>
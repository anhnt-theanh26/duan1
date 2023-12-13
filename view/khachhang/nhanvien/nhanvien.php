<div class="team-area pt-100 pb-70">
    <div class="container">
        <div class="section-title-2 st-border-center text-center mb-75" data-aos="fade-up" data-aos-delay="200">
            <h2>Nhân viên</h2>
        </div>
        <div class="row">
            <?php
            foreach ($nhanvien as $nv) {
                extract($nv);
                $linkimg = 'view/img/' . $img_nguoi_dung;
                $chucvu;
                if ($vai_tro == 1) {
                    $chucvu = 'ADMIN';
                } else {
                    $chucvu = 'Người bán hàng';
                }
            ?>
                <div class="col-lg-4 col-md-4 col-sm-4 col-12">
                    <div class="single-team-wrap text-center mb-30" data-aos="fade-up" data-aos-delay="200">
                        <img src="<?= $linkimg ?>" alt="">
                        <div class="team-info-position">
                            <div class="team-info">
                                <h3><?= $ten_nguoi_dung ?></h3>
                                <span><?= $chucvu ?></span><br>
                                <span><?= $sdt_nguoi_dung ?></span><br>
                                <span><?= $email_nguoi_dung ?></span><br>
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
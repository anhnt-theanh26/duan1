<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
        <div class="container-fluid">
            <div class="row mb-2">
                <div class="col-sm-6">
                    <h1>Thêm sản phẩm</h1>
                </div>
                <div class="col-sm-6">
                    <ol class="breadcrumb float-sm-right">
                        <li class="breadcrumb-item"><a href="#">Home</a></li>
                        <li class="breadcrumb-item active">Thêm sản phẩm</li>
                    </ol>
                </div>
            </div>
        </div><!-- /.container-fluid -->
    </section>

    <!-- Main content -->
    <section class="content">
        <div class="container-fluid">
            <div class="card-header">
                <h3 class="card-title">Thêm sản phẩm</h3>
            </div>
            <!-- index.php?act=addsp -->
            <form action="#" method="post" enctype="multipart/form-data">
                <div class="card-body">
                    <div class="form-group">
                        <label for="exampleInputEmail1">Tên sản phẩm</label>
                        <input name="tensanpham" type="text" class="form-control" id="exampleInputEmail1" placeholder="Tên sản phẩm">
                    </div>
                    <div class="form-group">
                        <label for="exampleInputEmail1">Giá sản phẩm</label>
                        <input name="giasanpham" type="text" class="form-control" id="exampleInputEmail1" placeholder="Giá sản phẩm">
                    </div>
                    <div class="form-group">
                        <label for="exampleInputEmail1">Số lượng sản phẩm</label>
                        <input name="soluongsanpham" type="number" value="1" class="form-control" id="exampleInputEmail1" placeholder="Số lượng sản phẩm">
                    </div>

                    <div class="form-group">
                        <label for="anhdaidien">Ảnh đại diện sản phẩm</label><br>
                        <input type="file" name="anhdaidien" id="anhdaidien">
                    </div>
                    <div class="form-group">
                        <label for="anh1">Ảnh 1</label><br>
                        <input type="file" name="anh1" id="anh1">
                    </div>
                    <div class="form-group">
                        <label for="anh2">Ảnh 2</label><br>
                        <input type="file" name="anh2" id="anh2">
                    </div>
                    <div class="form-group">
                        <label for="anh3">Ảnh 3</label><br>
                        <input type="file" name="anh3" id="anh3">
                    </div>
                    <div class="form-group">
                        <label for="exampleInputPassword1">Danh mục sản phẩm</label><br>
                        <select name="iddm" id="iddm">
                            <?php
                            foreach ($danhmuc as $dm) {
                                extract($dm);
                            ?>
                                <option value="<?= $id ?>"><?= $ten_danh_muc ?></option>
                            <?php
                            }
                            ?>
                        </select>
                    </div>
                    <div class="form-group">
                        <label for="exampleInputPassword1">Mô tả sản phẩm</label>
                        <textarea name="mota" id="mota" cols="30" rows="10"></textarea>
                    </div>
                </div>
                <!-- /.card-body -->

                <div class="card-footer">
                    <input type="submit" class="btn btn-primary" name="addsanpham" id="" value="Thêm sản phẩm">
                </div>
                <?php
                if (isset($thongbao) && ($thongbao) != "") {
                    echo $thongbao;
                }
                ?>
            </form>

    </section>
    <!-- /.content -->
</div>
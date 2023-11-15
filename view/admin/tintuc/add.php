<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
        <div class="container-fluid">
            <div class="row mb-2">
                <div class="col-sm-6">
                    <h1>Thêm tin tức</h1>
                </div>
                <div class="col-sm-6">
                    <ol class="breadcrumb float-sm-right">
                        <li class="breadcrumb-item"><a href="#">Home</a></li>
                        <li class="breadcrumb-item active">Thêm tin tức</li>
                    </ol>
                </div>
            </div>
        </div><!-- /.container-fluid -->
    </section>

    <!-- Main content -->
    <section class="content">
        <div class="container-fluid">
            <div class="card-header">
                <h3 class="card-title">Thêm tin tức</h3>
            </div>
            <form action="index.php?act=" method="post" enctype="multipart/form-data">
                <div class="card-body">
                    <div class="form-group">
                        <label for="tieude">Tiêu đề</label>
                        <input name="tieude" type="text" class="form-control" id="tieude" placeholder="Tên tin tức">
                    </div>
                    <div class="form-group">
                        <label for="mota">Nội dung</label>
                        <textarea name="mota" id="mota" cols="30" rows="10"></textarea>

                    </div>

                    <div class="form-group">
                        <label for="img">Img tin tức</label>
                        <input name="img" type="file" class="form-control" id="img">
                    </div>
                    <div class="form-group">
                        <label for="exampleInputPassword1">Danh mục tin tức</label><br>
                        <select name="iddm" id="">
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



                </div>
                <!-- /.card-body -->

                <div class="card-footer">
                    <input type="submit" class="btn btn-primary" name="themtintuc" id="" value="Thêm tin tức">
                </div>
            </form>

    </section>
    <!-- /.content -->
</div>
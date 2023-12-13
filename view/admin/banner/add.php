<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
        <div class="container-fluid">
            <div class="row mb-2">
                <div class="col-sm-6">
                    <h1>Thêm banner</h1>
                </div>
                <div class="col-sm-6">
                    <ol class="breadcrumb float-sm-right">
                        <li class="breadcrumb-item"><a href="index.php?act=home">Home</a></li>
                        <li class="breadcrumb-item active">Thêm banner</li>
                    </ol>
                </div>
            </div>
        </div><!-- /.container-fluid -->
    </section>

    <!-- Main content -->
    <section class="content">
        <div class="container-fluid">
            <div class="card-header">
                <h3 class="card-title">Thêm banner</h3>
            </div>
            <!-- index.php?act=addsp -->
            <form action="#" method="post" enctype="multipart/form-data">
                <div class="card-body">
                    <div class="form-group">
                        <label for="tenbanner">Tên banner</label>
                        <input name="tenbanner" type="text" class="form-control" id="tenbanner" placeholder="Tên banner">
                    </div>
                    <div class="form-group">
                        <label for="img">Ảnh banner</label><br>
                        <input type="file" name="img" id="img">
                    </div>
                    <div class="form-group">
                        <label for="link">Link banner</label>
                        <input name="link" type="text" class="form-control" id="link" placeholder="Link banner">
                    </div>

                </div>
                <!-- /.card-body -->

                <div class="card-footer">
                    <input type="submit" class="btn btn-primary" name="addbanner" id="" value="Thêm banner">
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
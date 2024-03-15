<!--sidebar end-->

<!-- **********************************************************************************************************************************************************
      MAIN CONTENT
      *********************************************************************************************************************************************************** -->
<!--main content start-->
<?php 
    // Ambil informasi dari $_GET['id_member']
    $id = $_GET['id_member'];
    // Ambil informasi login dan member dengan join dari fungsi member_edit
    $hasil = $lihat->member_edit($id);
?>

<a href="index.php?page=role" class="btn btn-primary mb-3"><i class="fa fa-angle-left"></i> Balik </a>
<h4>Edit Data</h4>
<?php if(isset($_GET['success'])){?>
<div class="alert alert-success">
    <p>Edit Data Berhasil !</p>
</div>
<?php }?>
<?php if(isset($_GET['remove'])){?>
<div class="alert alert-danger">
    <p>Hapus Data Berhasil !</p>
</div>
<?php }?>
<div class="card card-body">
    <div class="table-responsive">
        <table class="table table-striped">
            <form action="fungsi/edit/edit.php?role=edit" method="POST">
                <tr>
                    <td>ID Login</td>
                    <td><input type="text" readonly="readonly" class="form-control" value="<?php echo $hasil['id_login'];?>" name="id"></td>
                </tr> 
            
                <tr>
                    <td>Username</td>
                    <td><input type="password" class="form-control" value="<?php echo $hasil['user'];?>" name="user"></td>
                </tr>
                <tr>
                    <td>Password</td>
                    <td><input type="text" class="form-control" value="<?php echo $hasil['pass'];?>" name="pass"></td>
                </tr>
                <!-- Informasi dari tabel member -->
                <tr>
                    <td>Id Member</td>
                    <td><input type="text" class="form-control" value="<?php echo $hasil['id_member'];?>" name="id_member"></td>
                </tr>
                <tr>
                    <td>Nama Member</td>
                    <td><input type="text" class="form-control" value="<?php echo $hasil['nm_member'];?>" name="nm_member"></td>
                </tr>
                <tr>
                    <td>Telepon</td>
                    <td><input type="text" class="form-control" value="<?php echo $hasil['telepon'];?>" name="telepon"></td>
                </tr>
                <tr>
                    <td>Email</td>
                    <td><input type="email" class="form-control" value="<?php echo $hasil['email'];?>" name="email"></td>
                </tr>
                <tr>
                    <td>NIK</td>
                    <td><input type="text" class="form-control" value="<?php echo $hasil['NIK'];?>" name="NIK"></td>
                </tr>
                <tr>
                    <td></td>
                    <td><button class="btn btn-primary"><i class="fa fa-edit"></i> Update Data</button></td>
                </tr>
            </form>
        </table>
    </div>
</div>

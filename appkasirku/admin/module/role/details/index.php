<?php 
	$id = $_GET['role'];
	$hasil = $lihat -> role_edit($id);
?>
<a href="index.php?page=role" class="btn btn-primary mb-3"><i class="fa fa-angle-left"></i> Balik </a>
<h4>Details Barang</h4>
<?php if(isset($_GET['success'])){?>
<div class="alert alert-success">
	<p>Tambah Data Berhasil!</p>
</div>
<?php }?>
<?php if(isset($_GET['success'])){?>
<div class="alert alert-success">
	<p>Tambah Data Berhasil !</p>
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
			<tr>
				<td>ID Login</td>
				<td><?php echo $hasil['id_login'];?></td>
			</tr>
			<tr>
				<td>Username</td>
				<td><?php echo $hasil['user'];?></td>
			</tr>
			<tr>
				<td>Password</td>
				<td><?php echo $hasil['pass'];?></td>
			</tr>
			<tr>
				<td>ID Member</td>
				<td><?php echo $hasil['id_member'];?></td>
			</tr>
			<tr>
				<td>Nama Member</td>
				<td><?php echo $hasil['nm_member'];?></td>
			</tr>
			<tr>
				<td>telepon</td>
				<td><?php echo $hasil['telepon'];?></td>
			</tr>
			<tr>
				<td>Email</td>
				<td><?php echo $hasil['email'];?></td>
			</tr>
			<tr>
				<td>NIK</td>
				<td><?php echo $hasil['NIK'];?></td>
			</tr>
		
		</table>
	</div>
</div>
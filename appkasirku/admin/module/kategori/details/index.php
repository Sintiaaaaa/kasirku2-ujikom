<?php 
    // Mengambil ID kategori dari parameter GET
	$id = $_GET['kategori'];
	// Mengambil informasi kategori dari fungsi yang sesuai
	$kategori_info = $lihat -> kategori_info($id);
?>
<a href="index.php?page=kategori" class="btn btn-primary mb-3"><i class="fa fa-angle-left"></i> Balik </a>
<h4>Details Kategori</h4>
<?php if(isset($_GET['success-stok'])){?>
<div class="alert alert-success">
	<p>Tambah Stok Berhasil !</p>
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
				<td>ID Kategori</td>
				<td><?php echo $kategori_info['id_kategori'];?></td>
			</tr>
			<tr>
				<td>Nama Kategori</td>
				<td><?php echo $kategori_info['nama_kategori'];?></td>
			</tr>
			<tr>
				<td>Tanggal Input</td>
				<td><?php echo $kategori_info['tgl_input'];?></td>
			</tr>
		</table>
	</div>
</div>

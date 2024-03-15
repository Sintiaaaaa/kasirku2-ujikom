 <!--sidebar end-->

 <!-- **********************************************************************************************************************************************************
      MAIN CONTENT
      *********************************************************************************************************************************************************** -->
 <!--main content start-->
 <?php 
	$id = $_GET['kategori'];
	$hasil = $lihat -> kategori_edit($id);
?>
 <a href="index.php?page=kategori" class="btn btn-primary mb-3"><i class="fa fa-angle-left"></i> Balik </a>
 <h4>Edit kategori</h4>
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
			<form action="fungsi/edit/edit.php?kategori=edit" method="POST">
            <tr>
					<td>ID Kategori</td>
					<td><input type="text" readonly="readonly" class="form-control" value="<?php echo $hasil['id_kategori'];?>"
							name="id"></td>
				</tr>
				<tr>
					<td>Kategori</td>
					<td>
						<select name="kategori" class="form-control">
							<option value="<?php echo $hasil['id_kategori'];?>"><?php echo $hasil['nama_kategori'];?></option>
							<option value="#">Pilih Kategori</option>
							<?php  $kat = $lihat -> kategori(); foreach($kat as $isi){ 	?>
							<option value="<?php echo $isi['nama_kategori'];?>"><?php echo $isi['nama_kategori'];?></option>
							<?php }?>
						</select>
					</td>
				</tr>
			
				<tr>
			
					<td>Tanggal Input</td>
					<td><input type="text" readonly="readonly" class="form-control" value="<?php echo  date("j F Y, G:i");?>"
							name="tgl_input"></td>
				</tr>
				<tr>
					<td></td>
					<td><button class="btn btn-primary"><i class="fa fa-edit"></i> Update Data</button></td>
				</tr>
			</form>
		</table>
	</div>
</div>
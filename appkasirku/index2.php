<?php 

	@ob_start();
	session_start();

	if(!empty($_SESSION['user'])){
		require 'config.php';
		include $view;
		$lihat = new view($config);
		$toko = $lihat -> toko();
		//  user
			include 'user/template/header.php';
			include 'user/template/sidebar.php';
				if(!empty($_GET['page'])){
					include 'user/module/'.$_GET['page'].'/index2.php';
				}else{
					include 'user/template/home.php';
				}
			include 'user/template/footer.php';
		// end user
	}else{
		echo '<script>window.location="login.php";</script>';
		exit;
	}
?>


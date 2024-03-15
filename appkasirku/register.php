<?php
    require 'config.php';

    if (isset($_POST['register'])) {
        $user = strip_tags($_POST['user']);
        $pass = strip_tags($_POST['pass']);
        $role = strip_tags($_POST['role']);
        $nm_member = strip_tags($_POST['nm_member']);
        $alamat_member = strip_tags($_POST['alamat_member']);
        $telepon = strip_tags($_POST['telepon']);
        $email = strip_tags($_POST['email']);
        $NIK = strip_tags($_POST['NIK']);

        // Check if user already exists
        $check_user = $config->prepare("SELECT * FROM member WHERE user = ?");
        $check_user->execute([$user]);

        if ($check_user->rowCount() > 0) {
            echo '<script>alert("User already exists");history.go(-1);</script>';
        } else {
            // Insert new member
            $insert_member = $config->prepare("INSERT INTO member (nm_member, alamat_member, telepon, email, NIK) VALUES (?, ?, ?, ?, ?)");
            $insert_member->execute([$nm_member, $alamat_member, $telepon, $email, $NIK]);
            $last_insert_id = $config->lastInsertId();

            // Insert login credentials for the new user
            $insert_login = $config->prepare("INSERT INTO login (id_member, user, pass, role) VALUES (?, ?, md5(?), ?)");
            $insert_login->execute([$last_insert_id, $user, $pass, $role]);

            echo '<script>alert("Registration successful");window.location="login.php";</script>';
        }
    }
?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
    <title>Register - Kasirku</title>
    <!-- Custom fonts for this template-->
    <link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
    <link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">
    <!-- Custom styles for this template-->
    <link href="sb-admin/css/sb-admin-2.min.css" rel="stylesheet">
</head>

<body class="bg-gradient-primary">
    <div class="container">
        <!-- Outer Row -->
        <div class="row justify-content-center">
            <div class="col-md-5 mt-5">
                <div class="card o-hidden border-0 shadow-lg my-5">
                    <div class="card-body p-0">
                        <!-- Nested Row within Card Body -->
						<div class="p-5">
							<div class="text-center">
								<h4 class="h4 text-gray-900 mb-4"><b>Register to Kasir Ku</b></h4>
							</div>
							<form class="user" method="POST">
								<div class="form-group">
									<input type="text" class="form-control form-control-user" name="user" placeholder="Nama" required>
								</div>
								<div class="form-group">
									<input type="pass" class="form-control form-control-user" name="pass" placeholder="Kata Sandi" required>
								</div>
								<!-- <div class="form-group">
									<select class="form-control" name="role" required>
										<option value="">Select Role</option>
										<option value="admin">Admin</option>
										<option value="user">User</option>
									</select>
								</div> -->
                                <div class="form-group">
									<input type="text" class="form-control form-control-user" name="nm_member" placeholder="Nama Lengkap" required>
								</div>
                                <div class="form-group">
									<input type="text" class="form-control form-control-user" name="alamat_member" placeholder="Alamat" required>
								</div>
                                <div class="form-group">
									<input type="text" class="form-control form-control-user" name="telepon" placeholder="No Telepon" required>
								</div>
                                <div class="form-group">
									<input type="email" class="form-control form-control-user" name="email" placeholder="Email" required>
								</div>
                                <div class="form-group">
									<input type="text" class="form-control form-control-user" name="NIK" placeholder="NIK" required>
								</div>
                                <div class="form-group">
									<select class="form-control" name="role" required>
										<option value="">Select Role</option>
										<!-- <option value="admin">Admin</option> -->
										<option value="user">Kasir</option>
									</select>
								</div>
								<button class="btn btn-primary btn-user btn-block" name="register" type="submit">Register Akun</button>
							</form>
							<hr>
							<div class="text-center">
								<a class="small" href="login.php">Sudah punya Akun? Login!</a>
							</div>
						</div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Bootstrap core JavaScript-->
    <script src="sb-admin/vendor/jquery/jquery.min.js"></script>
    <script src="sb-admin/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
    <!-- Core plugin JavaScript-->
    <script src="sb-admin/vendor/jquery-easing/jquery.easing.min.js"></script>
    <!-- Custom scripts for all pages-->
    <script src="sb-admin/js/sb-admin-2.min.js"></script>
</body>

</html>

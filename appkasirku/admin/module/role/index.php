<?php
// Ubah query SQL untuk mengambil informasi dari tabel login dan member dengan join
$sql = "SELECT login.id_login, login.user, login.pass, member.id_member, member.nm_member, member.telepon, member.email, member.NIK 
        FROM login 
        INNER JOIN member 
        ON login.id_member = member.id_member";
$row = $config->prepare($sql);
$row->execute();
$results = $row->fetchAll(PDO::FETCH_ASSOC);
?>

<!-- Tabel untuk menampilkan data -->
<table class="table table-bordered table-striped table-sm">
    <thead>
        <tr style="background:#DFF0D8;color:#333;">
            <th>ID Login</th>
            <th>Username</th>
            <th>Password</th>
            <th>ID Member</th>
            <th>Nama Member</th>
            <th>Telepon</th>
            <th>Email</th>
            <th>NIK</th>
            <th>Aksi</th>
        </tr>
    </thead>
    <tbody>
        <?php foreach($results as $row) { ?>
        <tr>
            <td><?php echo $row['id_login']; ?></td>
            <td><?php echo $row['user']; ?></td>
            <td><?php echo $row['pass']; ?></td>
            <td><?php echo $row['id_member']; ?></td>
            <td><?php echo $row['nm_member']; ?></td>
            <td><?php echo $row['telepon']; ?></td>
            <td><?php echo $row['email']; ?></td>
            <td><?php echo $row['NIK']; ?></td>
            <td>
                <!-- Tautan untuk mengedit data -->
                <a href="index.php?page=role/edit&role=<?php echo $isi['id_login'];?>"><button
                                        class="btn btn-warning btn-xs">Edit</button></a>
                <!-- Form untuk menghapus data -->
                <form action="hapus.php" method="post" style="display: inline;">
                    <input type="hidden" name="id_login" value="<?php echo $row['id_login']; ?>">
                    <button type="submit" class="btn btn-danger btn-xs" onclick="return confirm('Hapus Data?');">Hapus</button>
                </form>
            </td>
        </tr>
        <?php } ?>
    </tbody>
</table>

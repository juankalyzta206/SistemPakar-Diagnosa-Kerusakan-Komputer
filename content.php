<?php
if ($module == ""){
include "modul/welcome.php";
}elseif ($module == "tentang"){
include "modul/tentang.php";
}elseif ($module == "diagnosa"){
include "modul/diagnosa/diagnosa.php";
}elseif ($module == "kerusakan"){
include "modul/kerusakan/kerusakan.php";
}elseif ($module == "post"){
include "modul/post/post.php";
}elseif ($module == "admin"){
include "modul/admin/admin.php";
}elseif ($module == "gejala"){
include "modul/gejala/gejala.php";
}elseif ($module == "pengetahuan"){
include "modul/pengetahuan/pengetahuan.php";
}elseif ($module == "password"){
include "modul/password/password.php";
}elseif ($module == "berita"){
include "modul/berita.php";
}elseif ($module == "riwayat"){
include "modul/riwayat/riwayat.php";
}elseif ($module == "riwayat-detail"){
include "modul/riwayat/detail.php";
}elseif ($module == "formlogin"){
include "modul/formlogin.php";
}
?>
<?php

$con=new mysqli("localhost","root","","SalesWeb");
$st_check=$con->prepare("SELECT * FROM users WHERE mobile=? AND password=?");
$st_check->bind_param("ss", $_POST["mobile"], $_POST["password"]);
$st_check->execute();
$rs=$st_check->get_result();
if ($rs->num_rows==0)
{
    echo "0";
}
 else {
    $access_token = bin2hex(openssl_random_pseudo_bytes(64));
    $st=$con->prepare("UPDATE users SET access_token=? WHERE mobile=?");
    $st->bind_param("ss", $access_token, $_POST["mobile"]);
    $st->execute();
    echo $access_token;

    // echo "1";
}
<?php

$con=new mysqli("localhost","id17934349_root","123456789@GoGo","id17934349_salesweb");
$st=$con->prepare("DELETE FROM temporary_order WHERE mobile=?");
$st->bind_param("s", $_GET["mobile"]);
$st->execute();
<?php

$con=new mysqli("localhost","root","","SalesWeb");
$st=$con->prepare("DELETE FROM temporary_order WHERE mobile=?");
$st->bind_param("s", $_GET["mobile"]);
$st->execute();
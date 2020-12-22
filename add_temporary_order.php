<?php

$con=new mysqli("localhost","root","","SalesWeb");
$st_check=$con->prepare("insert into temporary_order values (?,?,?)");
$st_check->bind_param("sii", $_GET["mobile"], $_GET["item_id"], $_GET["quantity"]);
$st_check->execute();
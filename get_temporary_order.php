<?php

$con=new mysqli("localhost","root","","SalesWeb");
$st=$con->prepare("SELECT id,name,price,quantity,mobile FROM temporary_order INNER JOIN items ON items.id=temporary_order.item_id WHERE mobile=?");
$st->bind_param("s", $_GET["mobile"]);
$st->execute();
$rs=$st->get_result();
$arr=array();
while($row=$rs->fetch_assoc())
{
    array_push($arr,$row);
}

echo json_encode($arr);
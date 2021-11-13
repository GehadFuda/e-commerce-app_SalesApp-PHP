<?php

$con=new mysqli("localhost","id17934349_root","123456789@GoGo","id17934349_salesweb");
$st=$con->prepare("SELECT * FROM temporary_order WHERE mobile=?");
$st->bind_param("s", $_GET["mobile"]);
$st->execute();
$rs=$st->get_result();

$st2=$con->prepare("INSERT INTO bill(mobile) VALUES(?)");
$st2->bind_param("s", $_GET["mobile"]);
$st2->execute();

$st4=$con->prepare("SELECT max(bill_no) AS billno FROM bill WHERE mobile=?");
$st4->bind_param("s", $_GET["mobile"]);
$st4->execute();
$rs2=$st4->get_result();
$row_max=$rs2->fetch_assoc();

while($row=$rs->fetch_assoc())
{
    $st3=$con->prepare("INSERT INTO bill_details VALUES(?,?,?)");
    $st3->bind_param("iii", $row_max["billno"], $row["item_id"], $row["quantity"]);
    $st3->execute();
}

$st5=$con->prepare("DELETE FROM temporary_order WHERE mobile=?");
$st5->bind_param("s", $_GET["mobile"]);
$st5->execute();

echo $row_max["billno"];
<?php

$con=new mysqli("localhost","id17934349_root","123456789@GoGo","id17934349_salesweb");
$st=$con->prepare("SELECT price,quantity FROM items INNER JOIN bill_details ON items.id=bill_details.item_id WHERE bill_details.bill_no=?");
$st->bind_param("i", $_GET["bill_no"]);
$st->execute();
$rs=$st->get_result();
$total=0;
while($row=$rs->fetch_assoc())
{
    $total += $row["price"]*$row["quantity"];
}

$st2=$con->prepare("UPDATE bill SET total=? WHERE bill_no=?");
$st2->bind_param("di", $total, $_GET["bill_no"]);
$st2->execute();

echo $total;
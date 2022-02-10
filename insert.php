<?php
require 'config/config.php';
include 'db.php';

//print_r($_POST);

if (isset($_POST['submit']))    
{
    $sql="insert into markers(name, address, lat, lng, type) values('" .$_POST['name']."','".$_POST['address']. "','".$_POST['lat']."','".$_POST['lng']."','".$_POST['type']."')";
    $ret=sql("map", $sql);
    header("location:view.php");
}

$smarty->display('insert.tpl');
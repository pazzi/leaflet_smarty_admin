<?php
require 'config/config.php';
include 'db.php';

$sql="select * from markers where id='".$_GET['id']."'";
$ret=sql("map",$sql);
//print_r($ret);
while($res=mysqli_fetch_array($ret))
{
    $data[]=$res;
}


if(isset($_POST['submit'])){
$sql="update markers set name='".$_POST['name']."', address='".$_POST['address']."', lat='".$_POST['lat']."', lng='".$_POST['lng']."', type='".$_POST['type']."' where id='".$_POST['id']."'";
sql("map",$sql);
header("location:view.php");
}

if(isset($_POST['cancel'])){
    header("location:view.php");
    }
    

$smarty->assign('marca',$data);
$smarty->display('edit.tpl');
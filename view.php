<?php
require 'config/config.php';
include 'db.php';


$sql="select * from markers order by name";
$return=sql("map",$sql);
while($res=mysqli_fetch_array($return))
{
    $data[]=$res;
}

if(isset($_GET['del'])){
    $sql="delete from markers where id='".$_GET['del']."' ";
    sql("map", $sql);
    header("location:view.php");
}

$smarty->assign('marcas', $data);
$smarty->display('view.tpl');

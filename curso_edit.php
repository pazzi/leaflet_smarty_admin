<?php
require 'config/config.php';
include 'db.php';

$sql="select * from fic order by descricao";
$return=sql("map", $sql);
while($res=mysqli_fetch_array($return))
{
    $fic[]=$res;
}


$sql="select * from curso where id='".$_GET['id']."'";
$ret=sql("map",$sql);
//print_r($ret);
while($res=mysqli_fetch_array($ret))
{
    $data[]=$res;
}


if(isset($_POST['submit'])){
$sql="update curso set nome='".$_POST['nome']."', categoria='".$_POST['categoria']."', nivel='".$_POST['nivel']."',
                                fic='".$_POST['fic']."', eja='".$_POST['eja']."', duracao='".$_POST['duracao']. "' 
                                where id='".$_POST['id']."'";
sql("map",$sql);
header("location:curso_view.php");
}

if(isset($_POST['cancel'])){
    header("location:curso_view.php");
}
    

$smarty->assign('curso',$data);
$smarty->assign('fics', $fic);
$smarty->display('curso_edit.tpl');
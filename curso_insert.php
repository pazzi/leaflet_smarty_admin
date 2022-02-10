<?php
require 'config/config.php';
include 'db.php';

//print_r($_POST);
$sql="select * from fic order by descricao";
$return=sql("map", $sql);
while($res=mysqli_fetch_array($return))
{
    $fic[]=$res;
}


if (isset($_POST['submit']))    
{
    $sql="insert into curso(nome, categoria, nivel, fic, eja, duracao) values('" .$_POST['nome']."','".$_POST['categoria']. "','"
    .$_POST['nivel']."','".$_POST['fic']."','".$_POST['eja']."','".$_POST['duracao']."')";
    $ret=sql("map", $sql);
    header("location:curso_view.php");
}

if(isset($_POST['cancel'])){
    header("location:curso_view.php");
}

$smarty->assign('fics', $fic);
$smarty->display('curso_insert.tpl');
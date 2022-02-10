<?php
require 'config/config.php';
include 'db.php';

if(isset($_POST['submit'])){
    $param=$_POST['Fcidade'].":::".$_POST['Ffic'];
    header("location:cad_campus_curso.php?parm=$param");
}

$sql="select id, name from markers order by name";
$return=sql("map", $sql);
while($res=mysqli_fetch_array($return))
{
    $cidade[]=$res;
}

$sql="select id, descricao from fic order by descricao";
$return=sql("map", $sql);
while($res=mysqli_fetch_array($return))
{
    $fic[]=$res;
}

$smarty->assign('fics', $fic);
$smarty->assign('cidades', $cidade);
$smarty->display('campus_curso.tpl');
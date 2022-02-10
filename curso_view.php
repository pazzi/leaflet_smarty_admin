<?php
require 'config/config.php';
include 'db.php';

$sql="select curso.id, curso.nome, curso.categoria, fic.descricao, curso.eja, curso.duracao from curso,fic where fic.id=curso.fic order by fic.descricao, curso.nome";
$return=sql("map",$sql);
while($res=mysqli_fetch_array($return))
{
    $data[]=$res;
}

if(isset($_GET['del'])){
    $sql="delete from curso where id='".$_GET['del']."' ";
    sql("map", $sql);
    header("location:curso_view.php");
}

$smarty->assign('cursos', $data);
$smarty->display('curso_view.tpl');
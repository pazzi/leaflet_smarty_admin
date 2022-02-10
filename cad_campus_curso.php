<?php
require 'config/config.php';
include 'db.php';

if(isset($_GET['parm'])){
$param=explode(":::",$_GET['parm']);
$id_cidade=$param[0];
$id_fic=$param[1];
$sql="select name from markers where id='".$id_cidade."'";
$result=sql("map", $sql);
while($row = $result->fetch_assoc()) {
    $cidade=$row["name"];
  }

$sql="select descricao from fic where id='".$id_fic."'";
$result=sql("map", $sql);
while($row = $result->fetch_assoc()) {
    $modalidade=$row["descricao"];
  }
}
if(isset($_POST['submit'])){
    $id_cidade=$_POST['id_cidade'];
    $id_fic=$_POST['id_fic'];
 
    if($_POST['cadastrar']!=0){
        $sql="insert into tab_curso(id_cidade, id_curso) values('".$_POST['id_cidade']."', '".$_POST['cadastrar']."')";
        sql("map", $sql);
    }

    if($_POST['remover']!=0){
        $sql="delete from tab_curso where id_cidade='".$_POST['id_cidade']."' and id_curso='".$_POST['remover']."'";
        sql("map", $sql);
    }
    $param=$id_cidade.":::".$id_fic;
    header("location:cad_campus_curso.php?parm=$param");
}

$sql="select m.name, c.nome, f.descricao
from markers m, curso c, fic f, tab_curso t 
where m.id=t.id_cidade and c.id=t.id_curso and c.fic=f.id and m.id=".$id_cidade." order by c.nome";
$return=sql("map", $sql);

while($res=mysqli_fetch_array($return))
{
    $lista[]=$res;
}

$sql="select * FROM curso c WHERE c.fic=".$id_fic." and c.id not in(SELECT c.id FROM curso c, markers m, fic f, tab_curso t WHERE t.id_cidade=m.id and t.id_curso=c.id and f.id=c.fic and f.id=".$id_fic." and m.id=".$id_cidade.")";
$return=sql("map", $sql);
while($res=mysqli_fetch_array($return))
{
    $curso_cad[]=$res;
}


$sql="SELECT c.id, c.nome FROM curso c, markers m, fic f, tab_curso t WHERE t.id_cidade=m.id and t.id_curso=c.id and f.id=c.fic and f.id='".$id_fic. "' and m.id='".$id_cidade."'";
$return=sql("map", $sql);
while($res=mysqli_fetch_array($return))
{
    $curso_rem[]=$res;
}

$smarty->assign('lista', $lista);
$smarty->assign('cidade', $cidade);
$smarty->assign('modalidade', $modalidade);
$smarty->assign('curso_cad', $curso_cad);
$smarty->assign('curso_rem', $curso_rem);
$smarty->assign('id_cidade', $id_cidade);
$smarty->assign('id_fic', $id_fic);
$smarty->display('cad_campus_curso.tpl');


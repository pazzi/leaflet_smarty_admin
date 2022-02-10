{include file="header.tpl"}
{include file="nav.tpl"}


<h2>Cursos</h2>
<a href="curso_insert.php">Inserir Novo</a>
<table class="table table-striped">
<tr>
<td>Nome</td>
<td>categoria</td>
<td>nivel</td>
<td>fic</td>
<td>eja</td>
<td>duração</td>
<td>Action</td>
</tr>
{section name=i loop=$cursos}
<tr>
<td>{$cursos[i].nome} </td>
<td>{$cursos[i].categoria} </td>
<td>{$cursos[i].nivel} </td>
<td>{$cursos[i].descricao} </td>
<td>{$cursos[i].eja} </td>
<td>{$cursos[i].duracao} </td>
<td><a href="curso_edit.php?id={$cursos[i].id}">Update</a> | <a href="curso_view.php?del={$cursos[i].id}">Delete</a></td>
{/section}

</tr>
</table>
{include file="footer.tpl"}
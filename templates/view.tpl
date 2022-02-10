{include file="header.tpl"}
{include file="nav.tpl"}

<h2>Campus/Marcadores</h2>
<a href="insert.php">Inserir Novo</a>
<table class="table table-striped">
<tr>
<td>Name</td>
<td>Address</td>
<td>Latitude</td>
<td>Longitude</td>
<td>Type</td>
<td>Action</td>
</tr>
{section name=i loop=$marcas}
<tr>
<td>{$marcas[i].name} </td>
<td>{$marcas[i].address} </td>
<td>{$marcas[i].lat} </td>
<td>{$marcas[i].lng} </td>
<td>{$marcas[i].type} </td>
<td><a href="edit.php?id={$marcas[i].id}">Update</a> | <a href="view.php?del={$marcas[i].id}">Delete</a></td>
{/section}

</tr>
</table>
{include file="footer.tpl"}
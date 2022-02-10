{include file="header.tpl"}

<div class="container mt-3">
<h4>Editar - Campus (Marcadores)</h4>

<form method="POST" action="edit.php">
<input type="hidden" name="id" value="{$marca[0].id}">

<div class="mb-3 mt-3">
  Nome:
  <input type="text" class="form-control" name="name" value="{$marca[0].name}">
</div>

<div class="mb-3 mt-3">
  Endereço:
  <input type="text" class="form-control" name="address" value="{$marca[0].address}">
</div>

<div class="mb-3 mt-3">
  Latitude:
  <input type="text" class="form-control" name="lat" value="{$marca[0].lat}">
</div>

<div class="mb-3 mt-3">
   Longitude
  <input type="text" class="form-control" name="lng" value="{$marca[0].lng}">
</div>

<div class="mb-3 mt-3">
  Tipo
  <input type="text" class="form-control" name="type" value="{$marca[0].type}">
</div>
 
  <input type="submit" class="btn btn-primary" name="submit" value="Editar">
  <input type="submit" class="btn btn-warning" name="cancel" value="Cancelar">

</form> 
</div>

{include file="footer.tpl"}
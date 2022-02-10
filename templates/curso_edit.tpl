{include file="header.tpl"}
<div class="container mt-3">

<h2>Editar Curso</h2>

<form method="POST" action="curso_edit.php">
<input type="hidden" name="id" value="{$curso[0].id}">

<div class="mb-3 mt-3">
  Nome:
  <input type="text" class="form-control" name="nome" value="{$curso[0].nome}">
</div>

<div class="mb-3 mt-3">
  Categoria:
  <input type="text"  class="form-control" name="categoria" value="{$curso[0].categoria}">
</div>

<div class="mb-3 mt-3">
  Nível:
  <input type="text" class="form-control"  name="nivel" value="{$curso[0].nivel}">
</div>

<div class="mb-3 mt-3">
  FIC:
  <select class="form-select" name="fic">
  {section name=i loop=$fics}
  {if $curso[0].fic == $fics[i].id }
  <option value="{$fics[i].id}" selected>{$fics[i].descricao}</option>
  {else}
    <option value="{$fics[i].id}">{$fics[i].descricao}</option>
  {/if}
  {/section}
  </select>
</div>

<div class="mb-3 mt-3">
  EJA:
  <input type="text"  class="form-control" name="eja" value="{$curso[0].eja}">
</div>

<div class="mb-3 mt-3">
  Duração:
  <input type="text" class="form-control"  name="duracao" value="{$curso[0].duracao}">
</div>

  <input type="submit" class="btn btn-primary"  name="submit" value="Editar">
  <input type="submit" class="btn btn-warning" name="cancel" value="Cancelar">

</form> 

</div>
{include file="footer.tpl"}
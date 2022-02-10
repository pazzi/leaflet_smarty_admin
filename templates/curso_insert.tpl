{include file="header.tpl"}

<div class="container mt-3">

<h2>Cursos - novo</h2>

<form method="POST" action="curso_insert.php">
<div class="mb-3 mt-3">

  Nome:
  <input type="text"  class="form-control" name="nome">
<div class="mb-3 mt-3">
  Categoria:
  <input type="text"  class="form-control" name="categoria">
</div>

<div class="mb-3 mt-3">
   Nível:
  <input type="text"  class="form-control" name="nivel">
</div>

<div class="mb-3 mt-3">
   FIC:
  <select class="form-select" name="fic">
  {section name=i loop=$fics}
      <option value="{$fics[i].id}">{$fics[i].descricao}</option>
  {/section}
  </select>
</div>

<div class="mb-3 mt-3">
   EJA:
  <input type="text"  class="form-control" name="eja">
</div>

<div class="mb-3 mt-3">
    Duração:
  <input type="text"  class="form-control" name="duracao">
</div> 

  <input type="submit" class="btn btn-primary" name="submit" value="submit">
  <input type="submit" class="btn btn-warning" name="cancel" value="Cancelar">

</form> 

</div>
{include file="footer.tpl"}

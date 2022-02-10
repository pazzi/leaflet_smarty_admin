{include file="header.tpl"}
<div class="container mt-3">

<h2>Escolher Campus e modalidade para inserir/remover:</h2>

<form method="POST" action="campus_curso.php">

<div class="mb-3 mt-3">
  Campus:
  <select class="form-select" name="Fcidade">
  {section name=i loop=$cidades}
      <option value="{$cidades[i].id}">{$cidades[i].name}</option>
  {/section}
  </select>
</div>

<div class="mb-3 mt-3">
  Modalidade:
  <select class="form-select" name="Ffic">
  {section name=j loop=$fics}
      <option value="{$fics[j].id}">{$fics[j].descricao}</option>
  {/section}
  </select>
</div>

  <input type="submit" class="btn btn-primary"  name="submit" value="Escolher">
  <input type="submit" class="btn btn-warning" name="cancel" value="Cancelar">

</form> 

</div>
<script>

</script>
{include file="footer.tpl"}
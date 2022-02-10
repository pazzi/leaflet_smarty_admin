{include file="header.tpl"}
{include file="nav.tpl"}

<div class="container mt-3">
<div class="row">
<div class="col">
<h4>Campus - {$cidade}</h4>
<h5>Cursos disponíveis:</h5>
<table class="table table-striped">
    <thead>
      <tr>
        <th>Curso</th>
        <th>Modalidade</th>
      </tr>
    </thead>
    <tbody>
      {section name=i loop=$lista}
            <tr>
            <td> {$lista[i].nome} </td><td>{$lista[i].descricao}</td>
            </tr>
      {/section}
    </tbody>
  </table>

</div>
<div class="col">
<h5>Operações com cursos na modalidade:</h5>
<div class="alert alert-success">{$modalidade}</div>
<form method="post" action="cad_campus_curso.php">
<input type="hidden" name="id_cidade" value="{$id_cidade}">
<input type="hidden" name="id_fic" value="{$id_fic}">
<div class="input-group mb-3">
<select class="form-select"  name="cadastrar">
<option value="0">Informe o curso </option>
{section name=j loop=$curso_cad}
      <option value="{$curso_cad[j].id}">{$curso_cad[j].nome} </option>
{/section}
</select>
<input type="submit" class="btn btn-primary"  name="submit" value="Cadastrar">
</div>
<div class="input-group mb-3">
<select class="form-select"  name="remover">
<option value="0">Informe o curso </option>
{section name=j loop=$curso_rem}
      <option value="{$curso_rem[j].id}">{$curso_rem[j].nome} </option>
{/section}
</select>
<input type="submit" class="btn btn-danger"  name="submit" value="Excluir">
</div>
<div class="input-group mb-3">
</form>
</div>
</div>
</div>
{include file="footer.tpl"}

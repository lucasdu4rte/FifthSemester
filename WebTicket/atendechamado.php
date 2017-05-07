<?php
include_once('includes/conexao.php');
include_once('includes/cabecalho.php');
?>

<?php
$sql = "SELECT F.nome, F.telefone, F.ramal, C.descricao, C.observacao, D.descricao FROM funcionario as F inner join chamado AS C inner join departamento AS D ON F.id AND c.id = D.id";
$result = @mysqli_query($dbc, $sql);


//exibicao dos itens
$reg = mysqli_fetch_array($result, MYSQLI_ASSOC);
$func_nome = $reg['f.nome'];


echo $func_nome;
?>

<?php
include_once('includes/rodape.php');
?>

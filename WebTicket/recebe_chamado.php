<?php

include_once('includes/conexao.php');
include_once('includes/cabecalho.php');

/* Atribuindo conteudo do formulario Cad_chamado para as variaveis via POST */
$motivochamado = $_POST['motivochamado'];
$id_solicitante = $_POST['solicitantechamado'];
$descchamado = $_POST['descchamado'];
$obschamado = $_POST['obschamado'];
$data_inc = date("d/m/y");

$sql = "INSERT INTO chamado( id_solicitante, data_inc, descricao, observacao, id_tipo)VALUES($id_solicitante, '$data_inc','$descchamado','$obschamado', '$motivochamado')";

// Execução da Query com tramento de erro
$r = mysqli_query($dbc, $sql) or die(mysqli_error($dbc) . '');


$sql = "SELECT F.nome, F.telefone, F.ramal, C.descricao, C.observacao, D.descricao FROM funcionario as F inner join chamado AS C inner join departamento AS D ON F.id AND c.id = D.id";
$result = @mysqli_query($dbc, $sql);


mysqli_close($dbc);
include_once('includes/rodape.php');
?>

  


   

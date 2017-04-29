<?php
ini_set('display_errors', 1);
include_once('includes/conexao.php');


$nome_func = $_POST['nome_func'];
$nasc_func = $_POST['nasc_func'];
$tel_func = $_POST['tel_func'];
$cel_func = $_POST['cel_func'];
$ramal_func = $_POST['ramal_func'];
$email_func = $_POST['email_func'];
$dpto_func = $_POST['dpto_func'];

// SQL de inserção
$sql = "INSERT INTO funcionario (nome, data_nasc, email, telefone, celular, ramal, id_departamento) VALUES('$nome_func','$nasc_func','$email_func', '$tel_func', '$cel_func', '$ramal_func', $dpto_func)";

$arr_resposta = array();
        
// Execução da Query com tramento de erro
$r = mysqli_query($dbc,$sql);

if ($r) {
    $arr_resposta[status] = 'OK';
    $arr_resposta[mensagem] = 'Seu cadastro foi efetuado com sucesso!';
    
}else {
    $arr_resposta[status] = 'ERRO';
    $arr_resposta[mensagem] = 'Houve um problema.<br>Por favor checar suas informações e tentar novamente.';
}
echo $arr_resposta;
echo json_encode($arr_resposta);

mysqli_close($dbc);

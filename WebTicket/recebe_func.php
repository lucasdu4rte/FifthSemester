<?php

include_once('includes/conexao.php');
include_once('includes/cabecalho.php');


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
$r = mysqli_query($dbc, $sql) or die(mysqli_error($dbc).'');

if ($r) {
    $arr_resposta['status'] = 'OK';
    $arr_resposta['mensagem'] = 'Seu cadastro foi efetuado com sucesso!';
} else {
    $arr_resposta['status'] = 'ERRO';
    $arr_resposta['mensagem'] = 'Erro ao tentar efetuar seu cadastro.<br>Por favor checar suas informações e tentar novamente.';
}

if ($arr_resposta['status'] == 'OK') {
    $tipo_alerta = "alert-success";
} else {
    $tipo_alerta = "alert-danger";
}
?>
<div class="container">
    <div class="alert <?= $tipo_alerta; ?>" role="alert">
    <?php 
    echo $arr_resposta['mensagem']; 
    echo '</div>';
    if ($arr_resposta['status'] == 'OK') {
            echo '<br><p>Você será redirecionado ao painel de usuário...</p>';
            //header("Location: painel.php");
        }else {
            echo '<br><p>Você será redirecionado a página de cadastro.</p>';
            //header("Location: javascript://history.go(-1)"); 
        }
    ?>
</div>
<?php
mysqli_close($dbc);

include_once('includes/rodape.php');
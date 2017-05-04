    <?php
 
        
        include_once('includes/conexao.php');
        include_once('includes/cabecalho.php');
        
   
        
    /*Atribuindo conteudo do formulario Cad_chamado para as variaveis via POST*/
    $motivochamado = $_POST['motivochamado'];    
    $solicitantechamado = $_POST['solicitantechamado'];
    $descchamado = $_POST['descchamado'];
    $obschamado = $_POST['obschamado'];
    
    $sql = "INSERT INTO chamado( id_solicitante, data_inc, descricao, observacao, id_tipo)VALUES('$solicitantechamado',NOW(),'$descchamado','$obschamado', '$motivochamado')";
    
    // Execução da Query com tramento de erro
    $r = mysqli_query($dbc, $sql) or die(mysqli_error($dbc).'');    
        
        
        
     
      mysqli_close($dbc);

      include_once('includes/rodape.php'); 
        

      
     
       
       ?>

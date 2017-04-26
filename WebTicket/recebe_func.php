	<?php
		
			include_once('includes/conexao.php');
			
			$nome_func = $_POST['nome_func'];
			$nasc_func = $_POST['nasc_func'];
			$tel_func = $_POST['tel_func'];
			$cel_func = $_POST['cel_func'];
			$ramal_func = $_POST['ramal_func'];
			$email_func = $_POST['email_func'];		
			
			//SQL de inserção
			$query = "INSERT INTO funcionario(nome, data_nasc, telefone) VALUES('$nome_func','$nasc_func', '$tel_func', '$cel_func', '$ramal_func', '$email_func')";
			
			//Resultado recebe bool(V ou F) se deu certo true, se deu errado false
            $resultado = @mysqli_query($dbc, $query);
		
			if ($resultado)
			{
                    echo "Você foi cadastrado com sucesso!";
            }else
			{
                    echo "Error - Não foi possivel realizar seu cadastro.";
            }

            //fecha a  conexão com o banco
            mysqli_close($dbc);
	
		
	?>
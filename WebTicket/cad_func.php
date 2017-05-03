<?php
        include_once('includes/conexao.php');
        include_once('includes/cabecalho.php');
?>

<div class="container">
    <form name="cad_func" id="form-cad" method="post" action="recebe_func.php">
        <h1>Cadastro de Funcionários</h1><br/>
        <div class="row">
            <div class="form group col-md-4">
                <label>Nome</label>
                <input type="text" name="nome_func" id="nome_func" maxlength="40" class="form-control" placeholder="Digite o seu nome..." value="FuncioTeste" />	
            </div>
            <div class="form group col-md-4">
                <label>Data de Nascimento</label>
                <input type="text" name="nasc_func" id="nasc_func" maxlength="40" class="form-control" placeholder="00/00/0000" value="11121995"/>	
            </div>
        </div>
        <div class="row">
            <div class="form group col-md-4">
                <label>Telefone</label>
                <input type="text" name="tel_func" id="tel_func" maxlength="40" class="form-control" placeholder="(00) 0000-0000" value="1933333333"/>	
            </div>
            <div class="form group col-md-4">
                <label>Celular</label>
                <input type="text" name="cel_func" id="cel_func" maxlength="40" class="form-control" placeholder="(00) 0000-0000" value="19999999999"/>	
            </div>		
        </div>
        <div class="row">
            <div class="form group col-md-4">
                <label>Ramal</label>
                <input type="text" name="ramal_func" id="ramal_func" maxlength="40" class="form-control" placeholder="Nº do Ramal" value="3333"/>	
            </div>
        </div>
        <div class="row">
            <div class="form group col-md-4">
                <label>Departamento</label>
                <select class="form-control" name="dpto_func" id="dpto_func">
                <?php
                $sql = "SELECT * FROM departamento";

                $result = mysqli_query($dbc, $sql);
                echo '<option value="" selected>Selecione...</option>';
                foreach ($result as $row) {
                    
                    echo "<option value='" . $row['id'] . "' >" . $row['descricao'] . "</option>";
                }

                ?>
                </select>	
            </div>
        </div>
        <div class="row">
            <div class="form group col-md-8">
                <label>Email</label>
                <input type="email" name="email_func" id="email_func" maxlength="40" class="form-control" placeholder="Digite o seu endereço de e-mail..." value="FuncioTeste@gmail.com"/>
            </div>
        </div><br/>
        <input type="hidden" name="enviou" value="True" />
        <div id="actions" align="left">
            <a href="#"> 
                <input type="reset" class="btn btn-default" value="Cancelar"/>
            </a>
            <input id="btn_enviar" type="submit" class="btn btn-primary submit" value="Cadastrar"/>
        </div>			
    </form>
    
</div> 

<!--Inclusao do JQuery -->
<script src="js/jquery-3.2.0.min.js"></script>
<!--Inclusao do Plugin JQ Mask-->
<script src="js/jquery.maskedinput.min.js"></script>


<script type="text/javascript">
    $(function($){
        $("#nasc_func").mask("99/99/9999");
        $("#cel_func").mask("(99) 99999-9999");
        $("#tel_func").mask("(99) 9999999");
        
        $("#form-cad").validate();
    }); 
    
    
</script>
	
<?php
include_once('includes/rodape.php');
?>
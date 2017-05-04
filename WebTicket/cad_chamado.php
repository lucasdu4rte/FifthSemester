    <?php
        include_once('includes/conexao.php');
        include_once('includes/cabecalho.php');  
    ?>

    <div class="container">
        <form name="cad_chamado" id="cad_chamado" method="post" action="recebe_chamado.php">
            <h1>Solicitação de chamados</h1><br/>
            <div class="row">
                <div class="col-md-2">
                    <label>Motivo do chamado</label><br/>
                    <select class="form-control" name="motivochamado" id="motivochamado">
                        
                    <?php
                        $sql = "SELECT * from tipo";
                        $result = mysqli_query($dbc, $sql);
                        echo '<option value="" selected>Selecione...</option>';
                        foreach ($result as $row) 
                        {
                        echo "<option value='" . $row['id'] . "' >" . $row['descricao'] . "</option>";
                        }
                    ?>
                        
                    </select>    
                </div>             
            </div> 
            <div class="row">
                <div class="col-md-4">
                    <label>Solicitante:</label><br/>
                    <select class="form-control" name="solicitante_chamado" id="solicitante_chamado">

                    <?php
                        $sql = "SELECT * from funcionario";
                        $result = mysqli_query($dbc, $sql);
                        echo '<option value="" selected>Selecione...</option>';
                        foreach ($result as $row) 
                        {
                        echo "<option value='" . $row['id'] . "' >" . $row['nome'] . "</option>";
                        }
                    ?>

                    </select>    
                </div>
            </div> 
            <div class="row">
                <div class="col-md-4">
                    <label>Descrição do chamado</label><br/>
                    <textarea rows="5" cols="50" maxlenght="500" name="desc_chamado" id="desc_chamado" placeholder="Quanto mais detalhado for a descrição mais rápido será a solução..."></textarea>
                </div>
            </div> 
            <div class="row">
                <div class="col-md-4">
                    <label>Observações:</label><br/>
                    <textarea rows="5" cols="50" maxlenght="500" name="obs_chamado" id="obs_chamado" placeholder="Ex: Fazer Backup ..."></textarea>
                </div>
            </div> 
            <input type="hidden" name="enviou" value="True" />
            <div id="actions" align="left">
                <a href="#"> 
                    <input type="reset" class="btn btn-default" value="Cancelar"/>
                </a>
                <input id="btn_enviar" type="submit" class="btn btn-primary submit" value="Solicitar Chamado"/>
            </div>			
        </form>    
    </div>

    <?php
    include_once('includes/rodape.php');
    ?>



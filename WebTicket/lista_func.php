<?php
    ini_set("display_errors", 1);
    include_once('includes/conexao.php');
    include_once('includes/cabecalho.php');
?>

<div class="container">
    <h2>Lista de Funcionário</h2>
    <table class="table table-striped" id="mytable">
        <thead>
            <tr>
                <th>Código</th>
                <th>Nome</th>
                <th>Data de Nascimento</th>
                <th>E-mail</th>
                <th>Telefone</th>
                <th>Ramal</th>
                <th>Celular</th>
                <th>Departamento</th>
                <th>Opções</th>
            </tr>
        </thead>
        <tbody>
            <?php
            
            $sql = "SELECT FUNC.id as cod_func, FUNC.nome, FUNC.data_nasc, FUNC.email, FUNC.telefone, FUNC.celular, FUNC.ramal, FUNC.id_departamento, DEPA.id, DEPA.descricao FROM funcionario AS FUNC INNER JOIN departamento AS DEPA ON DEPA.id = FUNC.id_departamento WHERE status = 's'";
            
            $result = mysqli_query($dbc, $sql);
            
            foreach ($result as $row) {
                echo "<tr>
                        <td>".$row['cod_func']."</td>
                        <td>".$row['nome']."</td>
                        <td>".$row['data_nasc']."</td>
                        <td>".$row['email']."</td>
                        <td>".$row['telefone']."</td>
                        <td>".$row['ramal']."</td>
                        <td>".$row['celular']."</td>
                        <td>".$row['descricao']."</td>
                        <td> <ul class='list-inline'> <li> <a href='cad_func.php?cod='".$row['cod_func']."' class='btn btn-warning btn-xs'>Editar</a> </li> <li> <a href='exc_func.php?cod='".$row['cod_func']."' class='btn btn-danger btn-xs'>Excluir</a> </li> </ul> </td>
                    </tr>";
                }
            ?>
        </tbody>
    </table>
</div> 

<!--Inclusao do JQuery -->
<script src="js/jquery-3.2.0.min.js"></script>
<!--Inclusao do Plugin JQ Mask-->
<script src="js/jquery.maskedinput.min.js"></script>
<!--Inclusao do Plugin JQuery DataTables-->

<script src="https://cdn.datatables.net/1.10.15/js/jquery.dataTables.min.js"></script>
<script src="https://cdn.datatables.net/1.10.15/js/dataTables.bootstrap.min.js"></script>


<script type="text/javascript">
    $(function($){
        $('#mytable').DataTable({
            "language": {url : "https://cdn.datatables.net/plug-ins/1.10.15/i18n/Portuguese-Brasil.json"}
        });
    }); 
    
    
</script>
	
<?php
include_once('includes/rodape.php');
?>
	<?php
		include_once('includes/cabecalho.php');
	?>

	<div class="container">
		<form name="contato">
			<div class="row">
				<div class="form group col-md-3">
					<label>Nome:</label>
					<input type="text" name="nome" id="nome" maxlength="40" class="form-control" placeholder="Digite o seu nome..." required />			
				</div>
				<div class="form group col-md-3">
					<label>Email:</label>
					<input type="email" name="email" id="email" maxlength="40" class="form-control" placeholder="Digite o seu Email..." required />			
				</div>
			</div>
			<div class="row">
				<div class="form group col-md-3">
					<label>Telefone:</label>
					<input type="text" name="telefone" id="telefone" maxlength="40" class="form-control" placeholder="(00) 0000-0000" required />			
				</div>
				<div class="form group col-md-3">
					<label>Celular:</label>
					<input type="text" name="telefone" id="telefone" maxlength="40" class="form-control" placeholder="(00) 00000-0000" required />			
				</div>
			</div>
			<div class="texto-contato">			
					<textarea rows="14" cols="76" maxlenght="500" placeholder="Escreva aqui sua mensagem..."></textarea>			
			</div>
			<div class="row">
				<div class="form group col-md-4">
					<input type="submit"class="btn btn-primary submit" id="btn_enviar" value="Enviar"/>
					<input type="reset"class="btn btn-warning" id="btn_enviar" value="Limpar"/>
				</div>
			</div>			
		</form>
	</div>	
			
	   
	<?php
		include_once('includes/rodape.php');
	?>

	
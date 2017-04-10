<!-- Start: wrapper -->
<div class="col-md-4 col-md-offset-3 loginBlock">
	<div class="row">
		<div class="intro animated slideInDown">
			<img class="centered animated tada" height="150" src="<?php echo $template; ?>/img/logo.png">
			<h3>Welcome to <a href="https://github.com/roshed/Sitehell/">Sitehell</a></h3>
		</div>
		<form action="?action=login" method="POST">
		  <div class="form-group">
		    <label for="loginInput">Nazwa użytkownika</label>
		    <input type="text" name="login" class="form-control" id="loginInput" placeholder="Wprowadź login">
		  </div>
		  <div class="form-group">
		    <label for="passwordInput">Hasło</label>
		    <input type="password" name="password" class="form-control" id="passwordInput" placeholder="Wprowadź hasło">
		  </div>
		  <button type="submit" class="btn btn-default btn-lg btn-block">Zaloguj</button>
		</form>
		<?php 
		if(isset($_GET['error'])){
			echo '<p class="text-danger animated rollIn">Logowanie nie powiodło się.</p>';
		}
		?>
	</div>
</div><!-- End: col -->

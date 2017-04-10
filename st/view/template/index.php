<!-- Start: wrapper -->
<div class="row">
	<div class="container">
	<section class="col-md-2">
		<div class="boxLeft">
			<div class="userInfo">
				<img src="uploads/avatars/<?php echo $mysql->select('users WHERE id='.$_SESSION['login'],'Avatar'); ?>" alt="User Avatars" height="30">
				<p><?php echo $mysql->select('users WHERE id='.$_SESSION['login'],'Nick'); ?></p>
				<a class="btn btn-link" data-toggle="dropdown" aria-haspopup="true" aria-expanded="true"><span class="caret"></span></a>
				<ul class="dropdown-menu">
				  <li class="btn btn-link"><a href="?action=logout">Wyloguj</a></li>
				</ul>
			</div>
			<div class="introLeft">
				<a href="#" class="animated centered"><img class="centered animated tada" height="85" src="<?php echo $template; ?>/img/logo.png"></a>
				<h5>Panel administracyjny</h5>
			</div>
			<div class="menu">
				<a href="#" class="function_click" id="reset" data-toggle="tooltip" alt="article" title="Artykuły" data-placement="right"><icon class="centered glyphicon glyphicon-indent-left"></icon></a>
				<a href="#" class="function_click" id="reset" data-toggle="tooltip" alt="template" title="Template" data-placement="right"><icon class="centered glyphicon glyphicon-bookmark"></icon></a>
				<a href="#" class="function_click" id="reset" data-toggle="tooltip" alt="config" title="Ustawienia" data-placement="right"><icon class="centered glyphicon glyphicon-wrench"></icon></a>
		
			</div> 
		</div>
	</section>
	<section class="rightContent col-md-9">
		<div id="content">
			<div class="col-md-6">
			<?php
			if(isset($_GET['error']) AND $_GET['error']==0){
				echo '<div class="alert alert-success animated rollIn" role="alert">Dane zostały zapisane.</div>';
			}
			?>
			<img src="../webpage/uTech.jpg" alt="uTech - Created by Sitehell" class="img-thumbnail">
			<div class="alert alert-success" role="alert"><?php echo $mysql->select('options WHERE id=1','Title'); ?></div>
			</div>
		</div>
	</section>
	</div>
</div><!-- End: wrapper -->
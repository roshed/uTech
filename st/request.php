<?php 
if(isset($_GET['action'])){
	switch ($_GET['action']) {
		case 'login':
			if($account->log($_POST['login'],$_POST['password']) == 1){
				header("location: http://localhost/sitehell/st/?view=index");
			} else {
				header("location: http://localhost/sitehell/st/?view=login&error=0");
			}
		break;
		case 'newArticle':
			$article->add($_POST['title'],$_POST['code']);
			header("location: http://localhost/sitehell/st/?view=index&error=0");

		break;
		case 'editArticle':
			$article->edit(intval($_GET['id']),$_POST['title'],$_POST['code']);
			header("location: http://localhost/sitehell/st/?view=index&error=0");
		break;
		case 'newUtility':
			$utility->add($_POST['title'],$_POST['code'],$_POST['kolejnosc']);
			header("location: http://localhost/sitehell/st/?view=index&error=0");
		break;
		case 'editUtility':

			header("location: http://localhost/sitehell/st/?view=index&error=".$utility->edit(intval($_GET['id']),$_POST['title'],$_POST['code'],$_POST['kolejnosc']));
		break;
		case 'editConfig':
			$config->edit($_POST['title'],$_POST['authors']);
			header("location: http://localhost/sitehell/st/?view=index&error=0");
		break;
		case 'logout':
			$account->relog();
		break;
	}
}
?>
<?php
session_start();
require_once('options.php');
require_once('engine.php');
require_once('load.php');
if(isset($_SESSION['login'])){
	$tag = md5("tag55554");
	if(isset($_POST['load'])){
		$load = $_POST['load'];
		$todo = explode("-", $load);
		if($todo[0] == "removeArticle" OR $todo[0] == "editArticle" OR $todo[0] == "removeUtility" OR $todo[0] == "editUtility"){
			switch ($todo[0]) {
				case 'removeArticle':
				$article->remove($todo[1]);
				break;

				case 'editArticle':
				include('ajax/editView.php');
				break;
				
				case 'removeUtility':
				$utility->remove($todo[1]);
				break;

				case 'editUtility':
				include('ajax/editViewUtil.php');
				break;

				default:
					break;
			}
		} else {
		include('ajax/'.$load.'.php');
		}
	}
}

?>
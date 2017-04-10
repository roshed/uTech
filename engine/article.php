<?php
class article extends engine{
	function select($what,$lang){
		$what = mysqli_real_escape_string($this->handle,$what);
		$lang = mysqli_real_escape_string($this->handle,$lang);
		$code = $what.'_'.$lang;
		$select = mysqli_query($this->handle,"SELECT tresc FROM `article` WHERE `nazwa`='$code'");
		$tmp = mysqli_fetch_array($select);


		return htmlspecialchars_decode($tmp['tresc']);
	}
}//End class
$article = new article($loginBaza,$passBaza,$tableBaza,$ipBaza);
?>
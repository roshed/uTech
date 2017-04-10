<?php
class config extends engine{
	function editView($id){
		$id = intval($id);
		$select = mysqli_query($this->handle,"SELECT * FROM `options` WHERE `id` = $id");
		$tmp = mysqli_fetch_array($select);
		$string = '
		<form method="POST" action="?action=editConfig">
		  <div class="form-group">
		    <label for="title">Tytuł strony</label>
			<input type="text" name="title" class="form-control" id="title" placeholder="Podaj tytuł" value="'.$tmp['Title'].'">
			</div>
		  <div class="form-group">
		    <label for="title">Autorzy</label>
			<input type="text" name="authors" class="form-control" id="title" placeholder="Podaj autorów" value="'.$tmp['Authors'].'">
			</div>
			<p>Wersja Sitehell v'.$tmp['vSitehell'].'</p>
		  <button type="submit" class="btn btn-primary">Zapisz</button>
		</form>
		';
		return $string;
	}
	function edit($title,$authors){
		$title = mysqli_real_escape_string($this->handle,$title);
		$authors = mysqli_real_escape_string($this->handle,$authors);

		$update = mysqli_query($this->handle,"UPDATE `options` SET `Title`='$title',`Authors`='$authors' WHERE `id` = 1");
		return 1;
	}
}//End class
$config = new config($loginBaza,$passBaza,$tableBaza,$ipBaza);
?>
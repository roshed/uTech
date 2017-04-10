<?php
class article extends engine{
	function listArticle(){
		$select = mysqli_query($this->handle,"SELECT * FROM `article`");
		$string = '';
		while($tmp = mysqli_fetch_array($select))
		{
			$string .= '		  
			<li type="button" class="list-group-item">'.$tmp['nazwa'].' 
			<a href="#" class="function_click" alt="removeArticle-'.$tmp['id'].'"><icon class="glyphicon glyphicon-remove"></icon> Usuń</a> 
			<a href="#" class="function_click" alt="editArticle-'.$tmp['id'].'"><icon class="glyphicon glyphicon-edit"></icon> Edytuj</a> 
			</li>';
		}
		return $string;
	}
	function add($title, $code)
	{
		$title = mysqli_real_escape_string($this->handle,$title);
		$code = mysqli_real_escape_string($this->handle,$code);
		$query = mysqli_query($this->handle,"INSERT INTO `article`(`nazwa`, `tresc`) VALUES ('$title','$code')");
	}
	function remove($id)
	{
		$id = intval($id);
		$remove = mysqli_query($this->handle,"DELETE FROM `article` WHERE `article`.`id` = $id");
	}
	function editView($id){
		$id = intval($id);
		$select = mysqli_query($this->handle,"SELECT * FROM `article` WHERE `id` = $id");
		$tmp = mysqli_fetch_array($select);
		$string = '
		<form method="POST" action="?action=editArticle&id='.$tmp['id'].'">
		  <div class="form-group">
		    <label for="title">Tytuł</label>
			<input type="text" name="title" class="form-control" id="title" placeholder="Podaj tytuł" value="'.$tmp['nazwa'].'">
			</div>
			<textarea id="code" name="code">'.$tmp['tresc'].'</textarea>
		  <button type="submit" class="btn btn-primary">Zapisz</button>
		</form>
		';
		return $string;
	}
	function edit($id,$title,$code){
		$id = intval($id);
		$title = mysqli_real_escape_string($this->handle,$title);
		$code = mysqli_real_escape_string($this->handle,$code);
		$update = mysqli_query($this->handle,"UPDATE `article` SET `nazwa`='$title',`tresc`='$code' WHERE `id`=$id");
		
	}
}//End class
$article = new article($loginBaza,$passBaza,$tableBaza,$ipBaza);
?>
<?php
class utility extends engine{
	function listUtility(){
		$select = mysqli_query($this->handle,"SELECT * FROM `utility`");
		$string = '';
		while($tmp = mysqli_fetch_array($select))
		{
			$string .= '		  
			<li type="button" class="list-group-item">'.$tmp['nazwa'].' 
			<a href="#" class="function_click" alt="removeUtility-'.$tmp['id'].'"><icon class="glyphicon glyphicon-remove"></icon> Usuń</a> 
			<a href="#" class="function_click" alt="editUtility-'.$tmp['id'].'"><icon class="glyphicon glyphicon-edit"></icon> Edytuj</a> 
			</li>';
		}
		return $string;
	}
	function add($title, $code, $number)
	{
		$title = mysqli_real_escape_string($this->handle,$title);
		$code = mysqli_real_escape_string($this->handle,$code);
		$number = intval($number);
		$query = mysqli_query($this->handle,"INSERT INTO `utility`(`nazwa`, `tresc`, `kolejnosc`) VALUES ('$title','$code',$number)");
	}
	function remove($id)
	{
		$id = intval($id);
		$remove = mysqli_query($this->handle,"DELETE FROM `utility` WHERE `utility`.`id` = $id");
	}
	function editView($id){
		$id = intval($id);
		$select = mysqli_query($this->handle,"SELECT * FROM `utility` WHERE `id` = $id");
		$tmp = mysqli_fetch_array($select);
		$string = '
		<form method="POST" action="?action=editUtility&id='.$tmp['id'].'">
		  <div class="form-group">
		    <label for="title">Tytuł</label>
			<input type="text" name="title" class="form-control" id="title" placeholder="Podaj tytuł" value="'.$tmp['nazwa'].'">
			</div>
			<div class="form-group">
				<input type="text" name="kolejnosc" class="form-control" id="kolejnosc" placeholder="Podaj kolejność" value="'.$tmp['kolejnosc'].'">
			</div>
			<textarea id="code" class="form-control">'.$tmp['tresc'].'</textarea>
			<input type="text" name="code" class="code" style="display:none;" val="'.$tmp['tresc'].'">
		  <button type="submit" class="btn btn-primary">Zapisz</button>
		</form>
		';
		return $string;
	}
	function edit($id,$title,$code,$kolejnosc){
		$id = intval($id);
		$title = mysqli_real_escape_string($this->handle,$title);
		$code = mysqli_real_escape_string($this->handle,$code);
		$kolejnosc = intval($kolejnosc);

		$update = mysqli_query($this->handle,"UPDATE `utility` SET `nazwa`='$title',`tresc`='$code',`kolejnosc`='$kolejnosc' WHERE `utility`.`id` = `$id`");
		return 1;
	}
}//End class
$utility = new utility($loginBaza,$passBaza,$tableBaza,$ipBaza);
?>
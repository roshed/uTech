<?php
class account extends engine{
	function log($nick, $passwd)//Logowanie, sprawdzanie czy konto istnieje.
	{
			if($_POST){
			$zapytanie = mysqli_query($this->handle,"SELECT id FROM users WHERE Nick = '".mysqli_real_escape_string($this->handle,$nick)."' AND Password = '".mysqli_real_escape_string($this->handle,md5($passwd))."' LIMIT 1");
			if(mysqli_num_rows($zapytanie) == 0)
			{
				return "0";
			}
			else
			{
				$zapytanie_array = mysqli_fetch_array($zapytanie);
				$_SESSION['login'] = $zapytanie_array['id'];
				$_SESSION['zalogowany'] = 1;
				header('location: index.php');
				return "1";
			}
		}
	}//end log()
	function relog()//wylogowywanie
	{
		unset($_SESSION['zalogowany']);
		unset($_SESSION['login']);
		header('location: ./index.php');
	}//End relog()
}//End class
$account = new account($loginBaza,$passBaza,$tableBaza,$ipBaza);
?>
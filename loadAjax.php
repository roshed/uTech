<?php
session_start();
require_once('options.php');
require_once('engine.php');
require_once('load.php');
echo $article->select($_POST['load'],$_SESSION['lang']); ?>
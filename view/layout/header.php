<!DOCTYPE html>
<html lang="<?php echo $_SESSION['lang'];?>">
  <head>
    <title><?php echo $mysql->select('options WHERE id=1','Title'); ?></title>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
    <meta name="author" content="<?php echo $mysql->select('options WHERE id=1','Authors'); ?>">
    <script src="https://use.typekit.net/odg4xrx.js"></script>
    <script>try{Typekit.load({ async: true });}catch(e){}</script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/Swiper/3.4.1/css/swiper.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/3.5.2/animate.min.css">
    <link rel="stylesheet" href="<?php echo $template;?>/assets/style.css">
    <link rel="icon" href="<?php echo $template;?>/assets/img/favicon.ico"> 
  </head>
  <body>
      <header class="header">
      <div class="header__container container"><a href="#"><img class="header__logo animated lightSpeedIn" src="<?php echo $template;?>/assets/img/logo.png" width="270"></a>
        <nav class="header__nav">
<?php echo $article->select('header',$_SESSION['lang']); ?>
        </nav>
        <div class="header__burger"><span></span><span></span><span></span></div>
      </div>
    </header>
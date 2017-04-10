<section class="landing animated" id="landing">
      <div class="left" id="left">
        <div class="landing__contentWrap animated jello">
        <?php echo $article->select('title',$_SESSION['lang']); ?>
        </div>
        <div id="dispInfo" >

        </div>
      </div>
      <div class="right clip-this">
      <?php echo $article->select('Rightbox',$_SESSION['lang']); ?>

        <!-- this lets Firefox display the angle -->
        <svg class="clip-svg" style="display: block;height: 0px;">
          <defs>
            <clipPath id="swipe__clip-path" clipPathUnits="objectBoundingBox">
              <polygon style="width: 100%;" points="0.2 0, 1 0, 1 1, 0 1"></polygon>
            </clipPath>
          </defs> 
        </svg>
      </div>
 
 <a class="landing__scrollDown" href="#info">
          <div class="landing__circle"><span></span></div>
          <p>SCROLL</p></a>
    </section>
    <section class="info" id="info">
      <div class="container" id="navbarPoint">
<?php echo $article->select('info',$_SESSION['lang']); ?>
      </div>
    </section>
    <section class="moreInfo" id="moreInfo">
      <div class="container">
        <div class="moreInfo__row">
          <div class="moreInfo__col">
<?php echo $article->select('moreInfo',$_SESSION['lang']); ?>
          </div>
          <div class="moreInfo__col">
            <div class="imagePlace">
              <img src="<?php echo $template;?>/assets/img/obrazek.jpg" class="img-responsiv scroll_ef" alt="Uzależnienie technologiczne">
            </div>
          </div>
        </div>
      </div>
    </section>
    <section class="footer" id="contact">
      <div class="container">
        <div class="footer__row">
          <div class="footer__col"><a class="footer__circle" href="https://pastebin.com/kXPvJDT5">
          <?php echo $article->select('footer_moreInfo',$_SESSION['lang']); ?>

            <div class="authors">
              <a href="https://github.com/roshed" alt="Mariusz Kauczor"><div class="authors__img scroll_ef" style="background-image: url('https://avatars1.githubusercontent.com/u/5806255?v=3&s=460');"></div></a>
              <a href="#" alt="Dariusz Chrubasik"><div class="authors__img scroll_ef" style="background-image: url('https://scontent-cdg2-1.xx.fbcdn.net/v/t1.0-9/16106015_1212052898890206_6622822433982720381_n.jpg?oh=82b020763bb1847a0b6d4d1abf3777f1&oe=594D856B');"></div></a>
            </div>


        <?php echo $article->select('contact',$_SESSION['lang']); ?>
        </div>
        <div class="footer__rowCopy">
          <div class="footer__copy">
            <img src="<?php echo $template;?>/assets/img/logo2.png" alt="uTech - Uzależnienie technologiczne" width="166">
            <p>Copyright ©2017 uTech. All rights reserved.</p>

          </div>
          <div class="footer__realization">
            <p>Zrealizowane przez:</p><a href="https://github.com/roshed" alt="Strona wykonana przez Sitehell"><img src="<?php echo $template;?>/assets/img/favicon.png" alt="Logo Sitehell" height="30"></a>
            <a href="?lang=PL" alt="Język Polski"><img src="https://upload.wikimedia.org/wikipedia/commons/thumb/e/e9/Flag_of_Poland_%28normative%29.svg/250px-Flag_of_Poland_%28normative%29.svg.png" width="50"></a>
            <a href="?lang=EN" alt="Język Angielski"><img src="http://www.rdinvest.eu/en/assets/images/flaga_en.gif" width="50"></a>
          </div>
        </div>
      </div>
    </section>




    <section class="formSection">
      <div class="formSection__body"><span class="formSection__btn hideForm-js"></span>
      <?php echo $article->select('popup',$_SESSION['lang']); ?>
        <div class="imagePlaceSecond">
          <div class="authors__img scroll_ef" style="background-image: url('<?php echo $template;?>/assets/img/obrazek2.jpg');"></div>
        </div>   
      </div>
    </section>

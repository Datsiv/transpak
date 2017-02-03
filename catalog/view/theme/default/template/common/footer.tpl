
 <link href="catalog/view/theme/default/stylesheet/footer.css" rel="stylesheet">
 
<footer class="my_footer">
    <div class="col-sm-12 center-cont">
        <div class="footer-touch_mob">
                <?php echo $findTouch; ?>
        </div>
        <div class=" col-sm-8 col-md-8 first-cont">
            <div class="footer-touch">
              <img class="img_text_foot_touch_pos text_foot_2" src="/image/touch_pos.png">
              <span class="spa_text"><?php echo $findTouch; ?></span>
            </div>
            <div class=" foter-email">
                <a class="foter-email" href="mailto:<?php echo $findEmail; ?>"><?php echo $findEmail; ?></a>
            </div>
        </div>
        <div  class="col-sm-4 col-md-4 second-cont">
                <div class="footer-telef"> 
                  <?php echo $findTelef; ?>
                </div>
                <div class="foter-dodat">
                    <i><?php echo $findDodat; ?></i>
                </div>
        </div>
        <div class=" foter-email">

        </div>
        <div class=" foter-email_mob">
            <a class="foter-email_mob" href="mailto:<?php echo $findEmail; ?>">E-mail:<?php echo $findEmail; ?></a>
        </div>
        <div class="col-xs-12 all-secure">
            © 2008 - 2016. ИнтерТрансПак. Все права защищены.
        </div>
    </div>
</footer>


</body>
</html>
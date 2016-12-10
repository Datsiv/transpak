
 <link href="catalog/view/theme/default/stylesheet/footer.css" rel="stylesheet">
 
<footer class="my_footer">
    <div class="col-sm-12 center-cont">
        <div class="footer-touch_mob">
                <?php echo $findTouch; ?>
        </div>
        <div class=" col-sm-8 col-md-9 first-cont">
            <div class="footer-touch">
              <img src="http://transpak.dev/image/touch_pos.png">
                <?php echo $findTouch; ?>
            </div>
            <div class=" foter-email">
                <?php echo $findEmail; ?>
            </div>
        </div>
        <div  class="col-sm-4 col-md-3 second-cont">
                <div class="footer-telef">
                    
                  <?php echo $findTelef; ?>
                </div>
                <div class="foter-dodat">
                  <?php echo $findDodat; ?>
                </div>
        </div>
        <div class=" foter-email_mob">
                <?php echo $findEmail; ?>
        </div>
        <div class="col-xs-12 all-secure">
            © 2008 - 2016. ИнтерТрансПак. Все права защищены.
        </div>
    </div>
</footer>

<!--
OpenCart is open source software and you are free to remove the powered by OpenCart if you want, but its generally accepted practise to make a small donation.
Please donate via PayPal to donate@opencart.com
//-->

<!-- Theme created by Welford Media for OpenCart 2.0 www.welfordmedia.co.uk -->

<div id="myModal" class="modal fade" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
  <div class="modal-dialog modal-sm">
    <div class="modal-content ">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">Х</button>
        <h3 id="myModalLabel text-center">Оформить заказ</h3>
      </div>
      <div class="modal-body">
        <form action="contact.php" method="post" role="form" id="contact-form">

          <div class="row">
            <div class="col-md-12">
              <div class="form-group">
                <label for="name">Ваше имя:</label>
                <input type="text" class="form-control" name="name" id="name" />
                <span class="help-block"></span>
              </div>
            </div>
          </div>

          <div class="row">
            <div class="col-md-12">
              <div class="form-group">
                <label for="phone">Ваш телефон:</label>
                <input type="text" class="form-control" name="phone" id="phone" />
                <span class="help-block"></span>
              </div>
            </div>
          </div>


          <div class="row">
            <div class="col-md-12">
                <div class="form-group">
                    <label for="email">Ваш Email:</label>
                    <input type="text" class="form-control" name="email" id="email" />
                    <span class="help-block"></span>
                </div>
            </div>
          </div>

          <div class="row">
            <div class="col-md-12">
              <div class="form-group">
                <label for="address">Адрес доставки:</label>
                <input type="text" class="form-control" name="address" id="address" />
                <span class="help-block"></span>
              </div>
            </div>
          </div>

          <div class="row">
            <div class="col-md-12">
              <div class="form-group">
                <label for="zakaz">Ваш заказ</label>
                <textarea class="form-control" rows="5" name="zakaz" id="zakaz" ></textarea>
                <span class="help-block"></span>
              </div>
            </div>
          </div>

          <div class="text-center">Общая сума заказа: <div style="display: inline;" id="zakaz-price"></div></div>
          <div class="row">
            <div class="col-md-12">
              <button type="submit" class="btn btn-success center-block" id="btn-send">ЗАКАЗАТЬ</button>
            </div>
          </div>
          <div class="clearfix"></div>
        </form>
        <h6 class="text-center">Спасибо мы свяжемся с вами в ближайшое время</h6>

        <div class="row">
          <div class="col-md-12">
            <div class="alert alert-info text-center" role="alert" id="success-message" style="display: none;"></div>
          </div>
        </div>
      </div>
    </div>
  </div>
</div>
</body>
</html>
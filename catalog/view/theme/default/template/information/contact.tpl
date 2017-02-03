<link href="catalog/view/theme/default/stylesheet/contact.css" rel="stylesheet">

<?php echo $header; ?>
<div class="container">
  <div class="container">
    <ul class="container hidden-xs">
      <?php foreach ($breadcrumbs as $key => $breadcrumb) { ?>
      <?php if ($breadcrumb ['href']==('')){ ?>
      <?php if($key != count($breadcrumbs)-1) { ?>
      <li class="breadcrumb_text" style="padding-right: 16px;background: url('../../../catalog/view/theme/default/image/strilka.png') right center no-repeat;">
        <?php echo $breadcrumb['text']; ?>
      </li>
      <?php } else { ?>
      <li class="breadcrumb_text" ><?php echo $breadcrumb['text']; ?></li>
      <?php } ?>
      <?php }else{ ?>
      <li class="breadcrumb_text" style="padding-right: 16px;background: url('../../../catalog/view/theme/default/image/strilka.png') right center no-repeat;">
        <a class="text_np_20" href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a>
      </li>
      <?php } ?>
      <?php } ?>
    </ul>
  </div>
  <div class="col-sm-12" style="padding: 0"><?php echo $column_left; ?>
    <?php if ($column_left && $column_right) { ?>
    <?php $class = 'col-sm-6'; ?>
    <?php } elseif ($column_left || $column_right) { ?>
    <?php $class = 'col-sm-9'; ?>
    <?php } else { ?>
    <?php $class = 'col-sm-12'; ?>
    <?php } ?>
    <div id="content" class="<?php echo $class; ?>" style="padding: 0"><?php echo $content_top; ?>
      <div class="h_text_1_for_change"><?php echo $heading_title2; ?></div>
      <div class="panel panel-default panel_panel_default_20">
        <div class="panel-body">
          <div class="row">
            <div class="col-sm-12">
              <div class="col-lg-3 col-md-4 col-sm-4 col-xs-12"><strong class="text_nashi_telefoni"><?php echo $text_telephone; ?></strong><br>
                <div  class="second-cont no-padding">
                  <div class="footer-telef footer_telef_2">
                    <?php echo $findTelef; ?>
                  </div>
                  <div class="foter-dodat foter_dodat_2" style="text-align: left;">
                    <i><?php echo $findDodat; ?></i>
                  </div>
                </div>
              </div>
              <div class="col-lg-5 col-md-5 col-sm-4 col-xs-12 nash_rob"><strong class="text_nashi_telefoni">Наш адрес</strong><br>
                <div class="footer-touch_mob footer_touch_mob_2">
                  <?php echo $findTouch; ?>
                </div>
              </div>
              <div class="col-lg-4 col-md-3 col-sm-4 col-xs-12 nash_rob"><strong class="text_nashi_telefoni">Наша электронная почта</strong><br>
                <div class=" foter-email_mob foter_email_mob_2">
                  E-mail:<?php echo $findEmail; ?>
                </div>
              </div>
            </div>
            <div class="col-sm-12">
              <div class="col-lg-4 col-md-4 col-sm-4 col-xs-12 graf_rob"><strong class="text_nashi_telefoni">График работы</strong><br />
                <div class="geografi_text_open">
                  <?php echo $config_open; ?>
                </div>
              </div>
            </div>
            <?php if ($image) { ?>
            <div class="col-sm-3"><img src="<?php echo $image; ?>" alt="<?php echo $store; ?>" title="<?php echo $store; ?>" class="img-thumbnail" /></div>
            <?php } ?>

          </div>
        </div>
      </div>
      <?php if ($locations) { ?>
      <h3><?php echo $text_store; ?></h3>
      <div class="panel-group" id="accordion">
        <?php foreach ($locations as $location) { ?>        <div class="panel panel-default">
          <div class="panel-heading">
            <h4 class="panel-title"><a href="#collapse-location<?php echo $location['location_id']; ?>" class="accordion-toggle" data-toggle="collapse" data-parent="#accordion"><?php echo $location['name']; ?> <i class="fa fa-caret-down"></i></a></h4>
          </div>
          <div class="panel-collapse collapse" id="collapse-location<?php echo $location['location_id']; ?>">
            <div class="panel-body">
              <div class="row">
                <?php if ($location['image']) { ?>
                <div class="col-sm-3"><img src="<?php echo $location['image']; ?>" alt="<?php echo $location['name']; ?>" title="<?php echo $location['name']; ?>" class="img-thumbnail" /></div>
                <?php } ?>
                <div class="col-sm-3"><strong><?php echo $location['name']; ?></strong><br />
                  <address>
                  <?php echo $location['address']; ?>
                  </address>
                  <?php if ($location['geocode']) { ?>
                  <a href="https://maps.google.com/maps?q=<?php echo urlencode($location['geocode']); ?>&hl=<?php echo $geocode_hl; ?>&t=m&z=15" target="_blank" class="btn btn-info"><i class="fa fa-map-marker"></i> <?php echo $button_map; ?></a>
                  <?php } ?>
                </div>
                <div class="col-sm-3"> <strong><?php echo $text_telephone; ?></strong><br>
                  <?php echo $location['telephone']; ?><br />
                  <br />
                  <?php if ($location['fax']) { ?>
                  <strong><?php echo $text_fax; ?></strong><br>
                  <?php echo $location['fax']; ?>
                  <?php } ?>
                </div>
                <div class="col-sm-3">
                  <?php if ($location['open']) { ?>
                  <strong><?php echo $text_open; ?></strong><br />
                  <?php echo $location['open']; ?><br />
                  <br />
                  <?php } ?>
                  <?php if ($location['comment']) { ?>
                  <strong><?php echo $text_comment; ?></strong><br />
                  <?php echo $location['comment']; ?>
                  <?php } ?>
                </div>
              </div>
            </div>
          </div>
        </div>
        <?php } ?>
      </div>
      <?php } ?>
    </div>
  </div>
</div>
      <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12" style="padding: 0 0 5% 0">
        <div id="map" class="map map_box ymaps fr clf" style="margin-bottom: 55px"></div>
        <script type="text/javascript">
          ymaps.ready(init);
          var myMap;
          function init () {
            myMap = new ymaps.Map("map", {
              center: [55.626609, 37.441071],
              behaviors: ['default', 'scrollZoom'],
              zoom: 16
            });
            myMap.controls

            myPlacemark0 = new ymaps.Placemark([55.626609, 37.441071], {
              balloonContent: ''
            }, {
              iconImageHref: 'img/ico/map_ico.png',
              iconImageSize: [54, 69],
              iconImageOffset: [-32, -64],
              balloonContentSize: [54, 69],
              balloonShadow: false,
              balloonAutoPan: false
            });
            myMap.geoObjects
                    .add(myPlacemark0);
          }
        </script>
<div class="container">
      <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12 panel_panel_default_21">
          <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" class="form-horizontal">
                <fieldset>
                  <legend class="text_zadatu_ptanna"><?php echo $text_contact; ?></legend>
            <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                  <div class="col-lg-4 col-md-4 col-sm-4 col-xs-12">
                    <div class="form-group required">
                         <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 cls_pad_1">
                          <input type="text" name="name" value="<?php echo $name; ?>" id="input-name" class="form-control form_control_20" placeholder="Ваше имя" />
                          <?php if ($error_name) { ?>
                          <div class="text-danger"><?php echo $error_name; ?></div>
                          <?php } ?>
                        </div>
                      <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 cls_pad_2">
                      <div class="form-group required">
                          <input type="text" name="email" value="<?php echo $email; ?>" id="input-email" class="form-control form_control_20" placeholder="Ваш e-mail" />
                          <?php if ($error_email) { ?>
                          <div class="text-danger"><?php echo $error_email; ?></div>
                          <?php } ?>
                        </div>
                      </div>
                    </div>
                  </div>
                  <div class="col-lg-8 col-md-8 col-sm-8 col-xs-12">
                    <div class="form-group required">
                      <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 marg_col_xs" style="padding: 0% 16% 0 2%;">
                        <textarea name="enquiry" rows="5" id="input-enquiry" class="form-control form_control_21" placeholder="Ваш вопрос"><?php echo $enquiry; ?></textarea>
                        <?php if ($error_enquiry) { ?>
                        <div class="text-danger"><?php echo $error_enquiry; ?></div>
                        <?php } ?>
                      </div>
                    </div>
                  </div>
            </div>
                  <?php echo $captcha; ?>
                </fieldset>
            <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12" style="margin-bottom: 2%;">
                <div class="buttons bot_left">
                  <div class="pull-right">
                    <input class="btn btn-primary btn_prim_bot" type="submit" value="Отправить" />
                  </div>
                </div>
            </div>
            </div>
          </form>
      <?php echo $content_bottom; ?>
</div>
    <?php echo $column_right; ?>
<?php echo $footer; ?>

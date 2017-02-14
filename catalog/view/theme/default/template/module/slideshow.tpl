<div id="shelf" style="position: relative">
  <link href="catalog/view/theme/default/stylesheet/home.css" rel="stylesheet" xmlns="http://www.w3.org/1999/html">

  </div>
<div id="slideshow<?php echo $module; ?>" class="owl-carousel" style="opacity: 1;">
  <?php foreach ($banners as $banner) { ?>
  <div class="item">
    <div class="hidden-xs desk_text_div_style_backg_3" style="position: absolute; border-radius: 8px; z-index: 100">
        <span class="glav_text_span_banner">
          Акции!
        </span>
      <p class="glav_text_p_banner">При покупке ленты тканой Lash
        2000 GW 500 PES от 10 бобин
        стоимость 200 м ленты составит
        98,90 у.е. </p>
      <div style="padding-bottom: 75px;padding-left: 5px;">
        <a href="index.php?route=information/akcii">
          <button type="button"  class=" btn btn-primary bot_vse_akcii" ">
          <span class="">Все акции</span>
          </button>
        </a>

      </div>
      </div>
    <?php if ($banner['link']) { ?>
    <a href="<?php echo $banner['link']; ?>"><img src="<?php echo $banner['image']; ?>" alt="<?php echo $banner['title']; ?>" class="img-responsive" /></a>
    <?php } else { ?>
    <img src="<?php echo $banner['image']; ?>" alt="<?php echo $banner['title']; ?>" class="img-responsive img_KP_20" style="margin: 0 0 0 0;" />
    <?php } ?>
  </div>
  <?php } ?>
</div>
</div>
<script type="text/javascript">
$('#slideshow<?php echo $module; ?>').owlCarousel({
	items: 1,
	autoPlay: 3000,
	singleItem: true,
	navigation: true,
    autoHeight:true,
    dots: true,
    navigationText: ['<img  src="/catalog/view/theme/default/image/owlCarusel_strilka_vlivo.png" />', '<img src="/catalog/view/theme/default/image/owlCarusel_strilka_vpravo.png" />'],
	pagination: true
});
--></script>

  <div class="col-lg-12 text_slader_bydte">
    <div class="banner-div-main">
      <div class="desktop-img-div-style">
        <img class="" src="../image/catalog/ygolku.png" style="width: 100%" >
      </div>
      <div class="desktop-text-div-style">
          <div class="" style="padding-right: 38px;">
            <span class="text_zah_slader">Будьте уверены! - груз доедет в целости и сохранности!</span>
          </div>
          <div class="">
          </div>
      </div>
      <div class="  desk_text_div_style_backg">
        <span class="glav_text_span_banner">
          Главное преимущество
        </span>
        <p class="glav_text_p_banner">Защитные уголки сокращают затраты на упаковку и логистику!</p>
      </div>
    </div>
  </div>
<div id="slideshow<?php echo $module; ?>" class="owl-carousel" style="opacity: 1;">
  <?php foreach ($banners as $banner) { ?>
  <div class="item">
    <?php if ($banner['link']) { ?>
    <a href="<?php echo $banner['link']; ?>"><img src="<?php echo $banner['image']; ?>" alt="<?php echo $banner['title']; ?>" class="img-responsive" /></a>
    <?php } else { ?>
    <img src="<?php echo $banner['image']; ?>" alt="<?php echo $banner['title']; ?>" class="img-responsive" style="width: 100%;" />
    <?php } ?>
  </div>
  <?php } ?>
</div>
<script type="text/javascript"><!--
$('#slideshow<?php echo $module; ?>').owlCarousel({
	items: 6,
	autoPlay: 3000,
	singleItem: true,
	navigation: true,
  navigationText: ['<img src="/catalog/view/theme/default/image/owlCarusel_strilka_vlivo.png" />', '<img src="/catalog/view/theme/default/image/owlCarusel_strilka_vpravo.png" />'],
	pagination: true
});
--></script>
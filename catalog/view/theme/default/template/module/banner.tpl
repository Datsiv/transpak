<div class="col-lg-12 hidden-xs text_slader_bydte">
    <div class="banner-div-main" >
   <div class="hidden-xs desk_text_div_style_backg">
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
        <img src="<?php echo $banner['image']; ?>" alt="<?php echo $banner['title']; ?>" class="img-responsive img_np_20" style="margin: -40px 0 -60px 0;" />
        <?php } ?>
    </div>
    <?php } ?>
</div>
</div>
<script type="text/javascript">
    $('#slideshow<?php echo $module; ?>').owlCarousel({
        items: 6,
        autoPlay: 3000,
        singleItem: true,
        navigation: true,
        navigationText: ['<img class="hidden-xs" src="/catalog/view/theme/default/image/owlCarusel_strilka_vlivo.png" />', '<img class="hidden-xs" src="/catalog/view/theme/default/image/owlCarusel_strilka_vpravo.png" />'],
        pagination: true
    });
</script>

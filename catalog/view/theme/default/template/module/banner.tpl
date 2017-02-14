<div id="baner<?php echo $module; ?>" class="owl-carousel" style="opacity: 1;">
    <?php foreach ($banners as $banner) { ?>
    <div class="item">
        <div class="hidden-xs desk_text_div_style_backg">
        <span class="cat_text_span_banner">
          Главное преимущество
        </span>
            <p class="cat_text_p_banner">Защитные уголки сокращают затраты на упаковку и логистику!</p>
        </div>
        <?php if ($banner['link']) { ?>
        <a href="<?php echo $banner['link']; ?>"><img src="<?php echo $banner['image']; ?>"
                                                      alt="<?php echo $banner['title']; ?>" class="img-responsive"/></a>
        <?php } else { ?>
        <img src="<?php echo $banner['image']; ?>" alt="<?php echo $banner['title']; ?>"
             class="img-responsive img_np_20"/>
        <?php } ?>
    </div>
    <?php } ?>
</div>
<script type="text/javascript">
    $('#baner<?php echo $module; ?>').owlCarousel({
        items: 6,
        autoPlay: 3000,
        singleItem: true,
        navigation: true,
        autoHeight: true,
        navigationText: ['<img class="hidden-xs" src="/catalog/view/theme/default/image/owlCarusel_strilka_vlivo.png" />', '<img class="hidden-xs" src="/catalog/view/theme/default/image/owlCarusel_strilka_vpravo.png" />'],
        pagination: true
    });
</script>

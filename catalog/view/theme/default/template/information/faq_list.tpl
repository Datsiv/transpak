<link href="catalog/view/theme/default/stylesheet/home.css" rel="stylesheet">
<script src="catalog/view/javascript/jquery/jquery-2.1.1.min.js" type="text/javascript"></script>
<script src="catalog/view/javascript/home_js.js" type="text/javascript"></script>
<?php echo $header; ?>
<div class="container margin_container">
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
    <div class="container class_text no-padding">
        <div id="content"><?php echo $content_top; ?>
            <div class="container no-padding_class_mob"> 
                <div class="akciihead title_glavn">Часто задаваемые вопросы</div>
                <div class="container class_text no-padding"><?php echo $description; ?></div>
                <?php if ($news_list) { ?>
                    <div class=" class_text_new">
                        <?php foreach ($news_list as $news_item) { ?>
                            <div class="col-xs-12 akciiblock no-padding akciiblock-font-size-change">
                                <div class="caption">
                                    <a class="akciiperhead title_voprosy" ><?php echo $news_item['title']; ?></a>
                                    <div class="voprosy voprosy-change-design">
                                        <p> <?php echo $news_item['description']; ?> </p>
                                    </div>
                                </div>
                            </div>
                        <?php } ?>
                    </div>
                    <div class="row vopsosy_text">
                        <div class="col-sm-6 text-left"><?php echo $pagination; ?></div>
                    </div>
                <?php } else { ?>
                    <p><?php echo $text_empty; ?></p>
                    <div class="buttons">
                        <div class="pull-right"><a href="<?php echo $continue; ?>" class="btn btn-primary"><?php echo $button_continue; ?></a></div>
                    </div>
                <?php } ?>
                 <div class="row"></div>
            </div>
        </div>
    </div>
</div>
<?php echo $footer; ?>
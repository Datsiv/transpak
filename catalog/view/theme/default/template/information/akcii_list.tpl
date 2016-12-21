<?php echo $header; ?>
 <link href="catalog/view/theme/default/stylesheet/akcii_list.css" rel="stylesheet">
 <div class="container">
	<div class="breadcrumbmy breadcrumbmy_normal">
		<?php $i=0; foreach ($breadcrumbs as $breadcrumb) { ?>
		<?php if($i<1){?>
		<a href="<?php echo $breadcrumb['href']; ?>" class="breadcrumbmya"><?php echo $breadcrumb['text']; ?></a><span>/</span>
		<?php }else{?>
		<a href="<?php echo $breadcrumb['href']; ?>">Акции</a>
		<?php }?>
		<?php $i++; } ?>
	</div>
	<div class="row row_two">
		<div id="content"><?php echo $content_top; ?>
                        <div class="akciihead_mob">Наши акции</div>
			<div class=" row akciihead row_two akciihead_normal">Наши акции!</div>
			<div class="row row_two hghfj">
           <?php echo $description; ?>           
            </div>
			<?php if ($news_list) { ?>
			<div class="row row_two row_noraml">
										<?php 
function russian_date($dateposted){
$date=explode(".", $dateposted);
switch ($date[1]){
case 1: $m='января'; break;
case 2: $m='февраля'; break;
case 3: $m='марта'; break;
case 4: $m='апреля'; break;
case 5: $m='мая'; break;
case 6: $m='июня'; break;
case 7: $m='июля'; break;
case 8: $m='августа'; break;
case 9: $m='сентября'; break;
case 10: $m='октября'; break;
case 11: $m='ноября'; break;
case 12: $m='декабря'; break;
}
echo $date[0].'&nbsp;'.$m.',&nbsp;'.$date[2];
}
?>
				<?php foreach ($news_list as $news_item) { ?>
					<div class="col-xs-12 akciiblock akciiblock_normal">
                                            <div class="col-xs-12 col-sm-3 col-md-3 col-lg-3 tttt">
                                                <div class="image "><a href="<?php echo $news_item['href']; ?>">
                                                        <img class="akciiimg img_akcii_list" src="<?php echo $news_item['thumb']; ?>" alt="<?php echo $news_item['title']; ?>" title="<?php echo $news_item['title']; ?>" class="img-responsive" /></a>
                                                </div>
                                            </div>
                                            <div class="col-xs-8 col-sm-9 col-md-9 col-lg-9 rrrr">
                                                <div class="caption caption_my_one">
                                                        <a class="akciiperhead akciiperhead_one" href="<?php echo $news_item['href']; ?>"><?php echo $news_item['title']; ?></a>
                                                        <p class="inf_paper"><?php echo $news_item['description']; ?></p>
                                                </div>
                                                <div class="act_button">
                                                    <span class="akciibutton akciibutton_two">
                                                        Акция действительна до <?php russian_date($news_item['posted']); ?>
                                                    </span>
                                                </div>
                                            </div>
					</div>
				
				<?php } ?>
			</div>
			<?php } else { ?>
			<p><?php echo $text_empty; ?></p>
			<div class="buttons">
				<div class="pull-right"><a href="<?php echo $continue; ?>" class="btn btn-primary"><?php echo $button_continue; ?></a></div>
			</div>
			<?php } ?>
		</div>
	</div>
</div>
<?php echo $footer; ?>
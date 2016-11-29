<?php echo $header; ?>
<div class="container">
	<div class="breadcrumbmy">
		<?php $i=0; foreach ($breadcrumbs as $breadcrumb) { ?>
		<?php if($i<1){?>
		<a href="<?php echo $breadcrumb['href']; ?>" class="breadcrumbmya"><?php echo $breadcrumb['text']; ?></a><span>/</span>
		<?php }else{?>
		<a href="<?php echo $breadcrumb['href']; ?>">Акции</a>
		<?php }?>
		<?php $i++; } ?>
	</div>
	<div class="row">
		<div id="content"><?php echo $content_top; ?>
			<div class=" row akciihead">Наши акции!</div>
			<div class="row">
           <?php echo $description; ?>           
            </div>
			<?php if ($news_list) { ?>
			<div class="row">
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
					<div class="col-xs-12 akciiblock">
					<div class="col-xs-4 col-sm-4 col-md-4">
					    <div class="image "><a href="<?php echo $news_item['href']; ?>"><img class="akciiimg" src="<?php echo $news_item['thumb']; ?>" alt="<?php echo $news_item['title']; ?>" title="<?php echo $news_item['title']; ?>" class="img-responsive" /></a></div>
					    
					</div>
					<div class="col-xs-8 col-sm-8 col-md-8"></div>
						
							<div class="caption">
								<a class="akciiperhead" href="<?php echo $news_item['href']; ?>"><?php echo $news_item['title']; ?></a>
								<p><?php echo $news_item['description']; ?></p>
							</div>
							<div class="button-group">
							<span>
								Акция действительна до <?php russian_date($news_item['posted']); ?>
								</span>
							</div>
						
					</div>
				
				<?php } ?>
			</div>
			<div class="row">
				<div class="col-sm-6 text-left"><?php echo $pagination; ?></div>
				<div class="col-sm-6 text-right"><?php echo $results; ?></div>
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
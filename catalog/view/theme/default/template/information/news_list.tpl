<link href="catalog/view/theme/default/stylesheet/home.css" rel="stylesheet">
<?php echo $header; ?>
<div class="container">
	<div class="breadcrumbmy">
		<?php $i=0; foreach ($breadcrumbs as $breadcrumb) { ?>
		<?php if($i<1){ ?>
		<a href="<?php echo $breadcrumb['href']; ?>" class="breadcrumbmya"><?php echo $breadcrumb['text']; ?></a><span>/</span>
		<?php }else{ ?>
		<a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a>
		<?php }?>
		<?php $i++; } ?>
	</div>
	<div class="row row-cont-btn-group-change-all">
		<div id="content">
			<br>
			<h1 class="title_news">Новости нашей компании</h1>
			<br>
			<?php if ($news_list) { ?>
			<div class="row ">
				<div class="col-md-12 btn-group-cont-row">
					<div class="btn-group">
						<?php foreach ($year as $years) { ?>
						<?php if ($years['value'] == $yearval) { ?>
						<button type="button" class="newsyears newsyearsactive btn button_news " data-toggle="tooltip" value="<?php echo $years['href']; ?>" title="" onclick="location = this.value;"><?php echo $button_year; ?> <?php echo $years['text']; ?></button>
						<?php } else { ?>
						<button type="button" class="newsyears btn button_news " data-toggle="tooltip" value="<?php echo $years['href']; ?>" title="" onclick="location = this.value;"><?php echo $button_year; ?>  <?php echo $years['text']; ?> </button>
						<?php } ?>
						<?php } ?>

					</div>
				</div>
			</div>
			<br />
			<div class="row row-cont-inform-table">
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
				<div class="product-layout product-grid col-lg-4 col-md-4 col-sm-12 col-xs-12">
					<span class="block"><?php russian_date($news_item['posted']); ?></span>
						<div>
							<div class="caption ">
								<h4 class="news_text_title">
                                                                    <a class="a_cla_text" href="<?php echo $news_item['href']; ?>"><?php echo $news_item['title']; ?></a>
                                                                </h4>
								<p class="news_text"><?php echo $news_item['description']; ?></p>
							</div>
						</div>
					
				</div>
				<?php } ?>
			</div>
			<div class="row">
				<div class="col-sm-6 text-left"><?php echo $pagination; ?></div>
			</div>
			<?php } else { ?>
			<p><?php echo $text_empty; ?></p>
			<div class="row">
				<div class="col-md-12">
					<div class="btn-group">
						<?php foreach ($year as $years) { ?>
						<?php if ($years['value'] == $yearval) { ?>
						<button type="button" class="newsyears newsyearsactive btn " data-toggle="tooltip" value="<?php echo $years['href']; ?>" title="" onclick="location = this.value;"><?php echo $button_year; ?> <?php echo $years['text']; ?></button>
						<?php } else { ?>
						<button type="button" class="newsyears btn " data-toggle="tooltip" value="<?php echo $years['href']; ?>" title="" onclick="location = this.value;"><?php echo $button_year; ?>  <?php echo $years['text']; ?> </button>
						<?php } ?>
						<?php } ?>

					</div>
				</div>
			</div>
			<div class="buttons">
				<div class="pull-right"><a href="<?php echo $continue; ?>" class="btn btn-primary"><?php echo $button_continue; ?></a></div>
			</div>
			<?php } ?>
		</div>
	</div>
</div>
<?php echo $footer; ?>
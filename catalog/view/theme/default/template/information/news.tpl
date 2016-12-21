<?php echo $header; ?>
<div class="container">
	<div class="hidden-xs breadcrumbmy ">
		<?php $i=0; foreach ($breadcrumbs as $breadcrumb) { ?>
		<?php if($i<2){ ?>
		<a href="<?php echo $breadcrumb['href']; ?>" class="breadcrumbmya"><?php echo $breadcrumb['text']; ?></a><span>/</span>
		<?php }else{ ?>
		<a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a>
		<?php }?>
		<?php $i++; } ?>
	</div>
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
	<div class="row news">
		<div id="content">
			<div class="col-sm-12">
                <div class="col-sm-12"><h1 class="h_text_news"><?php echo $heading_title; ?></h1></div>
            </div>
            <div class="col-sm-12"  style="margin-bottom: 30px;">
				 <div class="col-lg-4 col-md-4 col-sm-4 hidden-xs"></div>
				 <div class="col-lg-8 col-md-8 col-sm-7 hidden-xs no-padding"><span class="block">
					 <?php echo russian_date($posted); ?>
					 </span>
				 </div>
            </div>
             <div class="col-sm-12 no-padding">
             		<div class="col-lg-4 col-md-4 col-sm-4 col-xs-12">
						<a href="<?php echo $popup; ?>" title="<?php echo $heading_title; ?>"><img class="img_whi_news width: 90%;background-size: cover;" src="<?php echo $thumb; ?>" title="<?php echo $heading_title; ?>" alt="<?php echo $heading_title; ?>"/></a>
					</div>
				 <div class="hidden-lg hidden-md hidden-sm col-xs-12" style="padding: 5% 7%;"><span class="block">
					 <?php echo russian_date($posted); ?>
					 </span>
				 </div>
					<div class="col-lg-8 col-md-8 col-sm-7 hidden-xs">
						<div class="description description_text">
							<?php echo $description; ?>
						</div>
					</div>
				 <div class="hidden-lg hidden-md hidden-sm col-xs-12" style="padding: 2% 9%;">
					 <div class="description description_text">
						 <span>Компания «ИнтерТрансПак» провела исп
						 ытания крепежной кордовой ленты
						 Strap 2000 и крепежной тканой ленты
						 Lash 2000 из полиэфирного волокна, в
						 очередной раз подтвердив качество
						 реализуемой продукции. На основании
						 протокола испытаний был получен
						 сертификат соответствия для упаково
						 чной крепежной ленты. Также компанией
						 «ИнтерТрансПак» были разработаны
						 Технические Условия для изготовления
						 упаковочной крепежной ленты
						 Strap 2000 и Lash 2000</span>
					 </div>
				 </div>
				 <div class="col-lg-12">
					 <a class="btn btn-primary newsinfo" href="<?php echo $news_list; ?>">Вернуться к новостям</a>
				 </div>
			 </div>
			
			
					
					
						
						
						<?php if($news_share) { ?>
						<div class="col-sm-4">
							<div class="addthis">
								<!-- AddThis Button BEGIN -->
								<div class="addthis_toolbox addthis_default_style ">
									<a class="addthis_button_email"></a>
									<a class="addthis_button_print"></a>
									<a class="addthis_button_preferred_1"></a>
									<a class="addthis_button_preferred_2"></a>
									<a class="addthis_button_preferred_3"></a>
									<a class="addthis_button_preferred_4"></a>
									<a class="addthis_button_compact"></a>
									<a class="addthis_counter addthis_bubble_style"></a>
								</div>
								<script type="text/javascript" src="//s7.addthis.com/js/300/addthis_widget.js"></script>
							</div>
						</div>
						<?php } ?>
					
				
			
			</div>
	</div>
	
	<script type="text/javascript"><!--
		$(document).ready(function () {
			$('.thumbnail').magnificPopup({
				type: 'image',
				delegate: 'a',
			});
		});
	//--></script>
</div>
<?php echo $footer; ?>
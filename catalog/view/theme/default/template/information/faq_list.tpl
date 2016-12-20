<link href="catalog/view/theme/default/stylesheet/home.css" rel="stylesheet">
<script src="catalog/view/javascript/jquery/jquery-2.1.1.min.js" type="text/javascript"></script>
<script src="catalog/view/javascript/home_js.js" type="text/javascript"></script>
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
			<div class=" row akciihead">Часто задаваемые вопросы</div>
			<div class="row">
           <?php echo $description; ?>           
            </div>
			<?php if ($news_list) { ?>
			<div class="row">
				<?php foreach ($news_list as $news_item) { ?>
					<div class="col-xs-12 akciiblock">
							<div class="caption">
								<a class="akciiperhead" ><?php echo $news_item['title']; ?></a>
								<p style="margin-left: 15px;"><?php echo $news_item['description']; ?></p>
							</div>
						
					</div>
				
				<?php } ?>
			</div>
			<div class="row">
				<div class="col-sm-6 text-left"><?php echo $pagination; ?></div>
				<div class="col-sm-6 text-right"><?php echo $results."<br />"?></div>
			</div>
			<?php } else { ?>
			<p><?php echo $text_empty; ?></p>
			<div class="buttons">
				<div class="pull-right"><a href="<?php echo $continue; ?>" class="btn btn-primary"><?php echo $button_continue; ?></a></div>
			</div>
			<?php } ?>
			 <div class="row">
     <div class="col-sm-12 seo">

		 <h4><?php echo $heading_titleseo ?></h4>
		 <?php echo $descriptionseo; ?>

		 <a  class=" text dropdown-toggle " data-toggle="dropdown" id="vypad" href="#"> <p id="hide">Читать далее</p></a>
		 <ul class="dropdown-menu vupad_text1">
			 Из полиэфирного волокна, в очередной раз подтвердив качество реализуемой продукции. На основании протокола испытаний был получен сертификат соответствия для упаковочной крепежной ленты. Также компанией «ИнтерТрансПак» были разработаны Технические Условия для изготовления упаковочной крепежной ленты Strap 2000 и Lash 2000
		 </ul>


	 </div></div>
		</div>
	</div>
</div>
<?php echo $footer; ?>
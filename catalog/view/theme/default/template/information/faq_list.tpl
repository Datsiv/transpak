<link href="catalog/view/theme/default/stylesheet/home.css" rel="stylesheet">
<script src="catalog/view/javascript/jquery/jquery-2.1.1.min.js" type="text/javascript"></script>
<script src="catalog/view/javascript/home_js.js" type="text/javascript"></script>
<?php echo $header; ?>
<div class="container margin_container">
	<div class="breadcrumbmy">
		<?php $i=0; foreach ($breadcrumbs as $breadcrumb) { ?>
		<?php if($i<1){?>
		<a href="<?php echo $breadcrumb['href']; ?>" class="breadcrumbmya"><?php echo $breadcrumb['text']; ?></a><span>/</span>
		<?php }else{?>
		<a href="<?php echo $breadcrumb['href']; ?>">Вопросы</a>
		<?php }?>
		<?php $i++; } ?>
	</div>
	<div class="container class_text">
		<div id="content"><?php echo $content_top; ?>
			<div class=" container akciihead title_glavn">Часто задаваемые вопросы</div>
			<div class="container class_text">
           <?php echo $description; ?>           
            </div>
			<?php if ($news_list) { ?>
			<div class=" class_text_new">
				<?php foreach ($news_list as $news_item) { ?>
					<div class="col-xs-12 akciiblock ">
							<div class="caption">
								<a class="akciiperhead title_voprosy" ><?php echo $news_item['title']; ?></a>
								<p class="voprosy"><?php echo $news_item['description']; ?></p>
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
			 <div class="row">
    </div>
		</div>
	</div>
</div>
<?php echo $footer; ?>
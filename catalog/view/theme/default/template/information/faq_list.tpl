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
				<?php foreach ($news_list as $news_item) { ?>
					<div class="col-xs-12 akciiblock">
							<div class="caption">
								<a class="akciiperhead" ><?php echo $news_item['title']; ?></a>
								<p><?php echo $news_item['description']; ?></p>
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
			 <div class="row">
     <div class="col-sm-12 seo">
     
								<h4><?php echo $heading_titleseo ?></h4>
								<?php echo $descriptionseo; ?>
									
									<a href="#seohide" class="collapsed" data-toggle="collapse">Читать далее</a>
								
         
         
         </div></div>
		</div>
	</div>
</div>
<?php echo $footer; ?>
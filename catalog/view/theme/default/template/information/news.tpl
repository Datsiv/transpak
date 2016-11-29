<?php echo $header; ?>
<div class="container">
	<div class="breadcrumbmy">
		<?php $i=0; foreach ($breadcrumbs as $breadcrumb) { ?>
		<?php if($i<2){?>
		<a href="<?php echo $breadcrumb['href']; ?>" class="breadcrumbmya"><?php echo $breadcrumb['text']; ?></a><span>/</span>
		<?php }else{?>
		<a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a>
		<?php }?>
		<?php $i++; } ?>
	</div>
	<div class="row news">
		<div id="content">
			<div class="row">
                <div class="col-sm-12"><h1><?php echo $heading_title; ?></h1></div>
            </div>
            <div class="row">
             <div class="col-sm-4"></div>
             <div class="col-sm-8"><span class="block"><?php echo $posted; ?></span></div> 
            </div>
             <div class="row">
             <div class="col-sm-4"><div class="thumbnail">
						<a href="<?php echo $popup; ?>" title="<?php echo $heading_title; ?>"><img src="<?php echo $thumb; ?>" title="<?php echo $heading_title; ?>" alt="<?php echo $heading_title; ?>"/></a>
					</div></div>
             <div class="col-sm-8"><div class="description">
							<?php echo $description; ?>
							<a class="btn btn-primary" href="<?php echo $news_list; ?>">Вернуться к новостям</a>
						</div></div> 
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
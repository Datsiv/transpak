<?php echo $header; ?>
<div class="container">
	<div class="breadcrumbmy">
		<?php $i=0; foreach ($breadcrumbs as $breadcrumb) { ?>
		<?php if($i<1){?>
		<a href="<?php echo $breadcrumb['href']; ?>" class="breadcrumbmya"><?php echo $breadcrumb['text']; ?></a><span>/</span>
		<?php }else{?>
		<a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a>
		<?php }?>
		<?php $i++; } ?>
	</div>
	<div class="row">
		<div id="content">
			<h1><?php echo $heading_title; ?></h1>
			<?php if ($news_list) { ?>
			<div class="row">
				<div class="col-md-12">
					<div class="btn-group">
						<?php foreach ($year as $years) { ?>
						<?php if ($years['value'] == $yearval) { ?>
						<button type="button" class="newsyears newsyearsactive btn " data-toggle="tooltip" value="<?php echo $years['href']; ?>" title="<?php echo $years['text']; ?>" onclick="location = this.value;"><?php echo $button_year; ?> <?php echo $years['text']; ?></button>
						<?php } else { ?>
						<button type="button" class="newsyears btn " data-toggle="tooltip" value="<?php echo $years['href']; ?>" title="<?php echo $years['text']; ?>" onclick="location = this.value;"><?php echo $button_year; ?>  <?php echo $years['text']; ?> </button>
						<?php } ?>
						<?php } ?>

					</div>
				</div>
			</div>
			<br />
			<div class="row">
				<?php foreach ($news_list as $news_item) { ?>
				<div class="product-layout product-grid col-lg-4 col-md-4 col-sm-12 col-xs-12">
					<span class="block"><?php echo $news_item['posted']; ?></span>
						<div>
							<div class="caption">
								<h4><a href="<?php echo $news_item['href']; ?>"><?php echo $news_item['title']; ?></a></h4>
								<p><?php echo $news_item['description']; ?></p>
							</div>
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
			<div class="row">
				<div class="col-md-12">
					<div class="btn-group">
						<?php foreach ($year as $years) { ?>
						<?php if ($years['value'] == $yearval) { ?>
						<button type="button" class="newsyears newsyearsactive btn " data-toggle="tooltip" value="<?php echo $years['href']; ?>" title="<?php echo $years['text']; ?>" onclick="location = this.value;"><?php echo $button_year; ?> <?php echo $years['text']; ?></button>
						<?php } else { ?>
						<button type="button" class="newsyears btn " data-toggle="tooltip" value="<?php echo $years['href']; ?>" title="<?php echo $years['text']; ?>" onclick="location = this.value;"><?php echo $button_year; ?>  <?php echo $years['text']; ?> </button>
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
<?php if($show_title) { ?>
<h3>Новости дня</h3>
<?php } ?>
<div class="row">
	<?php foreach ($news as $news_item) { ?>
	<div class="blocpadinng col-lg-4 col-md-4 col-sm-6 col-xs-12">
         <span class="block">
             <?php echo $news_item['posted']; ?>
             </span>
				<h4><a href="<?php echo $news_item['href']; ?>"><?php echo $news_item['title']; ?></a></h4>
				<p><?php echo $news_item['description']; ?></p>

		
		</div>
	
	<?php } ?>
	</div>
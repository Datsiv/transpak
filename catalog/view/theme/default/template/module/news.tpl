<link href="catalog/view/theme/default/stylesheet/home.css" rel="stylesheet">
<?php if($show_title) { ?>
<h3 class="news_home">Новости дня</h3>
<?php } ?>
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
	<?php foreach ($news as $news_item) { ?>
	<div class="blocpadinng col-lg-4 col-md-4 col-sm-6 col-xs-12 ">
         <span class="block">
             <?php echo russian_date($news_item['posted']); ?>
             </span>
				<h4 ><a class="blocpadinng_23" href="<?php echo $news_item['href']; ?>"><?php echo $news_item['title']; ?></a></h4>
				<p><?php echo $news_item['description']; ?></p>

		
		</div>
	
	<?php } ?>
	</div>
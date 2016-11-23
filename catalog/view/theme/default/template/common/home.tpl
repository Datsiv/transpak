<?php echo $header; ?>
<?php if ($categories) { ?>
<div class="col-sm-12 col-md-12 col-lg-12 col-xl-12 no-padding no-margin">

  <?php foreach ($categories as $category) { ?>
  <a href="<?php echo $category['href']; ?>">

    <div class="col-xs-5ths col-sm-5ths col-sm-5ths col-md-5ths col-lg-5ths col-xl-5ths catshow" style="background-image: url(<?php echo $category['image']; ?>); ">
      <div class="catshowhover">


  </div>
      <span><?php echo $category['name']; ?></span>
  </div>
  </a>
  <?php } ?>
</div>
<?php } ?>
<div class="container">
 <div class="row">
  <div class="col-sm-12">
				<div class="instruction">
					<div class="row text-left">
						<div class="col-sm-3">
							<figure><div class="kolo"><img src="image/8years.png" alt=""></div>
								<figcaption>
								<h4>Более 7-ми лет опыта работы</h4>
									<span>Мы профессионалы в сфере продаж транспортной упаковки</span>
								</figcaption>
							</figure>
						</div>
						<div class="col-sm-3">
							<figure>
							<div class="kolo"><img src="image/sert.png" alt=""></div>
								<figcaption>
								<h4>Сертификаты качества</h4>
									<span>Мы торгуем качесвтенной продукцией и имеем все необходимые сертификаты качества</span>
									<span class="afigure"><a href="">Посмотреть</a></span>
								</figcaption>
							</figure>
						</div>
						<div class="col-sm-3">
							<figure>
							<div class="kolo"><img src="image/cenu.png" alt=""></div>
								<figcaption>
								<h4>Приятные цены</h4>
									<span>Мы формируем цены так, чтобы вам было интересно к нам обращаться</span>
									<span class="afigure"><a href="">Скачать прайс</a></span>
								</figcaption>
							</figure>
						</div>
						<div class="col-sm-3">
							<figure>
							<div class="kolo"><img src="image/servis.png" alt=""></div>
								<figcaption>
								<h4>Безупречный сервис</h4>
									<span>Мы консультируем наших клиентов и всегда рады ответить на ваши вопросы</span>
								</figcaption>
							</figure>
						</div>
						
					</div>
				</div>
			</div>
</div>
 <div class="row">
     <div class="korob1"><img src="image/iachuk.png" alt=""></div>
     <div class="korob2">
      <?php foreach ($categories as $category) { ?>
      <div>
  <a href="<?php echo $category['href']; ?>">
<?php echo $category['name']; ?>
  </a>
  </div>
  <?php } ?>
     
     </div>
     
 </div>
  <div class="row"><?php echo $column_left; ?>
    <?php if ($column_left && $column_right) { ?>
    <?php $class = 'col-sm-6'; ?>
    <?php } elseif ($column_left || $column_right) { ?>
    <?php $class = 'col-sm-9'; ?>
    <?php } else { ?>
    <?php $class = 'col-sm-12'; ?>
    <?php } ?>
    <div id="content" class="<?php echo $class; ?>"><?php echo $content_top; ?><?php echo $content_bottom; ?></div>
    <?php echo $column_right; ?></div>
</div>
<?php echo $footer; ?>

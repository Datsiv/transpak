<link href="catalog/view/theme/default/stylesheet/home.css" rel="stylesheet" xmlns="http://www.w3.org/1999/html">
<link href="catalog/view/theme/default/stylesheet/header.css" rel="stylesheet">
<script src="catalog/view/javascript/jquery/jquery-2.1.1.min.js" type="text/javascript"></script>
<script src="catalog/view/javascript/home_js.js" type="text/javascript"></script>
<?php echo $header; ?>
<?php echo $content_top; ?>
<?php if ($categories) { ?>
<div class="">
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
</div>
<?php } ?>

<div class="container">
		<div class="col-xs-12 hidden-lg hidden-md hidden-sm desk_text_4" style="border-radius: 8px;">
        <span class="glav_text_span_banner">
          Акции!
        </span>
			<p class="glav_text_p_banner">При покупке ленты тканой Lash
				2000 GW 500 PES от 10 бобин
				стоимость 200 м ленты составит
				98,90 у.е. </p>
			<div style="padding-bottom: 75px;padding-left: 5px;">
				<a href="index.php?route=information/akcii">
					<button type="button"  class=" btn btn-primary bot_vse_akcii" ">
					<span class="">Все акции</span>
					</button>
				</a>
			</div>
		</div>
</div>
<div class="container">
 <div class="row">
  <div class="col-sm-12">
				<div class="instruction">
					<div class="row text-left">
						<div class="col-xs-6 col-sm-6 col-md-3 divcat vypad_home">
							<figure><div class="kolo"><img src="image/8years.png" alt=""></div>
								<figcaption>
								<h4 class="text_home">Более 7-ми лет опыта работы</h4>
									<span>Мы профессионалы в сфере продаж транспортной упаковки</span>
								</figcaption>
							</figure>
						</div>
						<div class="col-xs-6 col-sm-6 col-md-3 divcat vypad_home">
							<figure>
							<div class="kolo"><img src="image/sert.png" alt=""></div>
								<figcaption>
								<h4>Сертификаты качества</h4>
									<span>Мы торгуем качесвтенной продукцией и имеем все необходимые сертификаты качества</span>
									<span class="afigure"><a href="">Посмотреть</a></span>
								</figcaption>
							</figure>
						</div>
						<div class="col-xs-6 col-sm-6 col-md-3 divcat vypad_home">
							<figure>
							<div class="kolo"><img src="image/cenu.png" alt=""></div>
								<figcaption>
								<h4>Приятные цены</h4>
									<span>Мы формируем цены так, чтобы вам было интересно к нам обращаться</span>
									<span class="afigure"><a href="">Скачать прайс</a></span>
								</figcaption>
							</figure>
						</div>
						<div class="col-xs-6 col-sm-6 col-md-3 divcat vypad_home">
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
 <div class="row    blocmargintov">
    <div class="korob2 col-sm-12 hidden-md hidden-lg hidden-xl"><h4>Каждый груз в этих коробках имеет право на 
бережную транспортировку</h4></div>
     <div class="korob1 col-sm-12 col-md-5 col-lg-5 col-xl-5"><img src="image/iachuk.png" alt=""></div>
     <div class="korob2 kategoru_home col-sm-12 col-md-6 col-lg-6 col-xl-6" style="    padding: 0;">
     <h4 class="hidden-xs">Каждый груз в этих коробках имеет право на бережную транспортировку</h4>
      <?php foreach ($categories as $category) { ?>

      <div class="mob_home_categoru col-xs-12  ">
			 <a class="categoru_home " href="<?php echo $category['href']; ?>">
				 <?php echo $category['name']; ?>
			 </a>
		 </div>

		 <div class="home_categoru ">
			 <a class="categoru_home " href="<?php echo $category['href']; ?>">
				 <?php echo $category['name']; ?>
			 </a>
		 </div>
		 <?php } ?>
     
     </div>
 </div>

<div class="row">
  <div class="col-sm-12 blocmarginnew" style="padding:0;"><?php echo $column_left; ?>
    <?php if ($column_left && $column_right) { ?>
    <?php $class = 'col-sm-6'; ?>
    <?php } elseif ($column_left || $column_right) { ?>
    <?php $class = 'col-sm-9'; ?>
    <?php } else { ?>
    <?php $class = 'col-sm-12 news_home'; ?>
    <?php } ?>

    <div  class="<?php echo $class; ?>"><?php echo $content_bottom; ?> </div>
     <div class="col-sm-12" style="padding:0;">
     <div class="col-sm-12 seo" style="padding:0;">
     
								<h4><?php echo $heading_titleseo ?></h4>
								<?php echo $descriptionseo; ?>



		 		<a  class=" text dropdown-toggle text_2" data-toggle="dropdown" id="vypad" href="#"> <p id="hiden">Читать далее</p></a>
		 		 <ul class="dropdown-menu vupad_text1">
					hugyjuhkjl
				 </ul>

         </div></div>
    	</div>
	</div>
</div>
<div style="clear:both;"></div>
    <?php echo $column_right; ?>
<?php echo $footer; ?>
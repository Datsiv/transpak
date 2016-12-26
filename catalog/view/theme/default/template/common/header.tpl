<!DOCTYPE html>
<!--[if IE]><![endif]-->
<!--[if IE 8 ]>
<html dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>" class="ie8"><![endif]-->
<!--[if IE 9 ]>
<html dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>" class="ie9"><![endif]-->
<!--[if (gt IE 9)|!(IE)]><!-->
<html dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>" xmlns="http://www.w3.org/1999/html">
<!--<![endif]-->
<head>
    <meta charset="UTF-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title><?php echo $title; ?></title>
    <base href="<?php echo $base; ?>"/>
    <?php if ($description) { ?>
    <meta name="description" content="<?php echo $description; ?>"/>
    <?php } ?>
    <?php if ($keywords) { ?>
    <meta name="keywords" content="<?php echo $keywords; ?>"/>
    <?php } ?>
    <script src="catalog/view/javascript/jquery/jquery-2.1.1.min.js" type="text/javascript"></script>
    <link href="catalog/view/javascript/bootstrap/css/bootstrap.min.css" rel="stylesheet" media="screen"/>
    <script src="catalog/view/javascript/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
    <link href="catalog/view/javascript/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css"/>
    <link href="catalog/view/theme/default/fonts/styles.css" rel="stylesheet" type="text/css"/>
    <link href="catalog/view/theme/default/stylesheet/header.css" rel="stylesheet">
    <link href="catalog/view/theme/default/stylesheet/stylesheet.css" rel="stylesheet">
    <?php foreach ($styles as $style) { ?>
    <link href="<?php echo $style['href']; ?>" type="text/css" rel="<?php echo $style['rel']; ?>"
          media="<?php echo $style['media']; ?>"/>
    <?php } ?>
    <script src="catalog/view/javascript/common.js" type="text/javascript"></script>
    <script src="catalog/view/javascript/custom.js" type="text/javascript"></script>
    <script src="catalog/view/javascript/head_js.js" type="text/javascript"></script>
    <script src="catalog/view/javascript/header.js" type="text/javascript"></script>

    <?php foreach ($links as $link) { ?>
    <link href="<?php echo $link['href']; ?>" rel="<?php echo $link['rel']; ?>"/>
    <?php } ?>
    <?php foreach ($scripts as $script) { ?>
    <script src="<?php echo $script; ?>" type="text/javascript"></script>
    <?php } ?>
    <?php foreach ($analytics as $analytic) { ?>
    <?php echo $analytic; ?>
    <?php } ?>
</head>
<div id="contactForm_en" class="modal fade">
    <div class="modal-dialog">
        <div class="modal-content">
            <!-- Заголовок модального окна -->
            <div class="modal-header" style="border: 0;background: #fffacc;border-bottom: 1px solid #f0ddaa;">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
            </div>
            <!-- Основное содержимое модального окна -->
            <div class="modal-body" style="text-align: center;background: #fffacc;">
                <div class="modal-title-style">Обратная связь</div>
                <div>
                    <form id="contactForm" action="" method="post">
                        <ul id="errorMasege" style="padding-left: 0">
                            <span style="display: none; color: red" class="row name">Некоректно заполнено Имя пользователя</span>
                            <span style="display: none; color: red" class="row telephone ">Некоректно заполнено telefon</span>
                            <span style="display: none; color: red" class="row message ">Минимальная длина сообщения десеть знаков</span>
                        </ul>
                        <div class="row modal-div-input-stile">
                            <input class="modal-input-style contactItem" id="name" name="name" type="text" placeholder="ВАШЕ ИМЯ">
                        </div>
                        <div class="row modal-div-input-stile">
                            <input class="modal-input-style contactItem" id="telefon" name="telefon" type="text" placeholder="ТЕЛЕФОН">
                        </div>
                        <div class="row modal-div-input-stile">
                            <textarea  name="message" placeholder="СООБЩЕНИЕ" rows="5" id="message" class="contactItem modal-textarea-style"></textarea>
                        </div>
                        <button id="sendMessage" type="button" class="btn modal-btn-style">Отправить</button>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>
<body class="<?php echo $class; ?>">

<div class="col-xs-12 col-sm-12 col-md-12 col-lg-12 back">
    <div class="logo  col-sm-5 col-md-5 col-lg-6">
            <?php if ($logo) { ?>
            <a href="<?php echo $home; ?>"><img src="<?php echo $logo; ?>" title="<?php echo $name; ?>"
                                            alt="<?php echo $name; ?>" class="img-responsive"/></a>
    </div>
    <div class=" col-sm-7 col-md-7 col-lg-6 ">
        <div class="col-xs-3 buttonm">
            <div  > <img src='../../../../../../admin/view/image/menu.png'  onclick="fff();" class=" active "id ="men" /> </div>
            <div  > <img src='../../../../../../admin/view/image/menu1.png'  onclick="www();" id ="men1"  /> </div>

        </div>

    <div class="col-xs-9 col-sm-12 mobright">
        <div  class="block2" >

            <button class="button"><img src="../../../../../../admin/view/image/icon.png">
                <span  data-toggle="modal" data-target="#contactForm_en">Передзвоните мне</span>
            </button>

        </div>
            <div class="block1 ">
                                <div class="tell">
                                    <?php echo $telephone; ?><?php  ?>
                                </div>
                                <div class="dob ">
                                    <?php echo $config_dob; ?><?php } ?>
                                 </div>
             </div>
        <div  class="block2mob" >
            <button class="button"><img src="../../../../../../admin/view/image/icon.png">
                <span  data-toggle="modal" data-target="#contactForm_en">Передзвоните мне</span>
            </button>
        </div>

    </div>
    </div>
    <div style="clear:both;"></div>
    </div>
<div style="clear:both;"></div>
<div class="container no-padding">
     <div class=" menue col-sm-12 no-padding" >
         <ul class="nav nav-tabs menue_golovne">
             <li ><a class="text " href="<?php echo $home; ?>">Главная</a></li>
             <li class=" dropdown ">
                 <a class="dropdown-toggle text dropMenuClick" data-toggle="dropdown"   href="#">Продукция
                         <div class="menu_arrow" ><img src="/admin/view/image/onblack.png" ></div>
                 <ul class="dropdown-menu">
                     <div class="wrap  vupad_header">
                     <?php foreach ($categories as $category ){ ?>
                     <li><a   href="<?php echo $category['href']; ?>" >
                        <?php echo $category['name'];?></a></li>
      <?php  }?>
             </ul>
                 <?php  ?>
             </li>
             <li><a class="text" href="#">Скачать прайс</a></li>

             <li><a class="text" href="index.php?route=information/kachestvo">Качество</a></li>
             <li><a class="text" href="index.php?route=information/faq">Вопросы</a></li>
             <li><a class="text" href="index.php?route=information/contact">Контакты</a></li>

         </ul>
     </div>
</div>

<div class="logo2 col-xs-12  " id="logo12">
    <?php if ($logo) { ?>
    <a href="<?php echo $home; ?>"><img  src="<?php echo $logo; ?>"   title="<?php echo $name; ?>"
                                        alt="<?php echo $name; }?>" class="img-responsive"/></a>
</div>
<div id="divv"> </div>
<div class="col-xs-12  hidden-sm hidden-md hidden-lg hidden-xl  menujs panel-group" id ="ttt" class="mb">
            <ul class="nav navbar-nav">
                <li><a class="text " href="<?php echo $home; ?>">Главная</a></li>
                <li class="dropdown">
                    <a class=" text dropdown-toggle dropMenuClickmob" data-toggle="dropdown" href="#">Продукция
                        <div class="menu_arrowmob" ><img src="/admin/view/image/on.png" ></div>
                    <ul class="dropdown-menu menuemobvup">
                        <?php foreach ($categories as $category ){ ?>
                        <li><a href="<?php echo $category['href']; ?>">
                                <?php echo $category['name']; ?></a></li>
                        <?php }  ?>
                    </ul>
                </li>
                <li><a class="text" href="#">Скачать прайс</a></li>
                <li><a class="text" href="index.php?route=information/kachestvo">Качество</a></li>
                <li><a class="text" href="index.php?route=information/faq">Вопросы</a></li>
                <li><a class="text" href="index.php?route=information/contact">Контакты</a></li>
            </ul>
</div>
    <div style="clear:both;"></div>
</div>
<div style="clear:both;"></div>

<!--
<header>
  <div class="container">
    <div class="row">
      <div class="col-sm-4">
        <div id="logo">
          <?php if ($logo) { ?>
          <a href="<?php echo $home; ?>"><img src="<?php echo $logo; ?>" title="<?php echo $name; ?>" alt="<?php echo $name; ?>" class="img-responsive" /></a>
          <?php } else { ?>
          <h1><a href="<?php echo $home; ?>"><?php echo $name; ?></a></h1>
          <?php } ?>
        </div>
      </div>
      <div class="col-sm-5"><?php echo $search; ?>
      </div>
      <div class="col-sm-3"><?php echo $cart; ?></div>
    </div>
  </div>
</header>
<?php if ($categories) { ?>
 <!-- <nav id="menu" class="navbar">
    <div class="navbar-header"><span id="category" class="visible-xs"><?php echo $text_category; ?></span>
      <button type="button" class="btn btn-navbar navbar-toggle" data-toggle="collapse" data-target=".navbar-ex1-collapse"><i class="fa fa-bars"></i></button>
    </div>
    <div class="collapse navbar-collapse navbar-ex1-collapse">
      <ul class="nav navbar-nav">
        <?php foreach ($categories as $category) { ?>
        <?php if ($category['children']) { ?>
        <li class="dropdown"><a href="<?php echo $category['href']; ?>" class="dropdown-toggle" data-toggle="dropdown"><?php echo $category['name']; ?></a>
          <div class="dropdown-menu">
            <div class="dropdown-inner">
              <?php foreach (array_chunk($category['children'], ceil(count($category['children']) / $category['column'])) as $children) { ?>
              <ul class="list-unstyled">
                <?php foreach ($children as $child) { ?>
                <li><a href="<?php echo $child['href']; ?>"><?php echo $child['name']; ?></a></li>
                <?php } ?>
              </ul>
              <?php } ?>
            </div>
            <a href="<?php echo $category['href']; ?>" class="see-all"><?php echo $text_all; ?> <?php echo $category['name']; ?></a> </div>
        </li>
        <?php } else { ?>
        <li><a href="<?php echo $category['href']; ?>"><?php echo $category['name']; ?></a></li>
        <?php } ?>
        <?php } ?>
      </ul>
    </div>
  </nav> -->
</div>
<?php } ?>

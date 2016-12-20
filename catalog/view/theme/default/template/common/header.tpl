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
    <script src="catalog/view/javascript/head_js.js" type="text/javascript"></script>

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
            <div class="modal-header" style="border: 0">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
            </div>
            <!-- Основное содержимое модального окна -->
            <div class="modal-body" style="text-align: center;">
                <div class="modal-title-style">MESSAGE</div>
                <div>
                    <form id="contactForm" action="" method="post">
                        <ul id="errorMasege" style="padding-left: 0">
                            <span style="display: none; color: red" class="row name">Некоректно заполнено Имя пользователя</span>
                            <span style="display: none; color: red" class="row telephone ">Некоректно заполнено email</span>
                            <span style="display: none; color: red" class="row message ">Минимальная длина сообщения десеть знаков</span>
                        </ul>
                        <div class="row modal-div-input-stile">
                            <input class="modal-input-style contactItem" id="name" name="name" type="text" placeholder="NAME">
                        </div>
                        <div class="row modal-div-input-stile">
                            <input class="modal-input-style contactItem" id="email" name="email" type="text" placeholder="EMAIL">
                        </div>
                        <div class="row modal-div-input-stile">
                            <textarea  name="message" placeholder="MESSAGE" rows="5" id="message" class="contactItem modal-textarea-style"></textarea>
                        </div>
                        <button id="sendMessage" type="button" class="btn modal-btn-style">Send message</button>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>
<body class="<?php echo $class; ?>">

<div class="col-xs-12 col-sm-12 col-md-12 col-lg-12 back">
    <div class="logo  col-sm-5 col-md-6 col-lg-7">
            <?php if ($logo) { ?>
            <a href="<?php echo $home; ?>"><img src="<?php echo $logo; ?>" title="<?php echo $name; ?>"
                                            alt="<?php echo $name; ?>" class="img-responsive"/></a>
    </div>
    <div class=" col-sm-7 col-md-6 col-lg-5 ">
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
                                <div class="tell ">
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
<div class="container">
     <div class=" menue col-sm-12 " >
         <ul class="nav nav-tabs menue_golovne">
             <li ><a class="text " href="<?php echo $home; ?>">Главная</a></li>
             <li class=" dropdown ">
                 <a class="dropdown-toggle text dropMenuClick" data-toggle="dropdown"   href="#">Продукция
                         <div class="menu_arrow" ><img src="/admin/view/image/onblack.png" ></div>
                 <ul class="dropdown-menu">
                     <div class="wrap">
                     <?php foreach ($categories as $category ){ ?>
                     <li><a  href="<?php echo $category['href']; ?>" >
                        <?php echo $category['name'];?></a></li>
      <?php  }?>
             </ul>
                 <?php  ?>
             </li>
             <li><a class="text" href="#">Скачать прайс</a></li>
             <li><a class="text" href="#">Качество</a></li>
             <li><a class="text" href="#">Вопросы</a></li>
             <li><a class="text" href="#">Контакты</a></li>
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
                <li><a class="text" href="#">Качество</a></li>
                <li><a class="text" href="#">Вопросы</a></li>
                <li><a class="text" href="#">Контакты</a></li>
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
<script>
    Skip to content
    This repository
    Search
    Pull requests
    Issues
    Gist
    @Nazar2306
    Watch 6
    Star 0
    Fork 0 DatsivStepan/adastra
    Code  Issues 0  Pull requests 0  Projects 0  Wiki  Pulse  Graphs
    Branch: master Find file Copy pathadastra/catalog/view/javascript/header.js
    e48882b  20 hours ago
    Vasyl Hlado Fix contact modal form
    0 contributors
    RawBlameHistory
    131 lines (127 sloc)  3.91 KB
    $(document).ready(function () {
        $('#products').on('click', function () {
            $('#product_1').toggleClass('fa-angle-up');
            $('#product_1').toggleClass('fa-angle-down');
            $('#products_id').slideToggle("fast");
        });
        $('#products_id_md').on('click', function () {
            console.log('awdwd');
            $('#products_md').slideToggle("fast");
        });
        /*	$("#contact").click(function() {
         $("#myModal").modal('show');
         });
         */
        $("#phone_id").click(function() {
            $('#id_phone').slideToggle("fast");
        });


        function checkForm(id) {
            if(typeof id != 'undefined'){
                if($('#'+id).val() == ''){
                    return 0;
                }
            }
            switch (id) {
                case 'name':
                    if (!($('#' + id).val().match(/^[a-zA-Zа-яА-Я]+$/)) || ($('#name').val().length < 3)) {
                        $('#errorMasege > .' + id).text('Некоректно заполнено Имя пользователя');
                        $('#' + id).css('border', '1px solid red');
                        $('#errorMasege > .' + id).show();
                    } else {
                        $('#errorMasege > .' + id).text('');
                        $('#' + id).css('border', '1px solid green');
                        $('#errorMasege > .' + id).hide();
                    }
                    break;
                case 'email':
                    if (!($('#' + id).val().match(/^([a-z0-9_\.-])+@[a-z0-9-]+\.([a-z]{2,4}\.)?[a-z]{2,4}$/i))) {
                        $('#errorMasege > .' + id).text('Некоректно заполнено Email');
                        $('#' + id).css('border', '1px solid red');
                        $('#errorMasege > .' + id).show();
                    } else {
                        $('#errorMasege > .' + id).text('');
                        $('#' + id).css('border', '1px solid green');
                        $('#errorMasege > .' + id).hide();
                    }
                    break;
                case 'message':
                    if (!($('#' + id).val().length >= 10)) {
                        $('#errorMasege > .' + id).text('Минимальная длина сообщения десеть знаков');
                        $('#' + id).css('border', '1px solid red')
                        $('#errorMasege > .' + id).show();
                    } else {
                        $('#errorMasege > .' + id).text('');
                        $('#' + id).css('border', '1px solid green');
                        $('#errorMasege > .' + id).hide();
                    }
                    break;
                default:
                    var errorCount = 0;
                    if (!($('#name').val().match(/^[a-zA-Zа-яА-Я]+$/))) {
                        $('#name').css('border', '1px solid red');
                        errorCount++;
                        $('#errorMasege > .name').show();
                    } else {
                        $('#errorMasege > .name').text('');
                        $('#name').css('border', '1px solid green');
                        $('#errorMasege > .name').hide();
                    }
                    if (!($('#email').val().match(/^([a-z0-9_\.-])+@[a-z0-9-]+\.([a-z]{2,4}\.)?[a-z]{2,4}$/i))) {
                        $('#email').css('border', '1px solid red');
                        errorCount++;
                        $('#errorMasege > .email').show();
                    } else {
                        $('#errorMasege > .email').text('');
                        $('#email').css('border', '1px solid green');
                        $('#errorMasege > .email').hide();
                    }
                    if (!($('#message').val().length >= 10)) {
                        $('#message').css('border', '1px solid red');
                        errorCount++;
                        $('#errorMasege > .message').show();
                    } else {
                        $('#errorMasege > .message').text('');
                        $('#message').css('border', '1px solid green');
                        $('#errorMasege > .message').hide();
                    }
                    if (errorCount == 0) {
                        return true;
                    } else {
                        return false;
                    }
                    break;
            }
        }

        $('.contactItem').on('blur', function () {
            console.log($(this).attr('id'));
            checkForm($(this).attr('id'));
        });

        $('#sendMessage').on('click', function (even) {
            even.preventDefault();
            if (checkForm()) {
                var res = $('#contactForm').serializeArray();
                console.log(res);
                var arr = {};
                $.each(res, function (result) {
                    var $index = res[result].name;
                    arr[$index] = res[result].value;
                });
                $('#name').val('');
                $('#email').val('');
                $('#message').val('');
                swal("Сообщение отправлено", "", "success");
                $('#contactForm_en').removeClass('in');
                $('.modal-backdrop').removeClass('in');
                $.ajax({
                    url: 'index.php?route=common/header/contactForm',
                    type: 'post',
                    dataType: 'json',
                    data: arr,
                    success: function (data) {

                    }
                });
            } else {
                console.log('Incorrectly completed forms');
            }
        });
    });
</script>
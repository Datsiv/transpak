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

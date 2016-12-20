<?php echo $header; ?>
<div class="container-fluid no-padding">
  <ul class="breadcrumb_contact hidden-xs  col-sm-12 col-md-12 col-lg-12" style="padding-left: 8%;">
    <?php foreach ($breadcrumbs as $breadcrumb) { ?>
    <?php if ($breadcrumb ['href']==('')){ ?>
    <li class="breadcrumb_text" ><?php echo $breadcrumb['text']; ?></li>
    <?php }else{ ?>
    <li class="breadcrumb_text" style="padding-right: 16px;background: url('../../../catalog/view/theme/default/image/strilka.png') right center no-repeat;background-size: 8px;"
    ><a class="text_np_20" href="<?php echo $breadcrumb['href']; ?>"
       ><?php echo $breadcrumb['text']; ?></a>
    </li>
    <?php } ?>
    <?php } ?>
  </ul>
    <?php echo $column_left; ?>
    <?php if ($column_left && $column_right) { ?>
    <?php $class = 'col-sm-6'; ?>
    <?php } elseif ($column_left || $column_right) { ?>
    <?php $class = 'col-sm-9'; ?>
    <?php } else { ?>
    <?php $class = 'col-sm-12'; ?>
    <?php } ?>
    <div id="content" class="<?php echo $class; ?> no-padding">
      <h1 class="hidden-xs category-text category_text_product"><?php echo $heading_title; ?></h1>
        <?php echo $content_top; ?>
      <?php if ($thumb || $description) { ?>
      <!--<div class="row">
        <?php if ($thumb) { ?>
        <div class="col-sm-2"><img src="<?php echo $thumb; ?>" alt="<?php echo $heading_title; ?>" title="<?php echo $heading_title; ?>" class="img-thumbnail" /></div>
        <?php } ?>
        <?php if ($description) { ?>
        <div class="col-sm-10"><?php echo $description; ?></div>
        <?php } ?>
      </div>
      <hr>
      <?php } ?>
      <?php if ($categories) { ?>
      <h3><?php echo $text_refine; ?></h3>
      <?php if (count($categories) <= 5) { ?>
      <div class="row">
        <div class="col-sm-3">
          <ul>
            <?php foreach ($categories as $category) { ?>
            <li><a href="<?php echo $category['href']; ?>"><?php echo $category['name']; ?></a></li>
            <?php } ?>
          </ul>
        </div>
      </div>
      <?php } else { ?>
      <div class="row">
        <?php foreach (array_chunk($categories, ceil(count($categories) / 4)) as $categories) { ?>
        <div class="col-sm-3">
          <ul>
            <?php foreach ($categories as $category) { ?>
            <li><a href="<?php echo $category['href']; ?>"><?php echo $category['name']; ?></a></li>
            <?php } ?>
          </ul>
        </div>
        <?php } ?>
      </div>
      <?php } ?>
      <?php } ?>-->
      <?php if ($products) { ?>
      <!--<p><a href="<?php echo $compare; ?>" id="compare-total"><?php echo $text_compare; ?></a></p>
      <div class="row">
        <div class="col-md-4">
          <div class="btn-group hidden-xs">
            <button type="button" id="list-view" class="btn btn-default" data-toggle="tooltip" title="<?php echo $button_list; ?>"><i class="fa fa-th-list"></i></button>
            <button type="button" id="grid-view" class="btn btn-default" data-toggle="tooltip" title="<?php echo $button_grid; ?>"><i class="fa fa-th"></i></button>
          </div>
        </div>
        <div class="col-md-2 text-right">
          <label class="control-label" for="input-sort"><?php echo $text_sort; ?></label>
        </div>
        <div class="col-md-3 text-right">
          <select id="input-sort" class="form-control" onchange="location = this.value;">
            <?php foreach ($sorts as $sorts) { ?>
            <?php if ($sorts['value'] == $sort . '-' . $order) { ?>
            <option value="<?php echo $sorts['href']; ?>" selected="selected"><?php echo $sorts['text']; ?></option>
            <?php } else { ?>
            <option value="<?php echo $sorts['href']; ?>"><?php echo $sorts['text']; ?></option>
            <?php } ?>
            <?php } ?>
          </select>
        </div>
        <div class="col-md-1 text-right">
          <label class="control-label" for="input-limit"><?php echo $text_limit; ?></label>
        </div>
        <div class="col-md-2 text-right">
          <select id="input-limit" class="form-control" onchange="location = this.value;">
            <?php foreach ($limits as $limits) { ?>
            <?php if ($limits['value'] == $limit) { ?>
            <option value="<?php echo $limits['href']; ?>" selected="selected"><?php echo $limits['text']; ?></option>
            <?php } else { ?>
            <option value="<?php echo $limits['href']; ?>"><?php echo $limits['text']; ?></option>
            <?php } ?>
            <?php } ?>
          </select>
        </div>
      </div>-->
      <br />
      <div class="col-sm-12 pad_tovar" style="padding: 3% 6% 3% 6%;">
        <?php foreach ($products as $product) { ?>
        <div class="product-layout product-list col-xs-12">
          <div class="product-thumb product1" >
              <div class="col-lg-12 no-padding">
                <div class="col-lg-4 col-md-4 col-sm-4 col-xs-12 image image_back_stile"
                     style="background: url('../../../image/<?php echo $product['thumb']; ?>')center no-repeat"><a href="<?php echo $product['href']; ?>" alt="<?php echo $product['name']; ?>" title="<?php echo $product['name']; ?>" class="img-responsive" /></a></div>
                  <div class="col-lg-8 col-md-8 col-sm-8 col-xs-12">
                    <div class="col-lg-7 col-md-7 col-sm-9 caption" >
                      <h4 class="product-title"><a href="<?php echo $product['href']; ?>"><?php echo $product['name']; ?></a></h4>
                      <?php if ($product['attr_groups']) { ?>
                          <?php foreach ($product['attr_groups'] as $attr_group) { ?>
                            <?php foreach ($attr_group['attribute'] as $attribute) { ?>
                        <div class="div_name_2">
                              <span class="span_name"><?php echo $attribute['name']; ?></span>
                              <span class="span_name_2"><?php echo $attribute['text']; ?><br></span>
                        </div>
                            <?php } ?>
                          <?php } ?>
                      <?php } ?>
                      <?php if ($product['rating']) { ?>
                      <div class="rating">
                        <?php for ($i = 1; $i <= 5; $i++) { ?>
                        <?php if ($product['rating'] < $i) { ?>
                        <span class="fa fa-stack"><i class="fa fa-star-o fa-stack-2x"></i></span>
                        <?php } else { ?>
                        <span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i><i class="fa fa-star-o fa-stack-2x"></i></span>
                        <?php } ?>
                        <?php } ?>
                      </div>
                      <?php } ?>
                      <?php if ($product['price']) { ?>
                      <p class="product-price">цена
                        <?php if (!$product['special']) { ?>
                        <?php echo $product['price']; ?>
                        <?php } else { ?>
                        <span class="price-new"><?php echo $product['special']; ?></span> <span class="price-old"><?php echo $product['price']; ?></span>
                        <?php } ?>
                        <?php if ($product['tax']) { ?>
                        <span class="price-tax"><?php echo $text_tax; ?> <?php echo $product['tax']; ?></span>
                        <?php } ?>
                      </p>
                      <?php } ?>
                    </div>
                    <div class=" col-lg-5 col-md-5 col-sm-3 bottom_zak">
                      <button type="button"  class=" btn btn-primary zakbtn" onclick="cart.add('<?php echo $product['product_id']; ?>', '<?php echo $product['minimum']; ?>');">
                        <span class="">Заказать</span>
                      </button>
                    </div>
                  </div>
            </div>
          </div>
        </div>
        <?php } ?>
      </div><div style="clear:both;"></div>
      <?php } ?>
      <?php if (!$categories && !$products) { ?>
      <p><?php echo $text_empty; ?></p>
      <div class="buttons">
        <div class="pull-right"><a href="<?php echo $continue; ?>" class="btn btn-primary"><?php echo $button_continue; ?></a></div>
      </div>
      <?php } ?>
      <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12" style="padding-left: 6%;">
        <div class="col-sm-12 category-text_2">Преимущества защитных уголков</div>
          <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 pad_np_20">
              <ul>
                  <div class="col-lg-4 col-md-4 col-sm-4 col-xs-12">
                      <li class="span_text_pr"><span>Сокращение затрат  на упаковку и логистику</span></li>
                  </div>
                  <div class="col-lg-4 col-md-4 col-sm-4 col-xs-12">
                      <li class="span_text_pr"><span>Высокая стойкость  к агрессивным средствам</span></li>
                  </div>
                  <div class="col-lg-4 col-md-4 col-sm-4 col-xs-12">
                      <li class="span_text_pr"><span>Простая и удобная система  крепления</span></li>
                  </div>
              </ul>
          </div>
          <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12" style="padding: 0px 0 61px 0;">
              <ul>
                  <div class="col-lg-4 col-md-4 col-sm-4 col-xs-12">
                      <li class="span_text_pr"><span>Высокая износостойкость  и линейная прочность</span></li>
                  </div>
                  <div class="col-lg-4 col-md-4 col-sm-4 col-xs-12">
                      <li class="span_text_pr"><span>Долговечность</span></li>
                  </div>
              </ul>
          </div>
      </div>
      <?php if ($all_categories) { ?>
      <h1 class="category-text">Возможно вас заинтересует</h1>
      <div class="">
        <div class="col-sm-12 col-md-12 col-lg-12 col-xl-12 no-padding no-margin">
          <?php foreach ($all_categories as $category) { ?>
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
      <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 no-padding">
          <div class="col-lg-10 col-md-10 col-sm-10 col-xs-12 no-padding">
                <?php echo $content_bottom; ?>
          </div>
          <div class="col-lg-2 col-md-2 col-sm-2 col-xs-0"></div>
      </div>
    <?php // echo $column_right; ?>
</div>
<?php echo $footer; ?>

<link href="catalog/view/theme/default/stylesheet/kachestvo.css" rel="stylesheet">
<script src="catalog/view/javascript/jquery/jquery-2.1.1.min.js" type="text/javascript"></script>
<script src="catalog/view/javascript/home_js.js" type="text/javascript"></script>
<?php echo $header; ?>
<div class="container">
	<div class="breadcrumbmy">
		<?php $i=0; foreach ($breadcrumbs as $breadcrumb) { ?>
		<?php if($i<1){ ?>
		<a href="<?php echo $breadcrumb['href']; ?>" class="breadcrumbmya"><?php echo $breadcrumb['text']; ?></a><span>/</span>
		<?php }else{ ?>
		<a href="<?php echo $breadcrumb['href']; ?>">Качество</a>
		<?php }?>
		<?php $i++; } ?>
	</div>
	<div class="container no-padding_class_mob">
		<div id="content"><?php echo $content_top; ?>
                    <div class="container">
			<div class="row title_kachestvo">
          <!--<h2> <?php echo $description1; ?> </h2>
            </div>
            <div class="row text_kachestvo">
           <?php echo $description2; ?>           
            </div>
            <div class="row title2_kachestvo">
           <h4><?php echo $description3; ?> </h4>          
            </div>
		</div>
			<div class="col-xs-12 no-padding">
				<?php 
				 for ($i=1; $i <= 12; $i++)
                {
                 $imagetext = 'image'.$i;
                 $pdfname = 'pdf'.$i;
                 if (strlen($image[$imagetext]) >3){
               
				?>
	                    <div class="fiveparts img_kachestvo col-xs-6 col-sm-3 ">
							<div class="image ">
										<img src="<?php echo 'image/'.$image[$imagetext]; ?>" class="img-responsive ">
								</div>
						</div>

				<?php } } ?>
			</div>
				
					<div class="col-xs-12">
				<?php  for ($i=1; $i <= 12; $i++){ $pdfname = 'pdf'.$i; ?>
	            <?php if (array_key_exists($pdfname, $pdf)) {           			
                        $size = filesize(DIR_IMAGE.$pdf[$pdfname]);
                        $size = $size/1000000;
                        $parts = explode("/", $pdf[$pdfname]);
	            ?>
				<div class="pdf pdf_kachestvo col-xs-12 no-padding col-sm-6 no-padding" >
					<a target="_blank" href="<?php echo 'image/'.$pdf[$pdfname]; ?>">
                                            <div class="col-lg-1 img_img_pdf_a_href">
                                                <img src="../image/pdf.png" alt="">
                                            </div>
                                            <div class="col-lg-11 pdf_img_text_a_href">
                                                <?php echo  preg_replace("/(.pdf)(.*)/","", end($parts)); ?> (<?php echo round($size, 2); ?> мб)
                                            </div>
					</a>
				</div>

						<?php } ?>

				<?php } ?>
			</div>
	-->	
                            <h2> <?php echo $description1; ?> </h2>
                        </div>
                        <div class="row text_kachestvo">
                            <?php echo $description2; ?>           
                        </div>
                        <div class="row title2_kachestvo">
                            <h4><?php echo $description3; ?> </h4>          
                        </div>
                    </div>
                    <div class="col-xs-12 no-padding">
                        <?php 
                        for ($i=1; $i <= 12; $i++)
                        {
                            $imagetext = 'image'.$i;
                            $pdfname = 'pdf'.$i;
                            if (strlen($image[$imagetext]) >3)
                            {
                            ?>
                                <div class="fiveparts img_kachestvo col-xs-6 col-sm-3 ">
                                    <div class="image ">
                                        <img src="<?php echo 'image/'.$image[$imagetext]; ?>" class="img-responsive ">
                                    </div>
                                </div>
				<?php } 
                        } ?>
                    </div>				
                    <div class="col-xs-12 no-padding">
                        <?php  for ($i=1; $i <= 12; $i++){ 
                            $pdfname = 'pdf'.$i; 
                            if (array_key_exists($pdfname, $pdf)) {           			
                                $size = filesize(DIR_IMAGE.$pdf[$pdfname]);
                                $size = $size/1000000;
                                $parts = explode("/", $pdf[$pdfname]);
                            ?>
                                <div class="pdf pdf_kachestvo col-xs-12 no-padding col-sm-6 no-padding" >
                                    <a target="_blank" href="<?php echo 'image/'.$pdf[$pdfname]; ?>">
                                        <div class="col-xs-1 col-sm-2 col-md-1 col-lg-1 img_img_pdf_a_href">
                                            <img src="../image/img_pdf.png" alt="">
                                        </div>
                                        <div class="col-xs-10 col-sm-10 col-md-11 col-lg-11 pdf_img_text_a_href">
                                            <?php echo  preg_replace("/(.pdf)(.*)/","", end($parts)); ?> (<?php echo round($size, 2); ?> мб)
                                        </div>
                                    </a>
                                </div><?php
                            }
                        } ?>
                    </div>
			    <div class="col-xs-12 no-padding">
                                <div class="col-sm-12 seo">
                                    <div class="col-xs-12 no-padding">
					<h4><?php echo $heading_titleseo ?></h4>
					<?php echo $descriptionseo; ?>
                                    </div>
                                    <a  class="hidden-sm hidden-md hidden-lg hidden-xl  text dropdown-toggle " data-toggle="dropdown" id="vypad" href="#"> <p id="hiden">Читать далее</p></a>
                                    <ul class="hidden-sm hidden-md hidden-lg hidden-xl dropdown-menu vupad_text1 ">
                                            Из полиэфирного волокна, в очередной раз подтвердив качество реализуемой продукции. На основании протокола испытаний был получен сертификат соответствия для упаковочной крепежной ленты. Также компанией «ИнтерТрансПак» были разработаны Технические Условия для изготовления упаковочной крепежной ленты Strap 2000 и Lash 2000
                                    </ul>
                                </div>
                            </div>
		</div>
	</div>
</div>
<?php echo $footer; ?>
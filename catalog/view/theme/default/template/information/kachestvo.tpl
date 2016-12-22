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
	<div class="row">
		<div id="content"><?php echo $content_top; ?>

			<div class="row">
          <h2> <?php echo $description1; ?> </h2>
            </div>
            <div class="row">
           <?php echo $description2; ?>           
            </div>
            <div class="row">
           <h4><?php echo $description3; ?> </h4>          
            </div>
		
			<div class="row">					
				<?php 
				 for ($i=1; $i <= 12; $i++)
                {
                 $imagetext = 'image'.$i;
                 $pdfname = 'pdf'.$i;
                 if (strlen($image[$imagetext]) >3){
               
				?>
	                    <div class="fiveparts">										
								<div class="image">
										<img src="<?php echo 'image/'.$image[$imagetext]; ?>" class="img-responsive">
								</div>
						</div>
				
				<?php } } ?>
			</div>
				
					<div class="row">					
				<?php  for ($i=1; $i <= 12; $i++){ $pdfname = 'pdf'.$i; ?>
	            <?php if (array_key_exists($pdfname, $pdf)) {           			
                        $size = filesize(DIR_IMAGE.$pdf[$pdfname]);
                        $size = $size/1000000;
                        $parts = explode("/", $pdf[$pdfname]);
                       
	            ?>					
								<div class="pdf">
                                    <a target="_blank" href="<?php echo 'image/'.$pdf[$pdfname]; ?>"><img src="../image/pdf.png" alt=""><?php echo  preg_replace("/(.pdf)(.*)/","", end($parts)); ?> (<?php echo round($size, 2); ?> мб)
										</a>
								</div>
						<?php } ?>
				
				<?php } ?>
			</div>
		
			    <div class="row">
     <div class="col-sm-12 seo">
     
								<h4><?php echo $heading_titleseo ?></h4>
								<?php echo $descriptionseo; ?>


         
         </div>
         </div>
		</div>
	</div>
</div>
<?php echo $footer; ?>
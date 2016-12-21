<?php echo $header; ?><?php echo $column_left; ?>
<div id="content">
	<div class="page-header">
		<div class="container-fluid">
			<div class="pull-right">
				<button type="submit" form="form-news" data-toggle="tooltip" title="<?php echo $button_save; ?>" class="btn btn-primary"><i class="fa fa-save"></i></button>
				<a href="<?php echo $cancel; ?>" data-toggle="tooltip" title="<?php echo $button_cancel; ?>" class="btn btn-default"><i class="fa fa-reply"></i></a></div>
				<h1><?php echo $heading_title; ?></h1>
				<ul class="breadcrumb">
					<?php foreach ($breadcrumbs as $breadcrumb) { ?>
					<li><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a></li>
					<?php } ?>
				</ul>
			</div>
		</div>
		<div class="container-fluid">
			<?php if ($error_warning) { ?>
			<div class="alert alert-danger"><i class="fa fa-exclamation-circle"></i> <?php echo $error_warning; ?>
				<button type="button" class="close" data-dismiss="alert">&times;</button>
			</div>
			<?php } ?>
			<div class="panel panel-default">
				<div class="panel-heading">
					<h3 class="panel-title"><i class="fa fa-pencil"></i> <?php echo $text_form; ?></h3>
				</div>
				<div class="panel-body">
					<form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" id="form-news" class="form-horizontal">
						<ul class="nav nav-tabs">
							<li class="active"><a href="#tab-general" data-toggle="tab"><?php echo $tab_general; ?></a></li>
							<li><a href="#tab-data" data-toggle="tab"><?php echo $tab_data; ?></a></li>
						</ul>
						<div class="tab-content">
							<div class="tab-pane active" id="tab-general">
								<ul class="nav nav-tabs" id="language">
									<?php foreach ($languages as $language) { ?>
									<li><a href="#language<?php echo $language['language_id']; ?>" data-toggle="tab"><img src="view/image/flags/<?php echo $language['image']; ?>" title="<?php echo $language['name']; ?>" /> <?php echo $language['name']; ?></a></li>
									<?php } ?>
								</ul>
								<div class="tab-content">
									<?php foreach ($languages as $language) { ?>
									<div class="tab-pane" id="language<?php echo $language['language_id']; ?>">
										<div class="form-group required">
											<label class="col-sm-2 control-label" for="input-title<?php echo $language['language_id']; ?>"><?php echo $entry_title; ?></label>
											<div class="col-sm-10">
												<input type="text" name="news_description[<?php echo $language['language_id']; ?>][title]" value="<?php echo isset($news_description[$language['language_id']]) ? $news_description[$language['language_id']]['title'] : ''; ?>" placeholder="<?php echo $entry_title; ?>" id="input-title<?php echo $language['language_id']; ?>" class="form-control" />
												<?php if (isset($error_title[$language['language_id']])) { ?>
												<div class="text-danger"><?php echo $error_title[$language['language_id']]; ?></div>
												<?php } ?>
											</div>
										</div>
										<div class="form-group required">
											<label class="col-sm-2 control-label" for="input-meta-title<?php echo $language['language_id']; ?>"><?php echo $entry_meta_title; ?></label>
											<div class="col-sm-10">
												<input type="text" name="news_description[<?php echo $language['language_id']; ?>][meta_title]" value="<?php echo isset($news_description[$language['language_id']]) ? $news_description[$language['language_id']]['meta_title'] : ''; ?>" placeholder="<?php echo $entry_meta_title; ?>" id="input-meta-title<?php echo $language['language_id']; ?>" class="form-control" />
												<?php if (isset($error_meta_title[$language['language_id']])) { ?>
												<div class="text-danger"><?php echo $error_meta_title[$language['language_id']]; ?></div>
												<?php } ?>
											</div>
										</div>
										<div class="form-group required">
											<label class="col-sm-2 control-label" for="input-description<?php echo $language['language_id']; ?>"><?php echo $entry_description; ?></label>
											<div class="col-sm-10">
												<textarea name="news_description[<?php echo $language['language_id']; ?>][description]" placeholder="<?php echo $entry_description; ?>" id="input-description<?php echo $language['language_id']; ?>" class="form-control"><?php echo isset($news_description[$language['language_id']]) ? $news_description[$language['language_id']]['description'] : ''; ?></textarea>
												<?php if (isset($error_description[$language['language_id']])) { ?>
												<div class="text-danger"><?php echo $error_description[$language['language_id']]; ?></div>
												<?php } ?>
											</div>
										</div>
									</div>
									<?php } ?>
								</div>
							</div>
							<div class="tab-pane" id="tab-data">
								<div class="form-group">
									<label class="col-sm-2 control-label"><?php echo $entry_store; ?></label>
									<div class="col-sm-10">
										<div class="well well-sm" style="height: 150px; overflow: auto;">
											<div class="checkbox">
												<label>
													<?php if (in_array(0, $news_store)) { ?>
													<input type="checkbox" name="news_store[]" value="0" checked="checked" />
													<?php echo $text_default; ?>
													<?php } else { ?>
													<input type="checkbox" name="news_store[]" value="0" />
													<?php echo $text_default; ?>
													<?php } ?>
												</label>
											</div>
											<?php foreach ($stores as $store) { ?>
											<div class="checkbox">
												<label>
													<?php if (in_array($store['store_id'], $news_store)) { ?>
													<input type="checkbox" name="news_store[]" value="<?php echo $store['store_id']; ?>" checked="checked" />
													<?php echo $store['name']; ?>
													<?php } else { ?>
													<input type="checkbox" name="news_store[]" value="<?php echo $store['store_id']; ?>" />
													<?php echo $store['name']; ?>
													<?php } ?>
												</label>
											</div>
											<?php } ?>
										</div>
									</div>
								</div>
								<div class="form-group">

									<label class="col-sm-12 text-center"><?php echo $entry_image; ?></label>
									<div class="col-sm-4"><a href="" id="thumb-image1" data-toggle="image" class="img-thumbnail"><img src="<?php echo $thumb1; ?>" alt="" title="" data-placeholder="<?php echo $placeholder; ?>" /></a>
									<input type="hidden" name="image1" value="<?php echo $image1; ?>" id="input-image1" />
								    </div>
								    <div class="col-sm-4"><a href="" id="thumb-image2" data-toggle="image" class="img-thumbnail"><img src="<?php echo $thumb2; ?>" alt="" title="" data-placeholder="<?php echo $placeholder; ?>" /></a>
									<input type="hidden" name="image2" value="<?php echo $image2; ?>" id="input-image2" />
								    </div>
								    <div class="col-sm-4"><a href="" id="thumb-image3" data-toggle="image" class="img-thumbnail"><img src="<?php echo $thumb3; ?>" alt="" title="" data-placeholder="<?php echo $placeholder; ?>" /></a>
									<input type="hidden" name="image3" value="<?php echo $image3; ?>" id="input-image3" />
								    </div>
								    <div class="col-sm-4"><a href="" id="thumb-image4" data-toggle="image" class="img-thumbnail"><img src="<?php echo $thumb4; ?>" alt="" title="" data-placeholder="<?php echo $placeholder; ?>" /></a>
									<input type="hidden" name="image4" value="<?php echo $image4; ?>" id="input-image4" />
								    </div>
								    <div class="col-sm-4"><a href="" id="thumb-image5" data-toggle="image" class="img-thumbnail"><img src="<?php echo $thumb5; ?>" alt="" title="" data-placeholder="<?php echo $placeholder; ?>" /></a>
									<input type="hidden" name="image5" value="<?php echo $image5; ?>" id="input-image5" />
								    </div>
								    <div class="col-sm-4"><a href="" id="thumb-image6" data-toggle="image" class="img-thumbnail"><img src="<?php echo $thumb6; ?>" alt="" title="" data-placeholder="<?php echo $placeholder; ?>" /></a>
									<input type="hidden" name="image6" value="<?php echo $image6; ?>" id="input-image6" />
								    </div>
								    <div class="col-sm-4"><a href="" id="thumb-image7" data-toggle="image" class="img-thumbnail"><img src="<?php echo $thumb7; ?>" alt="" title="" data-placeholder="<?php echo $placeholder; ?>" /></a>
									<input type="hidden" name="imag7" value="<?php echo $image7; ?>" id="input-image7" />
								    </div>
								    <div class="col-sm-4"><a href="" id="thumb-image8" data-toggle="image" class="img-thumbnail"><img src="<?php echo $thumb8; ?>" alt="" title="" data-placeholder="<?php echo $placeholder; ?>" /></a>
									<input type="hidden" name="image8" value="<?php echo $image8; ?>" id="input-image8" />
								    </div>
								    <div class="col-sm-4"><a href="" id="thumb-image9" data-toggle="image" class="img-thumbnail"><img src="<?php echo $thumb9; ?>" alt="" title="" data-placeholder="<?php echo $placeholder; ?>" /></a>
									<input type="hidden" name="image9" value="<?php echo $image9; ?>" id="input-image9" />
								    </div>
								    <div class="col-sm-4"><a href="" id="thumb-image10" data-toggle="image" class="img-thumbnail"><img src="<?php echo $thumb10; ?>" alt="" title="" data-placeholder="<?php echo $placeholder; ?>" /></a>
									<input type="hidden" name="image10" value="<?php echo $image10; ?>" id="input-image10" />
								    </div>
								    <div class="col-sm-4"><a href="" id="thumb-image11" data-toggle="image" class="img-thumbnail"><img src="<?php echo $thumb11; ?>" alt="" title="" data-placeholder="<?php echo $placeholder; ?>" /></a>
									<input type="hidden" name="image11" value="<?php echo $image11; ?>" id="input-image11" />
								    </div>
								    <div class="col-sm-4"><a href="" id="thumb-image12" data-toggle="image" class="img-thumbnail"><img src="<?php echo $thumb12; ?>" alt="" title="" data-placeholder="<?php echo $placeholder; ?>" /></a>
									<input type="hidden" name="image12" value="<?php echo $image12; ?>" id="input-image12" />
								    </div>
							</div>
							    <div class="form-group">
									<label class="col-sm-12 text-center">PDF</label>
									<div class="col-sm-4"><a href="" id="thumb-image13" data-toggle="image" class="img-thumbnail"><img src="<?php echo $thumbpdf1; ?>" alt="" title="" data-placeholder="<?php echo $placeholder; ?>" /></a><?php echo $pdftext1; ?>
									<input type="hidden" name="pdf1" value="<?php echo $thumbpdf1; ?>" id="input-image13" />
								    </div>
								    <div class="col-sm-4"><a href="" id="thumb-image14" data-toggle="image" class="img-thumbnail"><img src="<?php echo $thumbpdf2; ?>" alt="" title="" data-placeholder="<?php echo $placeholder; ?>" /></a><?php echo $pdftext2; ?>
									<input type="hidden" name="pdf2" value="<?php echo $thumbpdf2; ?>" id="input-image14" />
								    </div>
								    <div class="col-sm-4"><a href="" id="thumb-image15" data-toggle="image" class="img-thumbnail"><img src="<?php echo $thumbpdf3; ?>" alt="" title="" data-placeholder="<?php echo $placeholder; ?>" /></a><?php echo $pdftext3; ?>
									<input type="hidden" name="pdf3" value="<?php echo $thumbpdf3; ?>" id="input-image15" />
								    </div>
								    <div class="col-sm-4"><a href="" id="thumb-image16" data-toggle="image" class="img-thumbnail"><img src="<?php echo $thumbpdf4; ?>" alt="" title="" data-placeholder="<?php echo $placeholder; ?>" /></a><?php echo $pdftext4; ?>
									<input type="hidden" name="pdf4" value="<?php echo $thumbpdf4; ?>" id="input-image16" />
								    </div>
								    <div class="col-sm-4"><a href="" id="thumb-image17" data-toggle="image" class="img-thumbnail"><img src="<?php echo $thumbpdf5; ?>" alt="" title="" data-placeholder="<?php echo $placeholder; ?>" /></a><?php echo $pdftext5; ?>
									<input type="hidden" name="pdf5" value="<?php echo $thumbpdf5; ?>" id="input-image17" />
								    </div>
								    <div class="col-sm-4"><a href="" id="thumb-image18" data-toggle="image" class="img-thumbnail"><img src="<?php echo $thumbpdf6; ?>" alt="" title="" data-placeholder="<?php echo $placeholder; ?>" /></a><?php echo $pdftext6; ?>
									<input type="hidden" name="pdf6" value="<?php echo $thumbpdf6; ?>" id="input-image18" />
								    </div>
								    <div class="col-sm-4"><a href="" id="thumb-image19" data-toggle="image" class="img-thumbnail"><img src="<?php echo $thumbpdf7; ?>" alt="" title="" data-placeholder="<?php echo $placeholder; ?>" /></a><?php echo $pdftext7; ?>
									<input type="hidden" name="pdf7" value="<?php echo $thumbpdf7; ?>" id="input-image19" />
								    </div>
								    <div class="col-sm-4"><a href="" id="thumb-image20" data-toggle="image" class="img-thumbnail"><img src="<?php echo $thumbpdf8; ?>" alt="" title="" data-placeholder="<?php echo $placeholder; ?>" /></a><?php echo $pdftext8; ?>
									<input type="hidden" name="pdf8" value="<?php echo $thumbpdf8; ?>" id="input-image20" />
								    </div>
								    <div class="col-sm-4"><a href="" id="thumb-image21" data-toggle="image" class="img-thumbnail"><img src="<?php echo $thumbpdf9; ?>" alt="" title="" data-placeholder="<?php echo $placeholder; ?>" /></a><?php echo $pdftext9; ?>
									<input type="hidden" name="pdf9" value="<?php echo $thumbpdf9; ?>" id="input-image21" />
								    </div>
								    <div class="col-sm-4"><a href="" id="thumb-image22" data-toggle="image" class="img-thumbnail"><img src="<?php echo $thumbpdf10; ?>" alt="" title="" data-placeholder="<?php echo $placeholder; ?>" /></a><?php echo $pdftext10; ?>
									<input type="hidden" name="pdf10" value="<?php echo $thumbpdf10; ?>" id="input-image22" />
								    </div>
								     <div class="col-sm-4"><a href="" id="thumb-image23" data-toggle="image" class="img-thumbnail"><img src="<?php echo $thumbpdf11; ?>" alt="" title="" data-placeholder="<?php echo $placeholder; ?>" /></a><?php echo $pdftext11; ?>
									<input type="hidden" name="pdf11" value="<?php echo $thumbpdf11; ?>" id="input-image23" />
								    </div>
								     <div class="col-sm-4"><a href="" id="thumb-image24" data-toggle="image" class="img-thumbnail"><img src="<?php echo $thumbpdf12; ?>" alt="" title="" data-placeholder="<?php echo $placeholder; ?>" /></a><?php echo $pdftext12; ?>
									<input type="hidden" name="pdf12" value="<?php echo $thumbpdf12; ?>" id="input-image24" />
								    </div>
							</div>
								<div class="form-group">
									<label class="col-sm-2 control-label" for="input-status"><?php echo $entry_status; ?></label>
									<div class="col-sm-10">
										<select name="status" id="input-status" class="form-control">
											<?php if ($status) { ?>
											<option value="1" selected="selected"><?php echo $text_enabled; ?></option>
											<option value="0"><?php echo $text_disabled; ?></option>
											<?php } else { ?>
											<option value="1"><?php echo $text_enabled; ?></option>
											<option value="0" selected="selected"><?php echo $text_disabled; ?></option>
											<?php } ?>
										</select>
									</div>
								</div>
							</div>
						</div>
					</form>
				</div>
			</div>
		</div>
		<script type="text/javascript"><!--
		<?php foreach ($languages as $language) { ?>
			<?php if ($ckeditor) { ?>
					ckeditorInit('input-description<?php echo $language['language_id']; ?>', '<?php echo $token; ?>');
				<?php } else { ?>
					$('#input-description<?php echo $language['language_id']; ?>').summernote({
					height: 300
				});
			<?php } ?>
		<?php } ?>
		$('.date').datetimepicker({
			pickTime: false
		});
		$('#language a:first').tab('show');
	//--></script></div>
	<?php echo $footer; ?>
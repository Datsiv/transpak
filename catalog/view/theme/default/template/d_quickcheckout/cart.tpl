<!-- 
	Ajax Quick Checkout 
	v6.0.0
	Dreamvention.com 
	d_quickcheckout/cart.tpl 
-->

<script type="text/html" id="cart_template">

	<div class="panel panel-default1 <%= model.config.display ? '' : 'hidden' %> pan_def">
		<div class="panel-heading pan_hed">
			<h4 class="panel-title">
				<span class="text text3_black"><%= model.config.title %></span>
			</h4>
		</div>

		<div class="qc-checkout-product panel-body no-padding" >
			<% if(model.error){ %>
			<div class="alert alert-danger">
				<i class="fa fa-exclamation-circle"></i> <%= model.error %>
			</div>
			<% } %>

			<table class="table table-bordered qc-cart">
				<div id="table_cart" class="table_cart">
					<div class="cart_table_row  hidden-xs">
						<div class="table_cell1 qc-image qc_image32 <%= parseInt(model.config.columns.image) ? '' : 'hidden' %>"><?php echo $column_image; ?>:</div>
						<div class="table_cell1 qc-name qc_image32 <%= parseInt(model.config.columns.name) ? '' : 'hidden' %>"><?php echo $column_name; ?>:</div>
						<div class="table_cell1 qc-price qc_image32 hidden-xs <%= parseInt(model.config.columns.price) && model.show_price ? '' : 'hidden' %>"><?php echo $column_price; ?>:</div>
						<div class="table_cell1 qc-quantity qc_image32 <%= parseInt(model.config.columns.quantity) ? '' : 'hidden' %>"><?php echo $column_quantity; ?>:</div>
						<div class="table_cell1 qc-total qc_image32 <%= parseInt(model.config.columns.total) && model.show_price ? '' : 'hidden' %>"><?php echo $column_total; ?>:</div>
					</div>
				</div>

				<tbody>
				<% _.each(model.products, function(product) { %>
				<div id="table_cart" class="table_cart">
					<div class="col-lg-12 col-md-12 col-sm-12 hidden-xs cart_table_row clearfix clea_bord_top">
				<div class="qc-image  qc_image32 <%= parseInt(model.config.columns.image) ? '' : 'hidden' %> table_cell">
					<a  href="<%= product.href %>" data-container="body" data-toggle="popover" data-placement="top" data-content='<img src="<%= product.image %>" />' data-trigger="hover">
						<img src="<%= product.thumb %>" class="img-responsive img_res_0"/>
					</a>
				</div>

				<div class="qc-name qc_image32<%= parseInt(model.config.columns.name) ? '' : 'hidden' %> table_cell ">
					<a <%=  model.config.columns.image ? '' : 'rel="popup" data-help=\'<img src="' + product.image + '"/>\'' %>>
					<%= product.name %> <%= product.stock ? '' : '<span class="out-of-stock">***</span>' %>
					</a>
				</div>
				<div class="qc-price qc_image32 hidden-xs <%= parseInt(model.config.columns.price) && model.show_price  ? '' : 'hidden' %> table_cell "><%= product.price %></div>

				<div class="qc-quantity qc_image32 <%= parseInt(model.config.columns.quantity) ? '' : 'hidden' %>  table_cell ">
					<div class="input-group input-group-sm">
								<span class="input-group-btn">
									<button class=" decrease hidden-xs bot_or_ack33" data-product="<%= product.key %>"><i class="fa fa-chevron-down"></i></button>
								</span>
						<input type="text" data-mask="9?999999999999999" value="<%= product.quantity %>" class="qc-product-qantity form-control text-center bord_inputt" name="cart.<%= product.key %>"  data-refresh="2"/>
						<span class="input-group-btn">
									<button class="increase hidden-xs bot_or_ack33" data-product="<%= product.key %>"><i class="fa fa-chevron-up"></i></button>

									<button class="hidden-lg hidden-md hidden-sm hidden-xs btn btn-danger delete hidden-xs" data-product="<%= product.key %>"><i class="fa fa-times"></i></button>
								</span>
					</div>
				</div>

				<div class="qc-total qc_image32 <%= parseInt(model.config.columns.total) && model.show_price  ? '' : 'hidden' %> table_cell "><%= product.total %></div>
				<div class="qc-quantity qc_image32 <%= parseInt(model.config.columns.quantity) ? '' : 'hidden' %> table_cell ">
					<div class="input-group input-group-sm">
								<span class="hidden-lg hidden-md hidden-sm hidden-xs input-group-btn">
									<button class="btn btn-primary decrease hidden-xs" data-product="<%= product.key %>"><i class="fa fa-chevron-down"></i></button>
								</span>
						<input type="text" data-mask="9?999999999999999" value="<%= product.quantity %>" class="hidden-lg hidden-md hidden-sm hidden-xs qc-product-qantity form-control text-center bord_inputt" name="cart.<%= product.key %>"  data-refresh="2"/>
						<span class="input-group-btn">
									<button class="btn btn-primary increase hidden-lg hidden-md hidden-sm hidden-xs" data-product="<%= product.key %>"><i class="fa fa-chevron-up"></i></button>

									<button class="btn btn-danger delete bot_or_ack" data-product="<%= product.key %>">удалить</button>
								</span>
					</div>
				</div>
				</div>
				<% }) %>
				<% _.each(model.vouchers, function(voucher) { %>
				<tr>
					<td class="qc-image qc_image32 <%= parseInt(model.config.columns.image) ? '' : 'hidden' %> "></td>
					<td class="qc-name qc_image32 <%= parseInt(model.config.columns.name) ? '' : 'hidden' %> "><%= voucher.description %></td>
					<td class="qc-quantity qc_image32 <%= parseInt(model.config.columns.quantity) ? '' : 'hidden' %> ">1</td>
					<td class="qc-price qc_image32 <%= parseInt(model.config.columns.price) && model.show_price ? '' : 'hidden' %> "><%= voucher.amount %></td>
					<td class="qc-total qc_image32 <%= parseInt(model.config.columns.total) && model.show_price ? '' : 'hidden' %> "><%= voucher.amount %></td>
					<td class="qc-quantity qc_image32 <%= parseInt(model.config.columns.quantity) ? '' : 'hidden' %> ">1</td>
				</tr>
				<% }) %>
				<% _.each(model.products, function(product) { %>
				<div id="table_cart" class="table_cart">
					<div class="col-xs-12 hidden-sm hidden-md hidden-lg cart_table_row clearfix clea_bord_top clea_bord_top22">
						<div class="col-xs-12 no-padding" style="margin-top: 30px;">
							<div class="qc-name qc_image32<%= parseInt(model.config.columns.name) ? '' : 'hidden' %> table_cell2 ">
								<a <%=  model.config.columns.image ? '' : 'rel="popup" data-help=\'<img src="' + product.image + '"/>\'' %>>
								<%= product.name %> <%= product.stock ? '' : '<span class="out-of-stock">***</span>' %>
								</a>
							</div>
						</div>
						<div class="col-xs-6 no-padding">
							<div class="qc-image  qc_image32 <%= parseInt(model.config.columns.image) ? '' : 'hidden' %> table_cell2">
								<a  href="<%= product.href %>" data-container="body" data-toggle="popover" data-placement="top" data-content='<img src="<%= product.image %>" />' data-trigger="hover">
									<img src="<%= product.thumb %>" class="img-responsive img_res_0"/>
								</a>
							</div>
						</div>
						<div class="col-xs-6 no-padding">
							<div class="col-xs-12">
								<div class="qc-quantity qc_image32 <%= parseInt(model.config.columns.quantity) ? '' : 'hidden' %> table_cell2 ">
									<div class="input-group input-group-sm">
										<span class="hidden-lg hidden-md hidden-sm hidden-xs input-group-btn">
											<button class="btn btn-primary decrease hidden-xs" data-product="<%= product.key %>"><i class="fa fa-chevron-down"></i></button>
										</span>
										<input type="text" data-mask="9?999999999999999" value="<%= product.quantity %>" class="hidden-lg hidden-md hidden-sm hidden-xs qc-product-qantity form-control text-center bord_inputt" name="cart.<%= product.key %>"  data-refresh="2"/>
										<span class="input-group-btn inp_text_left">
											<button class="btn btn-primary increase hidden-lg hidden-md hidden-sm hidden-xs" data-product="<%= product.key %>"><i class="fa fa-chevron-up"></i></button>

											<button class="btn btn-danger delete bot_or_ack" data-product="<%= product.key %>">удалить</button>
										</span>
									</div>
								</div>
							</div>
							<div class="col-xs-12" style="margin-top: 12%;">
								<div class="qc-price qc_image32 hidden-xs <%= parseInt(model.config.columns.price) && model.show_price  ? '' : 'hidden' %> table_cell2 " style="display: inline-block!important;"><span>Цена: </span><span style="color: black!important;"><%= product.price %></span></div>
							</div>
							<div class="col-xs-6" style="margin-top: 6%;">
								<div class="qc-quantity qc_image32 <%= parseInt(model.config.columns.quantity) ? '' : 'hidden' %>  table_cell2 ">
									<div class="input-group input-group-sm">
										<span class="input-group-btn">
											<button class=" decrease bot_or_ack33" data-product="<%= product.key %>"><i class="fa fa-chevron-down"></i></button>
										</span>
										<input type="text" data-mask="9?999999999999999" value="<%= product.quantity %>" class="qc-product-qantity form-control text-center bord_inputt" name="cart.<%= product.key %> bottt_33"  data-refresh="2"/>
										<span class="input-group-btn">
											<button class="increase bot_or_ack33" data-product="<%= product.key %>"><i class="fa fa-chevron-up"></i></button>

											<button class="hidden-lg hidden-md hidden-sm hidden-xs btn btn-danger delete hidden-xs" data-product="<%= product.key %>"><i class="fa fa-times"></i></button>
										</span>
									</div>
								</div>
							</div>
							<div class="col-xs-12" style="margin-top: 6%;">
								<div class="qc-total qc_image32 <%= parseInt(model.config.columns.total) && model.show_price  ? '' : 'hidden' %> table_cell2 "><span>Сумма: </span><span style="color: black!important;"><%= product.total %></span></div>
							</div>
						</div>
					</div>
					<% }) %>
					<% _.each(model.vouchers, function(voucher) { %>
					<tr>
						<td class="qc-name qc_image32 <%= parseInt(model.config.columns.name) ? '' : 'hidden' %> "><%= voucher.description %></td>
						<td class="qc-image qc_image32 <%= parseInt(model.config.columns.image) ? '' : 'hidden' %> "></td>
						<td class="qc-quantity qc_image32 <%= parseInt(model.config.columns.quantity) ? '' : 'hidden' %> ">1</td>
						<td class="qc-price qc_image32 <%= parseInt(model.config.columns.price) && model.show_price ? '' : 'hidden' %> "><%= voucher.amount %></td>
						<td class="qc-total qc_image32 <%= parseInt(model.config.columns.total) && model.show_price ? '' : 'hidden' %> "><%= voucher.amount %></td>
						<td class="qc-quantity qc_image32 <%= parseInt(model.config.columns.quantity) ? '' : 'hidden' %> ">1</td>
					</tr>
					<% }) %>
				</tbody>
			</table>
			<div class="floa_rig_22"><span class="spa_font_1">Сумма заказа:</span>
				<span class="">
				<% if(model.show_price){ %>
				<span class="form-horizontal qc-totals">
					<span><%= model.totals[0].text %></span>
				</span>
				<% } %>
				</span>
			</div>
			<div class="form-horizontal">
				<div class=" form-group qc-coupon <%= parseInt(model.config.option.coupon.display) ? '' : 'hidden' %>">
					<% if(model.errors.coupon){ %>
					<div class="col-sm-12">
						<div class="alert alert-danger">
							<i class="fa fa-exclamation-circle"></i> <%= model.errors.coupon %>
						</div>
					</div>
					<% } %>
					<% if(model.successes.coupon){ %>
					<div class="col-sm-12">
						<div class="alert alert-success">
							<i class="fa fa-exclamation-circle"></i> <%= model.successes.coupon %>
						</div>
					</div>
					<% } %>
					<label class="col-sm-4 control-label" >
						<?php echo $text_use_coupon; ?>
					</label>
					<div class="col-sm-8">
						<div class="input-group">
							<input type="text" value="<%= model.coupon ? model.coupon : '' %>" name="coupon" id="coupon" placeholder="<?php echo $text_use_coupon; ?>" class="form-control"/>
							<span class="input-group-btn">
								<button class="btn btn-primary" id="confirm_coupon" type="button"><i class="fa fa-check"></i></button>
							</span>
						</div>
					</div>
					<% _.each(model.coupon, function(voucher) { %>

					<% }) %>
				</div>
				<div class=" form-group qc-voucher <%= parseInt(model.config.option.voucher.display) ? '' : 'hidden' %>">
					<% if(model.errors.voucher){ %>
					<div class="col-sm-12">
						<div class="alert alert-danger">
							<i class="fa fa-exclamation-circle"></i> <%= model.errors.voucher %>
						</div>
					</div>
					<% } %>
					<% if(model.successes.voucher){ %>
					<div class="col-sm-12">
						<div class="alert alert-success">
							<i class="fa fa-exclamation-circle"></i> <%= model.successes.voucher %>
						</div>
					</div>
					<% } %>

					<label class="col-sm-4 control-label" >
						<?php echo $text_use_voucher; ?>
					</label>
					<div class="col-sm-8">
						<div class="input-group">
							<input type="text" value="<%= model.voucher ? model.voucher : '' %>" name="voucher" id="voucher" placeholder="<?php echo $text_use_voucher; ?>" class="form-control"/>
							<span class="input-group-btn">
								<button class="btn btn-primary" id="confirm_voucher" type="button"><i class="fa fa-check"></i></button>
							</span>
						</div>
					</div>
				</div>
				<?php if($reward_points) {?>
				<div class=" form-group qc-reward <%= parseInt(model.config.option.reward.display) ? '' : 'hidden' %>">
				<% if(model.errors.reward){ %>
				<div class="col-sm-12">
				<div class="alert alert-danger">
				<i class="fa fa-exclamation-circle"></i> <%= model.errors.reward %>
				</div>
				</div>
				<% } %>
				<% if(model.successes.reward){ %>
				<div class="col-sm-12">
					<div class="alert alert-success">
						<i class="fa fa-exclamation-circle"></i> <%= model.successes.reward %>
					</div>
				</div>
				<% } %>
				<label class="col-sm-4 control-label" >
					<?php echo $text_use_reward; ?>
				</label>
				<div class="col-sm-8">
					<div class="input-group">
						<input type="text" value="<%= model.reward ? model.reward : '' %>" name="reward" id="reward" placeholder="<?php echo $text_use_reward; ?>" class="form-control"/>
						<span class="input-group-btn">
								<button class="btn btn-primary" id="confirm_reward" type="button"><i class="fa fa-check"></i></button>
							</span>

					</div>
					<small><?php echo $entry_reward; ?></small>
				</div>

			</div>
			<?php } ?>
		</div>
		<div class="preloader row"><img class="icon" src="image/<%= config.general.loader %>" /></div>

	</div>
	</div>

</script>
<script>
	$(function() {
		qc.cart = $.extend(true, {}, new qc.Cart(<?php echo $json; ?>));
		qc.cartView = $.extend(true, {}, new qc.CartView({
			el:$("#cart_view"),
			model: qc.cart,
			template: _.template($("#cart_template").html())
		}));

	});

</script>
<script>
var config = <?php echo $json_config; ?>;
</script>
<style>
<?php echo $config['design']['custom_style']; ?>
<?php if($config['design']['only_quickcheckout']){ ?>
body > *{
	display: none
}
body > #d_quickcheckout{
	display: block;
} 
#d_quickcheckout.container #logo{
	margin: 20px 0px;
}
<?php } ?>
</style>
<div id="d_quickcheckout">
	<div id="logo" class="center-block text-center"></div>
	<?php echo $field; ?>
	<div class="row">
		<div class="col-md-12"></div>
	</div>
	<div class="qc-col-0">
		<?php echo $login; ?>
		<?php echo $payment_address; ?>
		<?php echo $shipping_address; ?>
		<?php echo $shipping_method; ?>
		<?php echo $payment_method; ?>
		<?php echo $cart; ?>
		<?php echo $payment; ?>
		<?php echo $confirm; ?>
	</div>

	<div class="container no-padding">
		<div class="qc-col-1 col-md-<?php echo $config['design']['column_width'][1] ?>">
		</div>
		<div class="col-md-<?php echo $config['design']['column_width'][4] ?>">
			<div class="row">
				<div id="cart_view" class="qc-step"></div>
			</div>
			<div class="row">
				<div class="col-sm-12 text3_black22">Оформить заказ</div>
				<div class="qc-col-2 col-md-<?php echo round(($config['design']['column_width'][2] / $config['design']['column_width'][4])*12); ?> col-sm-<?php echo round(($config['design']['column_width'][2] / $config['design']['column_width'][4])*12); ?> col-xs-<?php echo round(($config['design']['column_width'][2] / $config['design']['column_width'][4])*12); ?> col_padd_2">
					<div class="col-lg-4 col-md-4 col-sm-4 col-xs-12">
						<div id="payment_address" class="qc-step"></div>
					</div>
					<div class="col-lg-4 col-md-4 col-sm-4 col-xs-12 poz_rel_22">
						<div id="confirm_view" class="qc-step hei_poz_rel"></div>
					</div>
					<div class="col-lg-4 col-md-4 col-sm-4 col-xs-12 poz_rel_33">
						<div id="payment_method" class="col-sm-12 qc-step poz_rel_and_hei"></div>
						<div id="shipping_method" class="col-sm-12 qc-step poz_rel_and_hei2"></div>
					</div>
				</div>
				<div class="qc-col-3 col-md-<?php echo round(($config['design']['column_width'][3] / $config['design']['column_width'][4])*12); ?>">	
				</div>
				<div class="qc-col-4 col-md-12">
				</div>
			</div>
		</div>
	</div>
</div>
<script>
$(function() {
	$('.qc-step').each(function(){
		$(this).appendTo('.qc-col-' + $(this).attr('data-col'));	
	})
	$('.qc-step').tsort({attr:'data-row'});
<?php if($config['design']['only_quickcheckout']){ ?>
	$('body').prepend($('#d_quickcheckout'));
	$('#d_quickcheckout').addClass('container')
	$('#d_quickcheckout #logo ').prepend($('header #logo').html())
<?php } ?>
})
</script>
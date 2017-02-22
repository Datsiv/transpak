<!-- 
	Ajax Quick Checkout 
	v6.0.0
	Dreamvention.com 
	d_quickcheckout/confirm.tpl 
-->

<script type="text/html" id="confirm_template">
	<div id="confirm_wrap">
			<div class="panel panel-default">
				<div class="panel-body no_pad_left">
					<form id="confirm_form" class="form-horizontal conf_form_styl">
					</form>
<div style="text-align: center">
					<button id="qc_confirm_order" class="btn btn-primary zakaz_bottom" <%= model.show_confirm ? '' : 'disabled="disabled"' %>><?php echo $button_confirm; ?></button>
</div>
				</div>
			</div>
		</div>
	<div style="clear: both"></div>
</script>
<script>

	$(function() {
		qc.confirm = $.extend(true, {}, new qc.Confirm(<?php echo $json; ?>));
		qc.confirmView = $.extend(true, {}, new qc.ConfirmView({
			el:$("#confirm_view"),
			model: qc.confirm,
			template: _.template($("#confirm_template").html())
		}));
	});

</script>
{include file="orderforms/$carttpl/common.tpl"}

<style type="text/css">
#order-rs_hosting_cart .header-lined, h1 { 
background: url('templates/orderforms/{$carttpl}/img/bg_pages_header.jpg') no-repeat center center fixed;
-webkit-background-size: cover;
-moz-background-size: cover;
-o-background-size: cover;
background-size: cover;
border-radius:4px;
text-align:center;
}

#order-rs_hosting_cart .btn {
	border:0px!important;
}
</style>

<div id="order-rs_hosting_cart">

	<div class="row">

		<div class="col-md-12">

			<div class="header-lined margin-bottom">
				<h1 class="margin-bottom" style="margin-top:20px;padding:40px 0 0 0;border:none;color:#fff;font-weight:700;text-shadow:0px 1px 0px rgba(0,0,0,0.6);">{$LANG.orderconfirmation}</h1>
				<div class="row margin-bottom">
				<div class="col-sm-4 col-sm-offset-4 col-xs-10 col-xs-offset-1 margin-bottom">
					 {include file="orderforms/$carttpl/sidebar-categories-collapsed.tpl"}
					 </div>
				</div>
				
			</div>

		</div>

		<div class="col-md-10 col-md-offset-1">

			<div class="alert alert-info order-confirmation">
			
				<p class="text-center">	
					<i style="color:#4CAF50;font-size: 10em;" class="fa fa-check-circle margin-bottom" aria-hidden="true"></i><br/>
					{$LANG.orderreceived}
				</p>

				<div class="row">
					<div class="col-sm-8 col-sm-offset-2">
							{$LANG.ordernumberis} <span>{$ordernumber}</span>
						</div>
				</div>
				
			</div>

			<p class="text-center">{$LANG.orderfinalinstructions}</p>

            {if $expressCheckoutInfo}
                <div class="alert alert-info text-center">
                    {$expressCheckoutInfo}
                </div>
            {elseif $expressCheckoutError}
                <div class="alert alert-danger text-center">
                    {$expressCheckoutError}
                </div>
            {elseif $invoiceid && !$ispaid}
				<div class="alert alert-warning text-center">
					{$LANG.ordercompletebutnotpaid}
					<br /><br />
					<a href="viewinvoice.php?id={$invoiceid}" target="_blank" class="alert-link">
							{$LANG.invoicenumber}{$invoiceid}
						</a>
				</div>
			{/if}
			
			{foreach $addons_html as $addon_html}
				<div class="order-confirmation-addon-output">
					{$addon_html}
				</div>
			{/foreach}
			
			{if $ispaid}
				<!-- Enter any HTML code which should be displayed when a user has completed checkout here -->
				<!-- Common uses of this include conversion and affiliate tracking scripts -->
			{/if}

			<div class="text-center">
				<a href="clientarea.php" class="btn btn-default">
                    {$LANG.orderForm.continueToClientArea}
                    &nbsp;<i class="fas fa-arrow-circle-right"></i>
                </a>
			</div>

		</div>
	</div>
</div>

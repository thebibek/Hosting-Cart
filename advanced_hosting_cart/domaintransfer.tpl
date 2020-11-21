{include file="orderforms/$carttpl/common.tpl"}

<style type="text/css">
#order-rs_hosting_cart .domain_search_bg {
background: url('templates/orderforms/{$carttpl}/img/bg_domain_transfer.jpg') no-repeat center center fixed;
-webkit-background-size: cover;
-moz-background-size: cover;
-o-background-size: cover;
background-size: cover;
margin-bottom:-20px!important;
}
#order-rs_hosting_cart .domaincontainer{
background:transparent!important;
}
#order-rs_hosting_cart .btn {
	border:0px!important;
}

#order-rs_hosting_cart label{
color:#ffffff!important;
font-weight:500!important;
}
/* INPUTS BOX'S OUTSIDE STYLE */
#order-rs_hosting_cart .rs-input-box {
border:6px solid rgba(224, 224, 224,0.3);
border-radius: 3px;
}
#order-rs_hosting_cart .rs-input-box:hover {
border:6px solid rgba(189, 189, 189,0.6);
}
#order-rs_hosting_cart .rs-input-box:active, .rs-input-box:focus {
border:6px solid rgba(189, 189, 189,0.9);
}
#order-rs_hosting_cart .rs-input-box>input {
border: 0px!important;
border-left: 0px!important;
border-radius: 0px!important;
}

#order-rs_hosting_cart .btn_transfer_domain{
background-color: rgba(3, 169, 244,0.6);
border: none!important;
border-radius: 3px;
color: rgba(250, 250, 250,0.9);
font-size:18px;
font-weight:700;
padding: 10px 20px 10px 20px;
outline: none;
}
#order-rs_hosting_cart .btn_transfer_domain:hover, .btn_transfer_domain:active, .btn_transfer_domain:focus{
background-color: rgba(3, 169, 244,0.9);
border:0 solid rgba(3, 169, 244,0.9);
color: rgba(250, 250, 250,1.0);
outline: none;
}

#modalDomainsPricing .tld-sale-group{
border-radius: 3px !important;
}
</style>

<div id="order-rs_hosting_cart">

<div class="alert col-md-12 panel panel-default" style="border:none;padding-top:0px!important;">
<div class="row domain_search_bg alert">
<div class="col-md-12">

   <div class="row margin-bottom" style="margin-top:20px;padding:0 15px 0 15px;border:none;color:#ffffff;font-weight:700;text-shadow:0px 1px 0px rgba(0,0,0,0.6);">
	 <div class="text-center">
				<h1 style="font-weight: bold;">
					{$LANG.transferdomain}
				</h1>
			<h5>
			{$LANG.orderForm.transferExistingDomain}  <a href="#modalDomainsPricing" data-toggle="modal" data-target="#modalDomainsPricing" style="color:#4CAF00;font-weight:700;text-shadow:0 1px 0 rgba(0,0,0,0.6);">Browse domain pricing</a>.
			</h5>
			<h6 class="small">
			  * {lang key='orderForm.extendExclusions'}
			</h6>
	  </div>
	</div>

	<br/>

  <div class="domaincontainer">
	<form method="post" action="cart.php" id="frmDomainTransfer">
		<input type="hidden" name="a" value="addDomainTransfer">

		<div class="row">
			<div class="col-md-10 col-md-offset-1 col-xs-10 col-xs-offset-1">

				  <div id="transferUnavailable" class="alert alert-warning slim-alert text-center hidden margin-bottom"></div>

				  <div class="form-group">
					<div class="rs-input-box input-group input-group-lg input-group-box">
					  <div class="input-group-addon" style="border-radius: 0px!important;">{$LANG.orderForm.www}</div>
						<input style="width: 50%!important;" type="text" class="form-control" name="domain" id="inputTransferDomain" value="{$lookupTerm}" placeholder="{lang key='yourdomainplaceholder'}.{lang key='yourtldplaceholder'}" data-toggle="tooltip" data-placement="left" data-trigger="manual" title="{lang key='orderForm.enterDomain'}" />

						<input style="width: 50%!important;border-left: none!important;" type="text" class="form-control" name="epp" id="inputAuthCode" placeholder="{lang key='orderForm.authCodePlaceholder'}" data-toggle="tooltip" data-placement="left" data-trigger="manual" title="{lang key='orderForm.required'}" />
					  <div class="input-group-addon" style="border-radius: 0px!important;"><a href="#" data-toggle="tooltip" data-placement="left" title="{lang key='orderForm.authCodeTooltip'}"><i class="fas fa-question-circle fa-lg"></i></a></div>
					</div>
				  </div>

					{if $captcha->isEnabled() && !$captcha->recaptcha->isEnabled()}
						<div class="col-md-8 col-md-offset-2 col-xs-10 col-xs-offset-1 margin-bottom">
							<div class="captcha-container" id="captchaContainer">
								<div class="default-captcha" style="background-color:rgba(250, 250, 250,0.0)!important;border:none!important;">
										<img id="inputCaptchaImage" src="{$systemurl}includes/verifyimage.php" />
										<input id="inputCaptcha" type="text" name="code" maxlength="5" class="form-control input-sm" data-toggle="tooltip" data-placement="right" data-trigger="manual" title="{lang key='orderForm.required'}" />
								</div>
							</div>
						</div>
					{elseif $captcha->isEnabled() && $captcha->recaptcha->isEnabled() && !$captcha->recaptcha->isInvisible()}
						<div class="col-md-8 col-md-offset-2 col-xs-10 col-xs-offset-1 margin-bottom">
							<center><div class="form-group recaptcha-container" id="captchaContainer"></div></center>
						</div>
					{/if}

					<div class="col-xs-8 col-xs-offset-2 col-sm-6 col-sm-offset-3 col-md-4 col-md-offset-4">
					  <button type="submit" id="btnTransferDomain" class="btn btn_transfer_domain btn-block {$captcha->getButtonClass($captchaForm)}">
						  <span class="loader hidden" id="addTransferLoader">
							  <i class="fas fa-fw fa-spinner fa-spin"></i>
						  </span>
						  <span id="addToCart">{lang key="orderForm.addToCart"}  <i class="fa fa-chevron-right"></i></span>
					  </button>
					</div>

			</div>
		</div>

	</form>
  </div>

</div>

  <div class="col-md-8 col-md-offset-2">

	  {if $featuredTlds}
		  <div class="featured-tlds-container">
			  <div class="row">

				  <h4 class="text-center margin-bottom" style="color:#ffffff;font-weight:500;text-shadow:0px 1px 0px rgba(0,0,0,0.9);">{lang key='orderForm.transferExtend'}*</h4>

				  {foreach $featuredTlds as $num => $tldinfo}
					  {if $num % 3 == 0 && (count($featuredTlds) - $num < 3)}
						  {if count($featuredTlds) - $num == 2}
							  <div class="col-sm-6"></div>
						  {else}
							  <div class="col-sm-3"></div>
						  {/if}
					  {/if}
					  <div class="col-sm-3 col-xs-6">
						  <div class="featured-tld" style="background-color: rgba(250, 250, 250,0.5);">
							  <div class="img-container">
								  <img src="{$BASE_PATH_IMG}/tld_logos/{$tldinfo.tldNoDots}.png">
							  </div>
							  <div class="price {$tldinfo.tldNoDots}">
								  {if is_object($tldinfo.transfer)}
									  {$tldinfo.transfer->toPrefixed()}{if $tldinfo.period > 1}{lang key="orderForm.shortPerYears" years={$tldinfo.period}}{else}{lang key="orderForm.shortPerYear" years=''}{/if}
								  {else}
									  {lang key="domainregnotavailable"}
								  {/if}
							  </div>
						  </div>
					  </div>
				  {/foreach}
			  </div>
		  </div>
	  {/if}

	</div>


</div>
</div>

</div>

<div class="modal fade modalDomainsPricing" id="modalDomainsPricing" tabindex="-1" role="dialog">
<div class="modal-dialog" role="document">
	<div class="modal-content alert-info">
		<div class="modal-header">
			<button type="button" class="close" data-dismiss="modal" aria-label="{$LANG.orderForm.close}">
				<span aria-hidden="true">&times;</span>
			</button>
			<h3 class="modal-title">
				<i class="fa fa-globe"></i>
				<span style="font-weight:700;">{lang key='pricing.browseExtByCategory'}!</span>
			</h3>
		</div>
		<div class="modal-body">

	  <div class="tld-filters">
		  {foreach $categoriesWithCounts as $category => $count}
			  <a href="#" data-category="{$category}" class="label label-default">{lang key="domainTldCategory.$category" defaultValue=$category} ({$count})</a>
		  {/foreach}
	  </div>

	  <div class="row tld-pricing-header text-center">
		  <div class="col-sm-4 no-bg">{lang key='orderdomain'}</div>
		  <div class="col-sm-8">
			  <div class="row">
				  <div class="col-xs-4">{lang key='pricing.register'}</div>
				  <div class="col-xs-4">{lang key='pricing.transfer'}</div>
				  <div class="col-xs-4">{lang key='pricing.renewal'}</div>
			  </div>
		  </div>
	  </div>
	  {foreach $pricing['pricing'] as $tld => $price}
		  <div class="row tld-row" data-category="{foreach $price.categories as $category}|{$category}|{/foreach}">
			  <div class="col-sm-4 two-row-center">
				  <strong>.{$tld}</strong>
				  {if $price.group}
					  <span class="tld-sale-group tld-sale-group-{$price.group}">{$price.group}!</span>
				  {/if}
			  </div>
			  <div class="col-sm-8">
				  <div class="row">
					  <div class="col-xs-4 text-center">
						  {if current($price.register) >= 0}
							  {current($price.register)}<br>
							  <small>{key($price.register)} {if key($price.register) > 1}{lang key="orderForm.years"}{else}{lang key="orderForm.year"}{/if}</small>
						  {else}
							  <small>N/A</small>
						  {/if}
					  </div>
					  <div class="col-xs-4 text-center">
						  {if current($price.transfer) > 0}
							  {current($price.transfer)}<br>
							  <small>{key($price.transfer)} {if key($price.register) > 1}{lang key="orderForm.years"}{else}{lang key="orderForm.year"}{/if}</small>
						  {else}
							  <small>N/A</small>
						  {/if}
					  </div>
					  <div class="col-xs-4 text-center">
						  {if current($price.renew) > 0}
							  {current($price.renew)}<br>
							  <small>{key($price.renew)} {if key($price.register) > 1}{lang key="orderForm.years"}{else}{lang key="orderForm.year"}{/if}</small>
						  {else}
							  <small>N/A</small>
						  {/if}
					  </div>
				  </div>
			  </div>
		  </div>
	  {/foreach}
	  <div class="row tld-row no-tlds">
		  <div class="col-xs-12 text-center">
			  <br>
			  {lang key='pricing.selectExtCategory'}
			  <br><br>
		  </div>
	  </div>

		</div>
		<div class="modal-footer">
			<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
		</div>
	</div>
</div>
</div>

<script>
$(document).ready(function(){
	jQuery('.tld-filters a:first-child').click();
	$('[data-toggle="tooltip"]').tooltip();
});
</script>
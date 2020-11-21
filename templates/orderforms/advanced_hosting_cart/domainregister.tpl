{include file="orderforms/$carttpl/common.tpl"}

<style type="text/css">
#order-rs_hosting_cart .domain_search_bg { 
background: url('templates/orderforms/{$carttpl}/img/bg_domain_register.jpg') no-repeat center center fixed;
-webkit-background-size: cover;
-moz-background-size: cover;
-o-background-size: cover;
background-size: cover;
margin-bottom:-20px!important;
}
#order-rs_hosting_cart .domaincontainer{
background:transparent!important;
margin-top:30px;
}
#order-rs_hosting_cart .btn {
	border:0px!important;
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
margin:0px!important;
height:46px!important;
}
#order-rs_hosting_cart .rs-input-box .select2-selection {
	background-color: rgba(250, 250, 250,1.0);
	border:1px 0px 0px 0px;
	border-radius:0px;
}

#order-rs_hosting_cart .btn_checkavailability{
background-color: rgba(3, 169, 244,0.6);
border: none!important;
border-radius: 3px;
color: rgba(250, 250, 250,0.9);
font-size:18px;
font-weight:700;
padding: 10px 20px 10px 20px;
outline: none;
}
#order-rs_hosting_cart .btn_checkavailability:hover, .btn_checkavailability:active, .btn_checkavailability:focus{
background-color: rgba(3, 169, 244,0.9);
border:0 solid rgba(3, 169, 244,0.9);
color: rgba(250, 250, 250,1.0);
outline: none;
}

#order-rs_hosting_cart .btn_add_domain{
background-color: rgba(3, 169, 244,0.7);
border:1px solid rgba(3, 169, 244,0.6);
border-radius: 3px;
color: rgba(250, 250, 250,1.0);
font-weight:500;
padding: 2px 6px 2px 6px;
margin-top: -9px!important;
outline: none;
}
#order-rs_hosting_cart .btn_add_domain:hover, .btn_add_domain:active, .btn_add_domain:focus{
background-color: rgba(3, 169, 244,1.0);
border:1px solid rgba(3, 169, 244,0.9);
color: rgba(250, 250, 250,1.0);
}

#order-rs_hosting_cart .checkout{
background-color: #4CAF00!important;
color: rgba(250, 250, 250,1.0);
}

#order-rs_hosting_cart .promo{
border:1px solid rgba(3, 169, 244,0.1);
border-radius: 3px!important;
padding-right: 3px!important;
padding-left: 3px!important;
padding-top: 1px!important;
padding-bottom: 1px!important;
font-size:0.6em!important;
}

#order-rs_hosting_cart .main_domain_result {
font-size: 1.3em!important;
border:none!important;
background-color: rgba(240, 240, 240,0.7);
font-weight:500;
border-radius: 3px!important;
margin-top: 30px!important;
margin-bottom: 30px!important;
}

#order-rs_hosting_cart .list-group {
font-size: 1.2em!important;
color: rgba(250, 250, 250,1.0);
font-weight:500;
}
#order-rs_hosting_cart .list-group-item {
background-color: rgba(3, 169, 244,0.4);
border:1px solid rgba(3, 169, 244,0.2);
border-radius: 3px!important;
margin-top: 6px!important;
margin-bottom: 6px!important;
}

#modalDomainsPricing .tld-sale-group{
border-radius: 3px !important;
}

#order-rs_hosting_cart #frmDomainChecker .domain-lookup-loader, .domain-lookup-primary-loader {
	color:#fff;
}
</style>

<div id="order-rs_hosting_cart" class="row">

<div class="alert col-md-12 panel panel-default" style="border:none;padding-top:0px!important;">

<div class="row domain_search_bg alert">

<div class="col-md-12">

	<div class="row margin-bottom" style="margin-top:20px;padding:0 15px 0 15px;border:none;color:#ffffff;font-weight:700;text-shadow:0px 1px 0px rgba(0,0,0,0.6);">
	  <div class="text-center">
		<h1 style="font-weight: bold;">
			{$LANG.registerdomain}
		</h1>
		<h5>
			{$LANG.orderForm.findNewDomain} <a href="#modalDomainsPricing" data-toggle="modal" data-target="#modalDomainsPricing" style="color:#4CAF00;font-weight:700;text-shadow:0 1px 0 rgba(0,0,0,0.6);">Browse domain pricing</a>.
		</h5>
	  </div>
	</div>

	<div class="domaincontainer">
	
		<form method="post" action="cart.php" id="frmDomainChecker">
			<input type="hidden" name="a" value="checkDomain">
			
			<div class="row">
				<div class="col-md-10 col-md-offset-1 col-xs-10 col-xs-offset-1">

					<div class="form-group">
						<div class="rs-input-box input-group input-group-lg input-group-box">
							<div class="input-group-addon" style="border-radius: 0px!important;">{$LANG.orderForm.www}</div>
							<input style="width: 70%;"  type="text" name="sld" class="form-control" id="inputDomain" value="{$lookupTerm}" placeholder="{lang key='yourdomainplaceholder'}" autocapitalize="none" data-toggle="tooltip" data-placement="top" data-trigger="manual" title="{$LANG.findyourdomain}" />
							<select name="tld" id="inputDomain" class="form-control" style="width: 30%;border-radius: 0px!important;">
								{foreach key=num item=listtld from=$tlds}
									<option value="{$listtld}"{if $listtld eq $tld} selected="selected"{/if}>{$listtld}</option>
								{/foreach}
							</select>
						</div>
					</div>

					{if $captcha->isEnabled() && $captcha->isEnabledForForm($captchaForm) && !$captcha->recaptcha->isInvisible()}
						<div class="col-md-8 col-md-offset-2 col-xs-10 col-xs-offset-1 margin-bottom">
							<div class="captcha-container" id="captchaContainer">
								{if $captcha == "recaptcha"}
									<center><div class="form-group recaptcha-container" id="captchaContainer"></div></center>
								{elseif $captcha != "recaptcha"}
									<div class="default-captcha" style="background-color:rgba(250, 250, 250,0.0)!important;border:none!important;">
											<img id="inputCaptchaImage" src="{$systemurl}includes/verifyimage.php" align="middle" />
											<input id="inputCaptcha" type="text" name="code" maxlength="5" class="form-control input-sm" data-toggle="tooltip" data-placement="right" data-trigger="manual" title="{lang key='orderForm.required'}" />
									</div>
								{/if}
							</div>
						</div>
					{/if}
					
					<div class="col-xs-8 col-xs-offset-2 col-sm-6 col-sm-offset-3 col-md-4 col-md-offset-4 margin-bottom">
					  <button type="submit" id="btnCheckAvailability" class="btn btn_checkavailability btn-block {$captcha->getButtonClass($captchaForm)}">
							{$LANG.search} <i class="fa fa-chevron-right"></i>
					  </button>
					</div>
					
				</div>
			</div>
			
		</form>
	</div>

	<div id="DomainSearchResults" class="hidden col-md-10 col-md-offset-1">
	
		<div id="searchDomainInfo" class="row main_domain_result">
			<div id="primaryLookupSearching" class="domain-lookup-loader domain-lookup-primary-loader domain-searching" style="color:#ffffff;"><i class="fas fa-spinner fa-spin"></i> {lang key='orderForm.searching'}...</div>
			<div id="primaryLookupResult" class="domain-lookup-result hidden">
			  <div class="col-sm-12 pull-sm-left col-md-8 pull-md-right col-xs-12 pull-xs-center text-center" style="margin-top: 10px!important;">
				  <p class="domain-invalid domain-checker-invalid">{lang key='orderForm.domainLetterOrNumber'}<span class="domain-length-restrictions">{lang key='orderForm.domainLengthRequirements'}</span></p>
				  <p class="domain-unavailable domain-checker-unavailable">{lang key='orderForm.domainIsUnavailable'}</p>
				  <p class="domain-available domain-checker-available text-center" style="font-size:120%;color: rgba(76, 175, 80,1.0);text-shadow: 1px 0px rgba(76, 175, 80,0.7), 1px 0px rgba(76, 175, 80,0.7), 1px 1px rgba(76, 175, 80,0.7), 1px 0px rgba(76, 175, 80,0.7);font-weight:300;">{$LANG.domainavailable1} <strong style="font-weight:500;"></strong> {$LANG.domainavailable2}</p>
				 <a class="domain-contact-support btn btn_add_domain">{$LANG.domainContactUs}</a>
			</div>
			  <div class="domain-price col-sm-12 pull-sm-right col-md-4 pull-md-right col-xs-12 text-center" style="margin-top: 12px!important;">
				  <span class="price text-center"></span>
				  <button class="btn btn_add_domain btn-add-to-cart text-center" data-whois="0" data-domain="" style="margin-top: 0px!important;margin-bottom:10px!important;">
					  <span class="to-add">{$LANG.addtocart}</span>
					  <span class="added"><i class="glyphicon glyphicon-shopping-cart"></i> {lang key='checkout'}</span>
					  <span class="unavailable">{$LANG.domaincheckertaken}</span>
				  </button>
			  </div>
			</div>
		</div>

		{if $spotlightTlds}
			<div id="spotlightTlds" class="row">
				<div class="spotlight-tlds-container">
					{foreach $spotlightTlds as $key => $data}
						<div class="spotlight-tld-container spotlight-tld-container-{$spotlightTlds|count}">
							<div id="spotlight{$data.tldNoDots}" class="spotlight-tld" style="border:none!important;color:#ffffff;font-weight:500;background-color: rgba(240, 240, 240,0.4);">
								{if $data.group}
									<div class="spotlight-tld-{$data.group}">{$data.groupDisplayName}</div>
								{/if}
								<span style="font-size: 1.3em;font-weight: bold;margin-top: -5px!important;">{$data.tld}</span>
								<span class="domain-lookup-loader domain-lookup-spotlight-loader">
									<i class="fas fa-spinner fa-spin"></i>
								</span>
								<div class="domain-lookup-result">
									<button type="button" class="btn unavailable hidden" disabled="disabled">
										{lang key='domainunavailable'}
									</button>
									<button type="button" class="btn invalid hidden" disabled="disabled">
										{lang key='domainunavailable'}
									</button>
									<span class="available price hidden" style="margin-bottom: 10px!important;">{$data.register}</span>
									<button type="button" class="btn hidden btn_add_domain btn-add-to-cart" data-whois="0" data-domain="">
										<span class="to-add">{lang key='orderForm.add'}</span>
										<span class="added"><i class="glyphicon glyphicon-shopping-cart"></i> {lang key='checkout'}</span>
										<span class="unavailable">{$LANG.domaincheckertaken}</span>
									</button>
									<button type="button" class="btn btn_add_domain domain-contact-support hidden">
										{lang key='domainChecker.contactSupport'}
									</button>
								</div>
							</div>
						</div>
					{/foreach}
				</div>
			</div>
			<br/>
		{/if}
		
		<div class="row suggested-domains{if !$showSuggestionsContainer} hidden{/if}">
			<h4 class="text-center" style="color:#ffffff;font-weight:700;text-shadow:0px 1px 0px rgba(0,0,0,0.9);">
			  {lang key='orderForm.suggestedDomains'}
			</h4>
			<div id="suggestionsLoader" class="domain-lookup-loader domain-lookup-suggestions-loader">
				<i class="fas fa-spinner fa-spin"></i> {lang key='orderForm.generatingSuggestions'}
			</div>
			<ul id="domainSuggestions" class="domain-lookup-result list-group hidden">
				<li class="domain-suggestion list-group-item hidden">
					<span class="domain"></span><span class="extension"></span>
					<span class="promo hidden">
						<span class="sales-group-hot hidden">{lang key='domainCheckerSalesGroup.hot'}</span>
						<span class="sales-group-new hidden">{lang key='domainCheckerSalesGroup.new'}</span>
						<span class="sales-group-sale hidden">{lang key='domainCheckerSalesGroup.sale'}</span>
					</span>
					<div class="actions">
						<span class="price"></span>
						<button type="button" class="btn btn_add_domain btn-add-to-cart" data-whois="1" data-domain="">
							<span class="to-add">{$LANG.addtocart}</span>
							<span class="added"><i class="glyphicon glyphicon-shopping-cart"></i> {lang key='checkout'}</span>
							<span class="unavailable">{$LANG.domaincheckertaken}</span>
						</button>
						<button type="button" class="btn btn_add_domain domain-contact-support hidden">
							{lang key='domainChecker.contactSupport'}
						</button>
					</div>
				</li>
			</ul>
			<div class="btn_checkavailability more-suggestions hidden text-center">
				<a id="moreSuggestions" href="#" onclick="loadMoreSuggestions();return false;">{lang key='domainsmoresuggestions'}</a>
				<span id="noMoreSuggestions" class="no-more small hidden">{lang key='domaincheckernomoresuggestions'}</span>
			</div>
			<div class="text-center small domain-suggestions-warning">
				<h6 style="color:#ffffff;font-weight:500;">{lang key='domainssuggestionswarnings'}</h6>
			</div>
		</div>

	</div>

<div class="domain-pricing">
  <div class="col-md-8 col-md-offset-2">

	  {if $featuredTlds}
		  <div class="featured-tlds-container">
			  <div class="row">
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
								  {if is_object($tldinfo.register)}
									  {$tldinfo.register->toPrefixed()}{if $tldinfo.period > 1}{lang key="orderForm.shortPerYears" years={$tldinfo.period}}{else}{lang key="orderForm.shortPerYear" years=''}{/if}
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

		<!--
			<script type="text/javascript">
			$(document).ready(function() {
				$('.js-example-basic-multiple').select2({
						theme: "bootstrap",
						allowClear: true,
						placeholder: {
							id: 'product', // the value of the option
							text: '{lang key="pricing.browseExtByCategory"}'
						  }
				});
			});
			</script>
		-->
	  <div class="tld-filters">
		  {foreach $categoriesWithCounts as $category => $count}
			  <a href="#" data-category="{$category}" class="label label-default">{lang key="domainTldCategory.$category" defaultValue=$category} ({$count})</a>
		  {/foreach}
		<!--
		<select class="js-example-basic-multiple" name="categories[{$category}]" multiple="multiple" style="width:100%;">
		  {foreach $categoriesWithCounts as $category => $count}
			  <option data-category="{$category}" value="{$category}">{lang key="domainTldCategory.$category" defaultValue=$category} ({$count})</option>
		  {/foreach}
		</select>
		-->
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

<script type="text/javascript">
$(document).ready(function(){
	jQuery('.tld-filters a:first-child').click();
	$('[data-toggle="tooltip"]').tooltip();

{if $lookupTerm && !$captchaError}
	jQuery('#btnCheckAvailability').click();
{/if}
});
</script>
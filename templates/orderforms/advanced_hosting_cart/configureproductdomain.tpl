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
#order-rs_hosting_cart .domain_search_bg { 
background: url('templates/orderforms/{$carttpl}/img/bg_configure_product_domain.jpg') no-repeat center center fixed;
-webkit-background-size: cover;
-moz-background-size: cover;
-o-background-size: cover;
background-size: cover;
margin-bottom:-20px!important;
margin:0px;
}
#order-rs_hosting_cart .domaincontainer{
background:transparent!important;
margin-top:30px;
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
margin-top:1px!important;
height:32px!important;
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
padding-top: 5px!important;
padding-bottom: 5px!important;
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
#order-rs_hosting_cart .domain-selection-options .option label {
	width:100px;
	background:transparent;
	background-color:none;
}

#order-rs_hosting_cart .btn_lookup_domain{
background-color: rgba(3, 169, 244,0.7);
border:3px solid rgba(3, 169, 244,0.3);
border-radius: 3px;
color: rgba(250, 250, 250,0.9);
font-size:18px;
font-weight:700;
line-height:16px;
padding: 10px 20px 10px 20px;
outline: none;
}
#order-rs_hosting_cart .btn_lookup_domain:hover, .btn_lookup_domain:active, .btn_lookup_domain:focus{
background-color: rgba(3, 169, 244,0.9);
border:3px solid rgba(3, 169, 244,0.9);
color: rgba(250, 250, 250,1.0);
outline: none;
}

#order-rs_hosting_cart #frmProductDomain .domain-lookup-loader, .domain-lookup-primary-loader, .domain-searching, .domain-checker-result-headline, span {
	color:#fff;
}
</style>

<script type="text/javascript">
	$(document).ready(function(){
		// jQuery("#frmProductDomain .domain-selection-options label .iradio_square-blue").addClass('hidden');
	});
</script>

<div id="order-rs_hosting_cart">

	<div class="row">
		<div class="col-md-12">
			<div class="header-lined margin-bottom">
				<h1 class="margin-bottom" style="margin-top:20px;padding:40px 0 0 0;border:none;color:#fff;font-weight:700;text-shadow:0px 1px 0px rgba(0,0,0,0.6);">
					{$LANG.domaincheckerchoosedomain}
				</h1>
				<div class="row margin-bottom">
					<div class="col-md-4 col-md-offset-4 col-sm-6 col-sm-offset-3 col-xs-8 col-xs-offset-2">
						{include file="orderforms/$carttpl/sidebar-categories-collapsed.tpl"}
					</div>
				</div>
			</div>
		</div>
	</div>
	
	<div class="row  domain_search_bg alert">
	
		<div class="col-md-12">

			<form id="frmProductDomain">
			<input type="hidden" id="frmProductDomainPid" value="{$pid}" />
			<div class="domain-selection-options">
			
				<ul class="nav nav-pills nav-justified" role="tablist">
					{if $incartdomains}
						<li role="presentation" class="active">
							<label style="margin-bottom:5px;width:95%;" class="btn alert-info" role="tab">
								<input type="radio" name="domainoption" value="incart" id="selincart" />
								Already in Cart
							</label>
						</li>
					{/if} {if $registerdomainenabled}
						<li role="presentation" class="{if $domainoption eq 'register'}active{/if}">
							<label style="margin-bottom:5px;width:95%;" class="btn alert-info" role="tab">
								<input type="radio" name="domainoption" value="register" id="selregister"{if $domainoption eq 'register'} checked{/if} />
								{$LANG.registerdomain}
							</label>
						</li>
					{/if} {if $transferdomainenabled}
						<li role="presentation" class="{if $domainoption eq 'transfer'}active{/if}">
							<label style="margin-bottom:5px;width:95%;" class="btn alert-info" role="tab">
								<input type="radio" name="domainoption" value="transfer" id="seltransfer"{if $domainoption eq 'transfer'} checked{/if} />
								{$LANG.transferdomain}
							</label>
						</li>
					{/if} {if $owndomainenabled}
						<li role="presentation" class="{if $domainoption eq 'owndomain'}active{/if}">
							<label style="margin-bottom:5px;width:95%;" class="btn alert-info" role="tab">
								<input type="radio" name="domainoption" value="owndomain" id="selowndomain"{if $domainoption eq 'owndomain'} checked{/if} />
								Own Domain
							</label>
						</li>
					{/if} {if $subdomains}
						<li role="presentation" class="{if $domainoption eq 'subdomain'}active{/if}">
							<label style="margin-bottom:5px;width:95%;" class="btn alert-info" role="tab">
								<input type="radio" name="domainoption" value="subdomain" id="selsubdomain"{if $domainoption eq 'subdomain'} checked{/if} />
								Subdomain from {$companyname}
							</label>
						</li>
					{/if}
				</ul>
					
					{if $incartdomains}
						<div class="domain-input-group clearfix" id="domainincart">
							<h3 class="text-center margin-bottom" style="color:#fff;font-weight:700;">{$LANG.cartproductdomainuseincart}</h3>
							<div class="col-sm-10 col-sm-offset-1 col-xs-12">
								<div class="form-group">
									<div class="rs-input-box input-group input-group-md">
										<div class="input-group-addon" style="border-radius: 0px!important;">{$LANG.orderForm.www}</div>
										<select id="incartsld" name="incartdomain" class="form-control" style="width: 100%;">
											{foreach key=num item=incartdomain from=$incartdomains}
												<option value="{$incartdomain}">{$incartdomain}</option>
											{/foreach}
										</select>
									</div>
								</div>
								<div class="col-xs-6 col-xs-offset-3 col-sm-4 col-sm-offset-4 margin-bottom">
								  <button type="submit" class="btn btn_lookup_domain btn-block">
										{$LANG.orderForm.use}
								  </button>
								</div>
							</div>
						</div>
					{/if}
					
					{if $registerdomainenabled}
						<div class="domain-input-group clearfix" id="domainregister">
							<h3 class="text-center margin-bottom" style="color:#fff;font-weight:700;">{$LANG.cartregisterdomainchoice|sprintf2:$companyname}</h3>
							<div class="col-sm-10 col-sm-offset-1 col-xs-12">
								<div class="form-group">
									<div class="rs-input-box input-group input-group-md">
										<div class="input-group-addon" style="border-radius: 0px!important;">{$LANG.orderForm.www}</div>
										<input style="width: 70%;" type="text" class="form-control" id="registersld" value="{$sld}" placeholder="{lang key='yourdomainplaceholder'}" autocapitalize="none" data-toggle="tooltip" data-placement="left" data-trigger="manual" title="{lang key='orderForm.enterDomain'}" />
										<select id="registertld" class="form-control" style="width: 30%;">
											{foreach from=$registertlds item=listtld}
												<option value="{$listtld}"{if $listtld eq $tld} selected="selected"{/if}>{$listtld}</option>
											{/foreach}
										</select>
									</div>
								</div>
								<div class="col-xs-6 col-xs-offset-3 col-sm-4 col-sm-offset-4 margin-bottom">
								  <button type="submit" class="btn btn_lookup_domain btn-block">
										{$LANG.orderForm.check}
								  </button>
								</div>
							</div>
						</div>
					{/if}
					
					{if $transferdomainenabled}
						<div class="domain-input-group clearfix" id="domaintransfer">
							<h3 class="text-center margin-bottom" style="color:#fff;font-weight:700;">{$LANG.carttransferdomainchoice|sprintf2:$companyname}</h3>
							<div class="col-sm-10 col-sm-offset-1 col-xs-12">
								<div class="form-group">
								<div class="rs-input-box input-group input-group-md">
									<div class="input-group-addon" style="border-radius: 0px!important;">{$LANG.orderForm.www}</div>
									<input style="width: 70%;" type="text" class="form-control" id="transfersld" value="{$sld}" placeholder="{lang key='yourdomainplaceholder'}" autocapitalize="none" data-toggle="tooltip" data-placement="left" data-trigger="manual" title="{lang key='orderForm.enterDomain'}" />
									<select id="transfertld" class="form-control" style="width: 30%;">
											{foreach from=$transfertlds item=listtld}
												<option value="{$listtld}"{if $listtld eq $tld} selected="selected"{/if}>{$listtld}</option>
											{/foreach}
									</select>
								</div>
								</div>
								<div class="col-xs-6 col-xs-offset-3 col-sm-4 col-sm-offset-4 margin-bottom">
								  <button type="submit" class="btn btn_lookup_domain btn-block">
										{$LANG.orderForm.transfer}
								  </button>
								</div>
							</div>
						</div>
					{/if}
					
					{if $owndomainenabled}
						<div class="domain-input-group clearfix" id="domainowndomain">
							<h3 class="text-center margin-bottom" style="color:#fff;font-weight:700;">{$LANG.cartexistingdomainchoice|sprintf2:$companyname}</h3>
							<div class="col-sm-10 col-sm-offset-1 col-xs-12">
								<div class="form-group">
									<div class="rs-input-box input-group input-group-md">
										<div class="input-group-addon" style="border-radius: 0px!important;">{$LANG.orderForm.www}</div>
										<input style="width: 70%;margin-bottom:1px;" type="text" class="form-control" id="owndomainsld" value="{$sld}" placeholder="{$LANG.yourdomainplaceholder}" autocapitalize="none" data-toggle="tooltip" data-placement="left" data-trigger="manual" title="{lang key='orderForm.enterDomain'}" />
										<input style="width: 30%;margin-bottom:1px;" type="text" class="form-control" id="owndomaintld" value="{$tld|substr:1}" placeholder="{$LANG.yourtldplaceholder}" autocapitalize="none" data-toggle="tooltip" data-placement="left" data-trigger="manual" title="{lang key='orderForm.required'}" />
									</div>
								</div>
								<div class="col-xs-6 col-xs-offset-3 col-sm-4 col-sm-offset-4 margin-bottom">
								  <button type="submit" class="btn btn_lookup_domain btn-block" id="useOwnDomain">
										{$LANG.orderForm.use}
								  </button>
								</div>
							</div>
						</div>
					{/if}
					
					{if $subdomains}
						<div class="domain-input-group clearfix" id="domainsubdomain">
							<h3 class="text-center margin-bottom" style="color:#fff;font-weight:700;">{$LANG.cartsubdomainchoice|sprintf2:$companyname}</h3>
							<div class="col-sm-10 col-sm-offset-1 col-xs-12">
								<div class="form-group">
								<div class="rs-input-box input-group input-group-md">
									<div class="input-group-addon" style="border-radius: 0px!important;">{$LANG.orderForm.www}</div>
									<input style="width: 70%;" type="text" class="form-control" id="subdomainsld" value="{$sld}" placeholder="{lang key='yourname'}" autocapitalize="none" data-toggle="tooltip" data-placement="left" data-trigger="manual" title="{lang key='orderForm.enterDomain'}" />
									<select id="subdomaintld" class="form-control" style="width: 30%;">
												{foreach $subdomains as $subid => $subdomain}
													<option value="{$subid}">{$subdomain}</option>
												{/foreach}
									</select>
								</div>
								</div>
								<div class="col-xs-6 col-xs-offset-3 col-sm-4 col-sm-offset-4 margin-bottom">
								  <button type="submit" class="btn btn_lookup_domain btn-block">
										{$LANG.orderForm.check}
								  </button>
								</div>
							</div>
						</div>
					{/if}
					
			</div>

				{if $freedomaintlds}
				<p class="text-center" style="color:#fff;">* <em>{$LANG.orderfreedomainregistration} {$LANG.orderfreedomainappliesto}: {$freedomaintlds}</em></p>
				{/if}

			</form>

			<div class="clearfix"></div>
			<form method="post" action="cart.php?a=add&pid={$pid}&domainselect=1" id="frmProductDomainSelections">
			
				<div id="DomainSearchResults" class="hidden col-md-10 col-md-offset-1 domaincontainer">

					<div id="searchDomainInfo" class="main_domain_result margin-bottom" style="padding:10px;">
						<p id="primaryLookupSearching" class="domain-lookup-loader domain-lookup-primary-loader domain-searching domain-checker-result-headline">
							<i class="fas fa-spinner fa-spin"></i>
							<span class="domain-lookup-register-loader">{lang key='orderForm.checkingAvailability'}...</span>
							<span class="domain-lookup-transfer-loader">{lang key='orderForm.verifyingTransferEligibility'}...</span>
							<span class="domain-lookup-other-loader">{lang key='orderForm.verifyingDomain'}...</span>
						</p>
						<div id="primaryLookupResult" class="domain-lookup-result domain-lookup-primary-results hidden">
							<div class="domain-unavailable domain-checker-unavailable headline">{lang key='orderForm.domainIsUnavailable'}</div>
							<div class="domain-available domain-checker-available headline" style="color: rgba(76, 175, 80,1.0);text-shadow: 1px 0px rgba(76, 175, 80,0.7), 1px 0px rgba(76, 175, 80,0.7), 1px 1px rgba(76, 175, 80,0.7), 1px 0px rgba(76, 175, 80,0.7);font-weight:300;">{$LANG.domainavailable1} <strong style="font-weight:500;"></strong> {$LANG.domainavailable2}</div>
							<div class="btn btn-primary domain-contact-support headline">{$LANG.domainContactUs}</div>
							<div class="transfer-eligible">
								<p class="domain-checker-available headline" style="color: rgba(76, 175, 80,1.0);text-shadow: 1px 0px rgba(76, 175, 80,0.7), 1px 0px rgba(76, 175, 80,0.7), 1px 1px rgba(76, 175, 80,0.7), 1px 0px rgba(76, 175, 80,0.7);font-weight:300;">{lang key='orderForm.transferEligible'}</p>
								<p>{lang key='orderForm.transferUnlockBeforeContinuing'}</p>
							</div>
							<div class="transfer-not-eligible">
								<p class="domain-checker-unavailable headline">{lang key='orderForm.transferNotEligible'}</p>
								<p>{lang key='orderForm.transferNotRegistered'}</p>
								<p>{lang key='orderForm.trasnferRecentlyRegistered'}</p>
								<p>{lang key='orderForm.transferAlternativelyRegister'}</p>
							</div>
							<div class="domain-invalid">
								<p class="domain-checker-unavailable headline">{lang key='orderForm.domainInvalid'}</p>
								<p>
									{lang key='orderForm.domainLetterOrNumber'}<span class="domain-length-restrictions">{lang key='orderForm.domainLengthRequirements'}</span><br /> {lang key='orderForm.domainInvalidCheckEntry'}
								</p>
							</div>
							<div class="domain-price">
								<span class="register-price-label">{lang key='orderForm.domainPriceRegisterLabel'}</span>
								<span class="transfer-price-label hidden">{lang key='orderForm.domainPriceTransferLabel'}</span>
								<span class="price"></span>
							</div>
                            <p class="domain-error domain-checker-unavailable headline"></p>
							<input type="hidden" id="resultDomainOption" name="domainoption" />
							<input type="hidden" id="resultDomain" name="domains[]" />
							<input type="hidden" id="resultDomainPricingTerm" />
							<div class="domain-available margin-bottom text-center" style="margin-top:10px;">
								<button id="btnDomainContinueExtra" type="submit" class="btn btn_checkavailability btn-sm">
									{$LANG.continue} <i class="fas fa-arrow-circle-right"></i>
								</button>
							</div>
						</div>
					</div>

					{if $registerdomainenabled} {if $spotlightTlds}
					<div id="spotlightTlds" class="margin-bottom clearfix hidden ">
						<div class="spotlight-tlds-container">
							{foreach $spotlightTlds as $key => $data}
							<div class="spotlight-tld-container spotlight-tld-container-{$spotlightTlds|count}">
								<div id="spotlight{$data.tldNoDots}" class="spotlight-tld" style="border:none!important;color:#ffffff;font-weight:500;background-color: rgba(240, 240, 240,0.4);">
									{if $data.group}
									<div class="spotlight-tld-{$data.group}">{$data.groupDisplayName}</div>
									{/if} {$data.tld}
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
										<span class="available price hidden">{$data.register}</span>
										<button type="button" class="btn hidden btn-add-to-cart btn_add_domain" data-whois="0" data-domain="">
                                                        <span class="to-add">{lang key='orderForm.add'}</span>
                                                        <span class="added">{lang key='domaincheckeradded'}</span>
                                                        <span class="unavailable">{$LANG.domaincheckertaken}</span>
                                                    </button>
										<button type="button" class="btn btn_add_domain domain-contact-support hidden">Contact Support to Purchase</button>
									</div>
								</div>
							</div>
							{/foreach}
						</div>
					</div>
					{/if}

					<div class="suggested-domains hidden">
						<h4 class="text-center" style="color:#ffffff;font-weight:700;text-shadow:0px 1px 0px rgba(0,0,0,0.9);">
						  {lang key='orderForm.suggestedDomains'}
						</h4>
						<div id="suggestionsLoader" class="panel-body domain-lookup-loader domain-lookup-suggestions-loader">
							<i class="fas fa-spinner fa-spin"></i> {lang key='orderForm.generatingSuggestions'}
						</div>
						<ul id="domainSuggestions" class="domain-lookup-result list-group hidden">
							<li class="domain-suggestion list-group-item hidden">
								<span class="domain"></span><span class="extension"></span>
								<button type="button" class="btn btn-add-to-cart btn_add_domain" data-whois="1" data-domain="">
                                        <span class="to-add">{$LANG.addtocart}</span>
                                        <span class="added">{lang key='domaincheckeradded'}</span>
                                        <span class="unavailable">{$LANG.domaincheckertaken}</span>
                                    </button>
								<button type="button" class="btn btn_add_domain domain-contact-support hidden">Contact Support to Purchase</button>
								<span class="price"></span>
								<span class="promo hidden"></span>
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
					
					{/if}
						
					<div class="text-center">
						<button id="btnDomainContinue" type="submit" class="btn btn-block btn_checkavailability btn-lg hidden" disabled="disabled">
							{$LANG.continue} <i class="fas fa-arrow-circle-right"></i>
						</button>
					</div>
					
				</div>

			</form>
		</div>
	</div>
</div>
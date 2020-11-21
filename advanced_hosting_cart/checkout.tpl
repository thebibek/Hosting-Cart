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
#order-rs_hosting_cart .small, small {
    font-size: 110%;
}
#order-rs_hosting_cart .mc-promos {
	max-width: 100%!important;
}
#order-rs_hosting_cart #orderSummary .summary-container .item div .col-sm-9 {
	font-size:110%;
}
#order-rs_hosting_cart #orderSummary .summary-container .item div .col-sm-3 {
	font-size:115%;
}
#order-rs_hosting_cart #orderSummary .summary-container .item div span, .renewal {
	font-size:130%;
}
#order-rs_hosting_cart #orderSummary .summary-container .item div span .renewal-price {
	font-size:80%;
}
#order-rs_hosting_cart #orderSummary .summary-container .bordered-totals span, .recurring-totals span, .subtotal span{
	font-size:120%;
}

#order-rs_hosting_cart #paymentGatewaysContainer {
	text-align:center;
}
#order-rs_hosting_cart #paymentGatewaysContainer .rs_checked_gateway {
	border:solid 1px rgba(144, 202, 249,1.0);
	padding:3px;
	border-radius:3px;
	width:115px;
	height:40px;
	font-size:28px;
	color:#000;
	font-weight:700;
}
#order-rs_hosting_cart #paymentGatewaysContainer .selected_payment {
	border: 2px solid rgba(129, 199, 132,1.0);
	background-color: rgba(156, 204, 101,1.0);
}
#order-rs_hosting_cart #paymentGatewaysContainer .radio-inline .iradio_square-blue, .iCheck-helper {
	display:none!important;
}
#order-rs_hosting_cart #paymentGatewaysContainer .radio-inline .iradio_square-default, .iCheck-helper {
	display:none!important;
}

#order-rs_hosting_cart .rs-btn-promo {
    background-color: rgba(189, 189, 189,1.0);
	color: rgba(250, 250, 250,1.0)!important;
	font-size: 16px;
	font-weight: 500;
}
#order-rs_hosting_cart .rs-btn-promo:hover, .rs-btn-promo:focus, .rs-btn-promo:active {
    background-color: rgba(158, 158, 158,1.0);
}
</style>

<script type="text/javascript">
	// Define state tab index value
	var statesTab = 10;
	// Do not enforce state input client side
	var stateNotRequired = true;
</script>

<script type="text/javascript" src="{$BASE_PATH_JS}/jquery.payment.js"></script>
<!-- <script type="text/javascript" src="{$BASE_PATH_JS}/StatesDropdown.js"></script> -->
<script type="text/javascript" src="{$BASE_PATH_JS}/PasswordStrength.js"></script>
<script type="text/javascript">
	window.langPasswordStrength = "{$LANG.pwstrength}";
	window.langPasswordWeak = "{$LANG.pwstrengthweak}";
	window.langPasswordModerate = "{$LANG.pwstrengthmoderate}";
	window.langPasswordStrong = "{$LANG.pwstrengthstrong}";
</script>

{foreach key=num item=gateway from=$gateways}
	<script type="text/javascript">
		jQuery(document).ready(function(){
			jQuery("#paymentGatewaysContainer #payment_{$gateway.sysname}").click(function(e) {
				e.preventDefault();
				jQuery('#paymentGatewaysContainer img').removeClass('selected_payment');
				{if $selectedgateway}jQuery('#paymentGatewaysContainer #payment_{$gateway.sysname}').addClass('selected_payment');{/if}
			});
		});
	</script>	
{/foreach}

<div id="order-rs_hosting_cart">

	<div class="row">

		<div class="col-md-12">
			<div class="header-lined margin-bottom">
				<h1 class="margin-bottom" style="margin-top:20px;padding:40px 0 0 0;border:none;color:#fff;font-weight:700;text-shadow:0px 1px 0px rgba(0,0,0,0.6);">
					{$LANG.cartreviewcheckout}
				</h1>
				<div class="row margin-bottom">
					<div class="col-md-4 col-md-offset-4 col-sm-6 col-sm-offset-3 col-xs-8 col-xs-offset-2">
						{include file="orderforms/$carttpl/sidebar-categories-collapsed.tpl"}
					</div>
				</div>
			</div>
		</div>

		<div class="col-md-12">

			<div class="row">
				<div class="col-md-7">

					{if $promoerrormessage}
						<div class="alert alert-warning text-left" role="alert">
							<button type="button" class="close" data-dismiss="alert" aria-label="Close">
							  <span aria-hidden="true">&times;</span>
							</button>
							{$promoerrormessage}
						</div>
						{elseif $promotioncode && $rawdiscount eq "0.00"}
						<div class="alert alert-info text-left" role="alert">
							<button type="button" class="close" data-dismiss="alert" aria-label="Close">
							  <span aria-hidden="true">&times;</span>
							</button>
							{$LANG.promoappliedbutnodiscount}
						</div>
						{elseif $promoaddedsuccess}
						<div class="alert alert-success text-left" role="alert">
							<button type="button" class="close" data-dismiss="alert" aria-label="Close">
							  <span aria-hidden="true">&times;</span>
							</button>
							{$LANG.orderForm.promotionAccepted}
						</div>
					{/if}
					
					 {if $bundlewarnings}
					<div class="alert alert-warning" role="alert">
							<button type="button" class="close" data-dismiss="alert" aria-label="Close">
							  <span aria-hidden="true">&times;</span>
							</button>
						<strong>{$LANG.bundlereqsnotmet}</strong><br />
						<ul>
							{foreach from=$bundlewarnings item=warning}
							<li>{$warning}</li>
							{/foreach}
						</ul>
					</div>
					{/if}
										
				<div class="view-cart-tabs">
							
						{foreach $hookOutput as $output}
						<div style="margin-top:-20px;">
							{$output}
						</div>
						{/foreach} 

			<div class="already-registered clearfix">
				<div class="pull-right">
					<button type="button" class="btn btn-info{if $loggedin || !$loggedin && $custtype eq " existing "} hidden{/if}" id="btnAlreadyRegistered">
                        {$LANG.orderForm.alreadyRegistered}
                    </button>
					<button type="button" class="btn btn-warning{if $loggedin || $custtype neq " existing "} hidden{/if}" id="btnNewUserSignup">
                        {$LANG.orderForm.createAccount}
                    </button>
				</div>
				<p class="{if $loggedin}hidden{/if}">{$LANG.orderForm.enterPersonalDetails}</p>
			</div>

			{if $errormessage}
			<div class="alert alert-danger checkout-error-feedback" role="alert">
				<button type="button" class="close" data-dismiss="alert" aria-label="Close">
				  <span aria-hidden="true">&times;</span>
				</button>
				<p>{$LANG.orderForm.correctErrors}:</p>
				<ul>
					{$errormessage}
				</ul>
			</div>
			<div class="clearfix"></div>
			{/if}

			<form method="post" action="{$smarty.server.PHP_SELF}?a=checkout" name="orderfrm" id="frmCheckout">
				<input type="hidden" name="submit" value="true" />
				<input type="hidden" name="custtype" id="inputCustType" value="{$custtype}" />

				<div id="containerExistingUserSignin" {if $loggedin || $custtype neq "existing"} class="hidden" {/if}>

					<div class="sub-heading{if $loggedin} hidden{/if}">
						<span>{$LANG.orderForm.existingCustomerLogin}</span>
					</div>

					<div class="row{if $loggedin} hidden{/if}">
						<div class="col-sm-6">
							<div class="form-group prepend-icon">
								<label for="inputLoginEmail" class="field-icon">
                                    <i class="fas fa-envelope"></i>
                                </label>
								<input type="text" name="loginemail" id="inputLoginEmail" class="field" placeholder="{$LANG.orderForm.emailAddress}" value="{$loginemail}">
							</div>
						</div>
						<div class="col-sm-6">
							<div class="form-group prepend-icon">
								<label for="inputLoginPassword" class="field-icon">
                                    <i class="fas fa-lock"></i>
                                </label>
								<input type="password" name="loginpassword" id="inputLoginPassword" class="field" placeholder="{$LANG.clientareapassword}">
							</div>
						</div>
					</div>

					{include file="orderforms/$carttpl/linkedaccounts.tpl" linkContext="checkout-existing"}
				</div>

				<div id="containerNewUserSignup"{if $custtype eq "existing" AND !$loggedin} class="hidden"{/if}>

					<div{if $loggedin} class="hidden" {/if}>
						{include file="orderforms/$carttpl/linkedaccounts.tpl" linkContext="checkout-new"}
				</div>

				<div class="sub-heading{if $loggedin} hidden{/if}">
					<span>{$LANG.orderForm.personalInformation}</span>
				</div>

				<div class="row{if $loggedin} hidden{/if}">
					<div class="col-sm-6">
						<div class="form-group prepend-icon">
							<label for="inputFirstName" class="field-icon">
                                    <i class="fas fa-user"></i>
                                </label>
							<input type="text" name="firstname" id="inputFirstName" class="field" placeholder="{$LANG.orderForm.firstName}" value="{$clientsdetails.firstname}" {if $loggedin} readonly="readonly" {/if} autofocus>
						</div>
					</div>
					<div class="col-sm-6">
						<div class="form-group prepend-icon">
							<label for="inputLastName" class="field-icon">
                                    <i class="fas fa-user"></i>
                                </label>
							<input type="text" name="lastname" id="inputLastName" class="field" placeholder="{$LANG.orderForm.lastName}" value="{$clientsdetails.lastname}" {if $loggedin} readonly="readonly" {/if}>
						</div>
					</div>
					<div class="col-sm-6">
						<div class="form-group prepend-icon">
							<label for="inputEmail" class="field-icon">
                                    <i class="fas fa-envelope"></i>
                                </label>
							<input type="email" name="email" id="inputEmail" class="field" placeholder="{$LANG.orderForm.emailAddress}" value="{$clientsdetails.email}" {if $loggedin} readonly="readonly" {/if}>
						</div>
					</div>
					<div class="col-sm-6">
						<div class="form-group prepend-icon">
							<label for="inputPhone" class="field-icon">
                                    <i class="fas fa-phone"></i>
                                </label>
							<input type="tel" name="phonenumber" id="inputPhone" class="field" placeholder="{$LANG.orderForm.phoneNumber}" value="{$clientsdetails.phonenumber}" {if $loggedin} readonly="readonly" {/if}>
						</div>
					</div>
				</div>

				<div class="sub-heading{if $loggedin} hidden{/if}">
					<span>{$LANG.orderForm.billingAddress}</span>
				</div>

				<div class="row{if $loggedin} hidden{/if}">
					<div class="col-sm-12">
						<div class="form-group prepend-icon">
							<label for="inputCompanyName" class="field-icon">
                                    <i class="fas fa-building"></i>
                                </label>
							<input type="text" name="companyname" id="inputCompanyName" class="field" placeholder="{$LANG.orderForm.companyName} ({$LANG.orderForm.optional})" value="{$clientsdetails.companyname}" {if $loggedin} readonly="readonly" {/if}>
						</div>
					</div>
					<div class="col-sm-12">
						<div class="form-group prepend-icon">
							<label for="inputAddress1" class="field-icon">
                                    <i class="far fa-building"></i>
                                </label>
							<input type="text" name="address1" id="inputAddress1" class="field" placeholder="{$LANG.orderForm.streetAddress}" value="{$clientsdetails.address1}" {if $loggedin} readonly="readonly" {/if}>
						</div>
					</div>
					<div class="col-sm-12">
						<div class="form-group prepend-icon">
							<label for="inputAddress2" class="field-icon">
                                    <i class="fas fa-map-marker-alt"></i>
                                </label>
							<input type="text" name="address2" id="inputAddress2" class="field" placeholder="{$LANG.orderForm.streetAddress2}" value="{$clientsdetails.address2}" {if $loggedin} readonly="readonly" {/if}>
						</div>
					</div>
					<div class="col-sm-4">
						<div class="form-group prepend-icon">
							<label for="inputCity" class="field-icon">
                                    <i class="far fa-building"></i>
                                </label>
							<input type="text" name="city" id="inputCity" class="field" placeholder="{$LANG.orderForm.city}" value="{$clientsdetails.city}" {if $loggedin} readonly="readonly" {/if}>
						</div>
					</div>
					<div class="col-sm-5">
						<div class="form-group prepend-icon">
							<!-- <label for="state" class="field-icon" id="inputStateIcon">
                                    <i class="fas fa-map-signs"></i>
                            </label> -->
							<label for="stateinput" class="field-icon" id="inputStateIcon">
                                    <i class="fas fa-map-signs"></i>
                                </label>
							<input type="text" name="state" id="inputState" class="field" placeholder="{$LANG.orderForm.state}" value="{$clientsdetails.state}" {if $loggedin} readonly="readonly" {/if}>
						</div>
					</div>
					<div class="col-sm-3">
						<div class="form-group prepend-icon">
							<label for="inputPostcode" class="field-icon">
                                    <i class="fas fa-certificate"></i>
                                </label>
							<input type="text" name="postcode" id="inputPostcode" class="field" placeholder="{$LANG.orderForm.postcode}" value="{$clientsdetails.postcode}" {if $loggedin} readonly="readonly" {/if}>
						</div>
					</div>
					<div class="col-sm-12">
						<div class="form-group">
							<div class="input-group">
								<div class="input-group-addon" style="background-color:#fff;color:#bbb;">
									<i class="fas fa-globe"></i>
								</div>
								<select name="country" id="inputCountry" class="form-control" style="width:100%;"{if $loggedin} disabled="disabled" {/if}>
									{foreach $countries as $countrycode => $countrylabel}
										<option value="{$countrycode}"{if (!$country && $countrycode == $defaultcountry) || $countrycode eq $country} selected{/if}>
											{$countrylabel}
										</option>
									{/foreach}
								</select>
							</div>
						</div>
					</div>
				</div>

				{if $customfields}
				<div class="sub-heading">
					<span>{$LANG.orderadditionalrequiredinfo}</span>
				</div>
				<div class="field-container">
					<div class="row">
						{foreach $customfields as $customfield}
						<div class="col-sm-6">
							<div class="form-group">
								<label for="customfield{$customfield.id}">{$customfield.name}</label> {$customfield.input} {if $customfield.description}
								<span class="field-help-text">
                                      {$customfield.description}
                                </span> {/if}
							</div>
						</div>
						{/foreach}
					</div>
				</div>
				{/if}

		</div>

		{if $domainsinorder}

		<div class="sub-heading">
			<span>{$LANG.domainregistrantinfo}</span>
		</div>

		<div class="row margin-bottom">
			<div class="col-sm-8 col-sm-offset-2">
				<div class="form-group">
					<div class="input-group">
						<select name="contact" id="inputDomainContact" class="form-control" style="width:100%;">
								<option value="">{$LANG.usedefaultcontact}</option>
								{foreach $domaincontacts as $domcontact}
									<option value="{$domcontact.id}"{if $contact == $domcontact.id} selected{/if}>
										{$domcontact.name}
									</option>
								{/foreach}
								<option value="addingnew"{if $contact == "addingnew"} selected{/if}>
									{$LANG.clientareanavaddcontact}...
								</option>
						</select>
						<div class="input-group-addon">
							<a href="#"><i class="fas fa-question-circle fa-lg" data-toggle="tooltip" data-placement="left" data-original-title="{$LANG.orderForm.domainAlternativeContact}"></i></a>
						</div>
					</div>
				</div>
			</div>
		</div>

		<div class="row{if $contact neq " addingnew "} hidden{/if}" id="domainRegistrantInputFields">
			<div class="col-sm-6">
				<div class="form-group prepend-icon">
					<label for="inputDCFirstName" class="field-icon">
                                    <i class="fas fa-user"></i>
                                </label>
					<input type="text" name="domaincontactfirstname" id="inputDCFirstName" class="field" placeholder="{$LANG.orderForm.firstName}" value="{$domaincontact.firstname}">
				</div>
			</div>
			<div class="col-sm-6">
				<div class="form-group prepend-icon">
					<label for="inputDCLastName" class="field-icon">
                                    <i class="fas fa-user"></i>
                                </label>
					<input type="text" name="domaincontactlastname" id="inputDCLastName" class="field" placeholder="{$LANG.orderForm.lastName}" value="{$domaincontact.lastname}">
				</div>
			</div>
			<div class="col-sm-6">
				<div class="form-group prepend-icon">
					<label for="inputDCEmail" class="field-icon">
                                    <i class="fas fa-envelope"></i>
                                </label>
					<input type="email" name="domaincontactemail" id="inputDCEmail" class="field" placeholder="{$LANG.orderForm.emailAddress}" value="{$domaincontact.email}">
				</div>
			</div>
			<div class="col-sm-6">
				<div class="form-group prepend-icon">
					<label for="inputDCPhone" class="field-icon">
                                    <i class="fas fa-phone"></i>
                                </label>
					<input type="tel" name="domaincontactphonenumber" id="inputDCPhone" class="field" placeholder="{$LANG.orderForm.phoneNumber}" value="{$domaincontact.phonenumber}">
				</div>
			</div>
			<div class="col-sm-12">
				<div class="form-group prepend-icon">
					<label for="inputDCCompanyName" class="field-icon">
                                    <i class="fas fa-building"></i>
                                </label>
					<input type="text" name="domaincontactcompanyname" id="inputDCCompanyName" class="field" placeholder="{$LANG.orderForm.companyName} ({$LANG.orderForm.optional})" value="{$domaincontact.companyname}">
				</div>
			</div>
			<div class="col-sm-12">
				<div class="form-group prepend-icon">
					<label for="inputDCAddress1" class="field-icon">
                                    <i class="far fa-building"></i>
                                </label>
					<input type="text" name="domaincontactaddress1" id="inputDCAddress1" class="field" placeholder="{$LANG.orderForm.streetAddress}" value="{$domaincontact.address1}">
				</div>
			</div>
			<div class="col-sm-12">
				<div class="form-group prepend-icon">
					<label for="inputDCAddress2" class="field-icon">
                                    <i class="fas fa-map-marker-alt"></i>
                                </label>
					<input type="text" name="domaincontactaddress2" id="inputDCAddress2" class="field" placeholder="{$LANG.orderForm.streetAddress2}" value="{$domaincontact.address2}">
				</div>
			</div>
			<div class="col-sm-4">
				<div class="form-group prepend-icon">
					<label for="inputDCCity" class="field-icon">
                                    <i class="far fa-building"></i>
                                </label>
					<input type="text" name="domaincontactcity" id="inputDCCity" class="field" placeholder="{$LANG.orderForm.city}" value="{$domaincontact.city}">
				</div>
			</div>
			<div class="col-sm-5">
				<div class="form-group prepend-icon">
					<label for="inputDCState" class="field-icon">
                                    <i class="fas fa-map-signs"></i>
                                </label>
					<input type="text" name="domaincontactstate" id="inputDCState" class="field" placeholder="{$LANG.orderForm.state}" value="{$domaincontact.state}">
				</div>
			</div>
			<div class="col-sm-3">
				<div class="form-group prepend-icon">
					<label for="inputDCPostcode" class="field-icon">
                                    <i class="fas fa-certificate"></i>
                                </label>
					<input type="text" name="domaincontactpostcode" id="inputDCPostcode" class="field" placeholder="{$LANG.orderForm.postcode}" value="{$domaincontact.postcode}">
				</div>
			</div>
			<div class="col-sm-12">
			<div class="form-group">
				<div class="input-group">
					<div class="input-group-addon" style="background-color:#fff;color:#bbb;">
						<i class="fas fa-globe"></i>
					</div>
					<select name="domaincontactcountry" id="inputDCCountry" class="form-control" style="width:100%;">
						{foreach $countries as $countrycode => $countrylabel}
							<option value="{$countrycode}"{if (!$domaincontact.country && $countrycode == $defaultcountry) || $countrycode eq $domaincontact.country} selected{/if}>
								{$countrylabel}
							</option>
						{/foreach}
					</select>
				</div>
			</div>
			</div>
			<div class="col-sm-12">
				<div class="form-group prepend-icon">
					<label for="inputDCTaxId" class="field-icon">
						<i class="fas fa-building"></i>
					</label>
					<input type="text" name="domaincontacttax_id" id="inputDCTaxId" class="field" placeholder="{lang key=\WHMCS\Billing\Tax\Vat::getLabel()} ({$LANG.orderForm.optional})" value="{$domaincontact.tax_id}">
				</div>
			</div>
		</div>

		{/if} {if !$loggedin}

		<div id="containerNewUserSecurity" {if (!$loggedin && $custtype eq "existing") || ($remote_auth_prelinked && !$securityquestions) } class="hidden" {/if}>

			<div class="sub-heading">
				<span>{$LANG.orderForm.accountSecurity}</span>
			</div>

			<div id="containerPassword" class="row{if $remote_auth_prelinked && $securityquestions} hidden{/if}">
				<div id="passwdFeedback" style="display: none;" class="alert alert-info text-center col-sm-12"></div>
				<div class="col-sm-6">
					<div class="form-group prepend-icon">
						<label for="inputNewPassword1" class="field-icon">
                                        <i class="fas fa-lock"></i>
                                    </label>
						<input type="password" name="password" id="inputNewPassword1" data-error-threshold="{$pwStrengthErrorThreshold}" data-warning-threshold="{$pwStrengthWarningThreshold}" class="field" placeholder="{$LANG.clientareapassword}" {if $remote_auth_prelinked} value="{$password}" {/if}>
					</div>
				</div>
				<div class="col-sm-6">
					<div class="form-group prepend-icon">
						<label for="inputNewPassword2" class="field-icon">
                                        <i class="fas fa-lock"></i>
                                    </label>
						<input type="password" name="password2" id="inputNewPassword2" class="field" placeholder="{$LANG.clientareaconfirmpassword}" {if $remote_auth_prelinked} value="{$password}" {/if}>
					</div>
				</div>
				<div class="col-sm-6">
					<button type="button" class="btn btn-default btn-sm generate-password" data-targetfields="inputNewPassword1,inputNewPassword2">
						{$LANG.generatePassword.btnLabel}
					</button>
				</div>
				<div class="col-sm-6">
					<div class="password-strength-meter">
						<div class="progress">
							<div class="progress-bar progress-bar-success progress-bar-striped" role="progressbar" aria-valuenow="0" aria-valuemin="0" aria-valuemax="100" id="passwordStrengthMeterBar">
							</div>
						</div>
						<p class="text-center small text-muted" id="passwordStrengthTextLabel">{$LANG.pwstrength}: {$LANG.pwstrengthenter}</p>
					</div>
				</div>
			</div>
			{if $securityquestions}
			<div class="row">
				<div class="col-sm-6">
					<select name="securityqid" id="inputSecurityQId" class="field" style="width:100%;">
						<option value="">{$LANG.clientareasecurityquestion}</option>
						{foreach $securityquestions as $question}
							<option value="{$question.id}"{if $question.id eq $securityqid} selected{/if}>
								{$question.question}
							</option>
						{/foreach}
					</select>
				</div>
				<div class="col-sm-6">
					<div class="form-group prepend-icon">
						<label for="inputSecurityQAns" class="field-icon">
                                            <i class="fas fa-lock"></i>
                                        </label>
						<input type="password" name="securityqans" id="inputSecurityQAns" class="field" placeholder="{$LANG.clientareasecurityanswer}">
					</div>
				</div>
			</div>
			{/if}

		</div>

		{/if} 

		<div class="sub-heading">
			<span>{$LANG.orderForm.paymentDetails}</span>
		</div>

		{if $canUseCreditOnCheckout}
			<div id="applyCreditContainer" class="apply-credit-container" data-apply-credit="{$applyCredit}">
				<p>{lang key='cart.availableCreditBalance' amount=$creditBalance}</p>

				{if $creditBalance->toNumeric() >= $total->toNumeric()}
				<label class="radio">
									<input id="useFullCreditOnCheckout" type="radio" name="applycredit" value="1"{if $applyCredit} checked{/if}>
									{lang key='cart.applyCreditAmountNoFurtherPayment' amount=$total}
								</label> {else}
				<label class="radio">
									<input id="useCreditOnCheckout" type="radio" name="applycredit" value="1"{if $applyCredit} checked{/if}>
									{lang key='cart.applyCreditAmount' amount=$creditBalance}
								</label> {/if}
				<label class="radio">
								<input id="skipCreditOnCheckout" type="radio" name="applycredit" value="0"{if !$applyCredit} checked{/if}>
								{lang key='cart.applyCreditSkip' amount=$creditBalance}
							</label>
			</div>
		{/if}

		{if !$inExpressCheckout}
			<div id="paymentGatewaysContainer" class="form-group">
				<p class="small text-muted">{$LANG.orderForm.preferredPaymentMethod}</p>

				<div class="text-center">
					{foreach $gateways as $gateway}
						<label class="radio-inline margin-bottom">
							<input type="radio"
								   name="paymentmethod"
								   value="{$gateway.sysname}"
								   data-payment-type="{$gateway.payment_type}"
								   data-show-local="{$gateway.show_local_cards}"
								   data-remote-inputs="{$gateway.uses_remote_inputs}"
								   class="payment-methods{if $gateway.type eq "CC"} is-credit-card{/if}"
								   {if $selectedgateway eq $gateway.sysname} checked{/if}
							/>
							{if $gateway.sysname}
								<img id="payment_{$gateway.sysname}" class="rs_checked_gateway{if $selectedgateway eq $gateway.sysname} selected_payment {/if}" align="center" alt="{$gateway.name}" title="{$gateway.name}" src="templates/orderforms/{$carttpl}/img/gateways/{$gateway.sysname}.png" />
							{else}
								{$gateway.name}
							{/if}
						</label>
					{/foreach}
				</div>
			</div>
		
			<div class="alert alert-danger text-center gateway-errors hidden"></div>
				
			<div class="clearfix"></div>

			<div class="cc-input-container{if $selectedgatewaytype neq "CC"} hidden{/if}" id="creditCardInputFields">
				{if $client}
					<div id="existingCardsContainer" class="existing-cc-grid">
						{foreach $client->payMethods->validateGateways()->sortByExpiryDate() as $payMethod}
							{assign "payMethodExpired" 0}
							{assign "expiryDate" ""}
							{if $payMethod->isCreditCard()}
								{if ($payMethod->payment->isExpired())}
									{assign "payMethodExpired" 1}
								{/if}

								{if $payMethod->payment->getExpiryDate()}
									{assign "expiryDate" $payMethod->payment->getExpiryDate()->format('m/Y')}
								{/if}
							{/if}

							<div class="paymethod-info radio-inline" data-paymethod-id="{$payMethod->id}">
								<input
									type="radio"
									name="ccinfo"
									class="existing-card"
									{if $payMethodExpired}disabled{/if}
									data-payment-type="{$payMethod->getType()}"
									data-payment-gateway="{$payMethod->gateway_name}"
									data-order-preference="{$payMethod->order_preference}"
									value="{$payMethod->id}">
							</div>

							<div class="paymethod-info" data-paymethod-id="{$payMethod->id}">
								<i class="{$payMethod->getFontAwesomeIcon()}"></i>
							</div>
							<div class="paymethod-info" data-paymethod-id="{$payMethod->id}">
								{if $payMethod->isCreditCard() || $payMethod->isRemoteBankAccount()}
									{$payMethod->payment->getDisplayName()}
								{else}
									<span class="type">
										{$payMethod->payment->getAccountType()}
									</span>
									{substr($payMethod->payment->getAccountNumber(), -4)}
								{/if}
							</div>
							<div class="paymethod-info" data-paymethod-id="{$payMethod->id}">
								{$payMethod->getDescription()}
							</div>
							<div class="paymethod-info" data-paymethod-id="{$payMethod->id}">
								{$expiryDate}{if $payMethodExpired}<br><small>{$LANG.clientareaexpired}</small>{/if}
							</div>
						{/foreach}
					</div>
				{/if}
				<div class="row cvv-input" id="existingCardInfo">
					<div class="col-lg-3 col-sm-4">
						<div class="form-group prepend-icon">
							<label for="inputCardCVV2" class="field-icon">
								<i class="fas fa-barcode"></i>
							</label>
							<div class="input-group">
								<input type="tel" name="cccvv" id="inputCardCVV2" class="field" placeholder="{$LANG.creditcardcvvnumbershort}" autocomplete="cc-cvc">
								<span class="input-group-btn">
									<button type="button" class="btn btn-default" data-toggle="popover" data-placement="bottom" data-content="<img src='{$BASE_PATH_IMG}/ccv.gif' width='210' />">
										?
									</button>
								</span>
							</div>
							<span class="field-error-msg">{lang key="paymentMethodsManage.cvcNumberNotValid"}</span>
						</div>
					</div>
				</div>

				<ul>
					<li>
						<label class="radio-inline">
							<input type="radio" name="ccinfo" value="new" id="new" {if !$client || $client->payMethods->count() === 0} checked="checked"{/if} />
							&nbsp;
							{lang key='creditcardenternewcard'}
						</label>
					</li>
				</ul>

				<div class="row" id="newCardInfo">
					<div id="cardNumberContainer" class="col-sm-6 new-card-container">
						<div class="form-group prepend-icon">
							<label for="inputCardNumber" class="field-icon">
								<i class="fas fa-credit-card"></i>
							</label>
							<input type="tel" name="ccnumber" id="inputCardNumber" class="field cc-number-field" placeholder="{$LANG.orderForm.cardNumber}" autocomplete="cc-number" data-message-unsupported="{lang key='paymentMethodsManage.unsupportedCardType'}" data-message-invalid="{lang key='paymentMethodsManage.cardNumberNotValid'}" data-supported-cards="{$supportedCardTypes}" />
							<span class="field-error-msg"></span>
						</div>
					</div>
					<div class="col-sm-3 new-card-container">
						<div class="form-group prepend-icon">
							<label for="inputCardExpiry" class="field-icon">
								<i class="fas fa-calendar-alt"></i>
							</label>
							<input type="tel" name="ccexpirydate" id="inputCardExpiry" class="field" placeholder="MM / YY{if $showccissuestart} ({$LANG.creditcardcardexpires}){/if}" autocomplete="cc-exp">
							<span class="field-error-msg">{lang key="paymentMethodsManage.expiryDateNotValid"}</span>
						</div>
					</div>
					<div class="col-sm-3" id="cvv-field-container">
						<div class="form-group prepend-icon">
							<label for="inputCardCVV" class="field-icon">
								<i class="fas fa-barcode"></i>
							</label>
							<div class="input-group">
								<input type="tel" name="cccvv" id="inputCardCVV" class="field" placeholder="{$LANG.creditcardcvvnumbershort}" autocomplete="cc-cvc">
								<span class="input-group-btn">
									<button type="button" class="btn btn-default" data-toggle="popover" data-placement="bottom" data-content="<img src='{$BASE_PATH_IMG}/ccv.gif' width='210' />">
										?
									</button>
								</span><br>
							</div>
							<span class="field-error-msg">{lang key="paymentMethodsManage.cvcNumberNotValid"}</span>
						</div>
					</div>
					{if $showccissuestart}
						<div class="col-sm-3 col-sm-offset-6 new-card-container">
							<div class="form-group prepend-icon">
								<label for="inputCardStart" class="field-icon">
									<i class="far fa-calendar-check"></i>
								</label>
								<input type="tel" name="ccstartdate" id="inputCardStart" class="field" placeholder="MM / YY ({$LANG.creditcardcardstart})" autocomplete="cc-exp">
							</div>
						</div>
						<div class="col-sm-3 new-card-container">
							<div class="form-group prepend-icon">
								<label for="inputCardIssue" class="field-icon">
									<i class="fas fa-asterisk"></i>
								</label>
								<input type="tel" name="ccissuenum" id="inputCardIssue" class="field" placeholder="{$LANG.creditcardcardissuenum}">
							</div>
						</div>
					{/if}
				</div>
				<div class="row" id="newCardSaveSettings">
					<div class="form-group new-card-container">
						<div id="inputDescriptionContainer" class="col-md-6">
							<div class="prepend-icon">
								<label for="inputDescription" class="field-icon">
									<i class="fas fa-pencil"></i>
								</label>
								<input type="text" class="field" id="inputDescription" name="ccdescription" autocomplete="off" value="" placeholder="{$LANG.paymentMethods.descriptionInput} {$LANG.paymentMethodsManage.optional}" />
							</div>
						</div>
						{if $allowClientsToRemoveCards}
							<div id="inputNoStoreContainer" class="col-md-6" style="line-height: 32px;">
								<input type="hidden" name="nostore" value="1">
								<input type="checkbox" class="toggle-switch-success no-icheck" data-size="mini" checked="checked" name="nostore" id="inputNoStore" value="0" data-on-text="{lang key='yes'}" data-off-text="{lang key='no'}">
								<label for="inputNoStore" class="checkbox-inline no-padding">
									&nbsp;&nbsp;
									{$LANG.creditCardStore}
								</label>
							</div>
						{/if}
					</div>
				</div>
			</div>
		{else}
			{if $expressCheckoutOutput}
				{$expressCheckoutOutput}
			{else}
				<p align="center">
					{lang key='paymentPreApproved' gateway=$expressCheckoutGateway}
				</p>
			{/if}
		{/if}

		{if $shownotesfield}
		
		<div class="sub-heading">
			<span>{$LANG.orderForm.additionalNotes}</span>
		</div>

		<div class="row">
			<div class="col-sm-12">
				<div class="form-group">
					<textarea name="notes" class="field form-control" rows="4" placeholder="{$LANG.ordernotesdescription}">{$orderNotes}</textarea>
				</div>
			</div>
		</div>

		{/if} 

		</form>

		<div class="sub-heading">
			<span>{$LANG.orderForm.applyPromoCode}</span>
		</div>

		<div class="row">
			<div class="col-sm-12 promo margin-bottom" id="applyPromo">
				{if $promotioncode}
				<div class="view-cart-promotion-code">
						{$promotioncode} - {$promotiondescription}
						<a href="{$smarty.server.PHP_SELF}?a=removepromo" title="{$LANG.orderForm.removePromotionCode}" class="btn btn-sm" style="margin:-5px!important;">
							<i class="fas fa-trash-alt fa-lg"></i>
						</a>
				</div>
				<div class="text-center">
				</div>
				{else}
				<form method="post" action="cart.php?a=view">
					<div class="row">
						<div class="col-md-9 col-xs-8">
							<div class="form-group form-group-md prepend-icon">
								<label for="inputPromotionCode" class="field-icon">
									<i class="fas fa-ticket-alt"></i>
								</label>
								<input type="text" name="promocode" id="inputPromotionCode" class="field" style="width:100%;" placeholder="{lang key="orderPromoCodePlaceholder"}" required="required" />
							</div>
						</div>
						<div class="col-md-3 col-xs-4">
							<div class="form-group form-group-md">
									<button type="submit" name="validatepromo" id="inputPromotionCode" class="btn btn-block rs-btn-promo" style="width:100%;" value="{$LANG.orderpromovalidatebutton}">{$LANG.orderpromovalidatebutton} <i class="fas fa-chevron-right"></i></button>
							</div>
						</div>
					</div>
				</form>
				{/if}
			</div>
		</div>
		
	{if $taxenabled && !$loggedin}
	
		<div class="sub-heading">
			<span>{$LANG.orderForm.estimateTaxes}</span>
		</div>
		
		<div class="row margin-bottom" id="calcTaxes">
			<form method="post" action="cart.php?a=setstateandcountry">
				<div class="form-group  prepend-icon form-group-md">
					<div class="col-xs-4 col-sm-5 col-md-5">
					<label for="inputState" class="field-icon" id="inputStateIcon">
							<i class="fas fa-map-signs"></i>
						</label>
						<input type="text" name="state" id="inputState" value="{$clientsdetails.state}" placeholder="{$LANG.orderForm.state}" class="field"{if $loggedin} disabled="disabled" {/if} />
					</div>
					<div class="col-xs-4 col-sm-3 col-md-4">
						<select name="country" id="inputTaxCountry" class="form-control" style="width:100%;">
							{foreach $countries as $countrycode => $countrylabel}
								<option value="{$countrycode}"{if (!$country && $countrycode == $defaultcountry) || $countrycode eq $country} selected{/if}>
									{$countrylabel}
								</option>
							{/foreach}
						</select>
					</div>
					<div class="col-xs-4 col-sm-4 col-md-3">
						<button type="submit" class="btn btn-block rs-btn-promo">
							{$LANG.orderForm.updateTotals} <i class="fas fa-chevron-right"></i>
						</button>
					</div>
				</div>
			</form>
		</div>
		
	{/if}
	
			{if $showMarketingEmailOptIn}
				<div class="marketing-email-optin">
					<h4>{lang key='emailMarketing.joinOurMailingList'}</h4>
					<p>{$marketingEmailOptInMessage}</p>
					<input type="checkbox" form="frmCheckout" name="marketingoptin" value="1" {if $marketingEmailOptIn} checked{/if} class="no-icheck toggle-switch-success" data-size="small" data-on-text="{lang key='yes'}" data-off-text="{lang key='no'}">
				</div>
			{/if}

			{if $servedOverSsl}
			<div class="alert alert-success checkout-security-msg">
				<i class="fas fa-lock"></i> {$LANG.ordersecure} (<strong>{$ipaddress}</strong>) {$LANG.ordersecure2}
				<div class="clearfix"></div>
			</div>
			{/if}

			
			
		</div>
	</div>
	
				
				<div class="col-md-5" id="scrollingPanelContainer">

					<div class="order-summary" id="orderSummary">
					
						<div class="loader" id="orderSummaryLoader" style="display: none;">
							<i class="fas fa-fw fa-spinner fa-spin"></i>
						</div>
						<h2>{$LANG.ordersummary}</h2>
						
						<div class="summary-container" style="border-left:1px solid #666;border-right:1px solid #666;">
							<form method="post" action="{$smarty.server.PHP_SELF}?a=view" style="margin:-10px;margin-bottom:10px;">

								<div class="view-cart-items-header" style="color:#666;background-color:#fff;border:none;border-bottom:1px solid #666;">
									<div class="row">
										<div class="{if $showqtyoptions}col-sm-7{else}col-sm-9{/if} col-xs-8">
											{$LANG.orderForm.productOptions}
										</div>
										{if $showqtyoptions}
										<div class="col-sm-2 hidden-xs text-center">
											{$LANG.orderForm.qty}
										</div>
										{/if}
										<div class="col-sm-3 col-xs-4 text-right">
											{$LANG.orderForm.priceCycle}
										</div>
									</div>
								</div>
								<div class="view-cart-items" style="color:#666;background-color:#fff;border:none;border-bottom:1px solid #666;">

									{foreach $products as $num => $product}
									<div class="item">
										<div class="row">
											<div class="{if $showqtyoptions}col-sm-7{else}col-sm-9{/if}">
												<span class="item-title">
					                                        {$product.productinfo.name}
					                                        <a href="{$smarty.server.PHP_SELF}?a=confproduct&i={$num}" class="btn btn-link btn-xs">
					                                            <i class="fas fa-pencil-alt"></i>
					                                            {$LANG.orderForm.edit}
					                                        </a>
					                                        <button type="button" class="btn btn-link btn-xs btn-remove-from-cart" onclick="removeItem('p','{$num}')">
					                                            <i class="fas fa-times"></i>
					                                            {$LANG.orderForm.remove}
					                                        </button>
												</span>
												<span class="item-group">
					                                        {$product.productinfo.groupname}
					                                    </span> {if $product.domain}
												<span class="item-domain">
					                                            {$product.domain}
					                                        </span> {/if} {if $product.configoptions}
												<small>
					                                        {foreach key=confnum item=configoption from=$product.configoptions}
					                                            &nbsp;&raquo; {$configoption.name}: {if $configoption.type eq 1 || $configoption.type eq 2}{$configoption.option}{elseif $configoption.type eq 3}{if $configoption.qty}{$configoption.option}{else}{$LANG.no}{/if}{elseif $configoption.type eq 4}{$configoption.qty} x {$configoption.option}{/if}<br />
					                                        {/foreach}
					                                        </small> {/if}
											</div>
											{if $showqtyoptions}
											<div class="col-sm-2 item-qty">
												{if $product.allowqty}
												<input type="number" name="qty[{$num}]" value="{$product.qty}" class="form-control text-center" />
												<button type="submit" class="btn btn-xs">
					                                                {$LANG.orderForm.update}
					                                            </button> {/if}
											</div>
											{/if}
											<div class="col-sm-3 item-price">
												<span>{$product.pricing.totalTodayExcludingTaxSetup}</span>
												<span class="cycle">{$product.billingcyclefriendly}</span> {if $product.pricing.productonlysetup} {$product.pricing.productonlysetup->toPrefixed()} {$LANG.ordersetupfee} {/if} {if $product.proratadate}<br />({$LANG.orderprorata} {$product.proratadate}){/if}
											</div>
										</div>
									</div>
									
									{foreach key=addonnum item=addon from=$product.addons}
									<div class="item">
										<div class="row">
											<div class="col-sm-9">
												<span class="item-title">
					                                            {$addon.name}
					                                        </span>
												<span class="item-group">
					                                            {$LANG.orderaddon}
					                                        </span> {if $addon.setup}
												<span class="item-setup">
					                                                {$addon.setup} {$LANG.ordersetupfee}
					                                            </span> {/if}
											</div>
											<div class="col-sm-3 item-price">
												<span>{$addon.totaltoday}</span>
												<span class="cycle">{$addon.billingcyclefriendly}</span>
											</div>
										</div>
									</div>
									{/foreach} 
									
									{/foreach} {foreach $addons as $num => $addon}
									<div class="item">
										<div class="row">
											<div class="col-sm-9">
												<span class="item-title">
					                                        {$addon.name}
					                                        <button type="button" class="btn btn-link btn-xs btn-remove-from-cart" onclick="removeItem('a','{$num}')">
					                                            <i class="fas fa-times"></i>
					                                            {$LANG.orderForm.remove}
					                                        </button>
												</span>
												<span class="item-group">
					                                        {$addon.productname}
					                                    </span> {if $addon.domainname}
												<span class="item-domain">
					                                            {$addon.domainname}
					                                        </span> {/if} {if $addon.setup}
												<span class="item-setup">
					                                            {$addon.setup} {$LANG.ordersetupfee}
					                                        </span> {/if}
											</div>
											<div class="col-sm-3 item-price">
												<span>{$addon.pricingtext}</span>
												<span class="cycle">{$addon.billingcyclefriendly}</span>
											</div>
										</div>
									</div>
									{/foreach} 
									
									{foreach $domains as $num => $domain}
									<div class="item">
										<div class="row">
											<div class="col-sm-9"">
												<span class="item-title">
					                                        {if $domain.type eq "register"}{$LANG.orderdomainregistration}{else}{$LANG.orderdomaintransfer}{/if}
					                                        <a href="{$smarty.server.PHP_SELF}?a=confdomains" class="btn btn-link btn-xs">
					                                            <i class="fas fa-pencil-alt"></i>
					                                            {$LANG.orderForm.edit}
					                                        </a>
					                                        <button type="button" class="btn btn-link btn-xs btn-remove-from-cart" onclick="removeItem('d','{$num}')">
					                                            <i class="fas fa-times"></i>
					                                            {$LANG.orderForm.remove}
					                                        </button>
												</span>
												{if $domain.domain}
												<span class="item-domain">
					                                            {$domain.domain}
					                                        </span> {/if} {if $domain.dnsmanagement}&nbsp;&raquo; {$LANG.domaindnsmanagement}<br />{/if} {if $domain.emailforwarding}&nbsp;&raquo; {$LANG.domainemailforwarding}<br />{/if} {if $domain.idprotection}&nbsp;&raquo; {$LANG.domainidprotection}<br />{/if}
											</div>
											<div class="col-sm-3 item-price">
												{if count($domain.pricing) == 1 || $domain.type == 'transfer'}
												<span name="{$domain.domain}Price">{$domain.price}</span>
												<span class="cycle">{$domain.regperiod} {$domain.yearsLanguage}</span>
												<span class="renewal cycle">
					                                            {if isset($domain.renewprice)}{lang key='domainrenewalprice'} <span class="renewal-price cycle">{$domain.renewprice->toPrefixed()}{$domain.shortRenewalYearsLanguage}{/if}</span>
												</span>
												{else}
												<span name="{$domain.domain}Price">{$domain.price}</span>
												<div class="dropdown">
													<button class="btn btn-default btn-xs dropdown-toggle" type="button" id="{$domain.domain}Pricing" name="{$domain.domain}Pricing" data-toggle="dropdown" aria-haspopup="true" aria-expanded="true">
					                                                {$domain.regperiod} {$domain.yearsLanguage}
					                                                <span class="caret"></span>
					                                            </button>
													<ul class="dropdown-menu" aria-labelledby="{$domain.domain}Pricing">
														{foreach $domain.pricing as $years => $price}
														<li>
															<a href="#" onclick="selectDomainPeriodInCart('{$domain.domain}', '{$price.register}', {$years}, '{if $years == 1}{lang key='orderForm.year'}{else}{lang key='orderForm.years'}{/if}');return false;">
					                                                            {$years} {if $years == 1}{lang key='orderForm.year'}{else}{lang key='orderForm.years'}{/if} @ {$price.register}
					                                                        </a>
														</li>
														{/foreach}
													</ul>
												</div>
												<span class="renewal cycle">
					                                            {lang key='domainrenewalprice'} <span class="renewal-price cycle">{if isset($domain.renewprice)}{$domain.renewprice->toPrefixed()}{$domain.shortRenewalYearsLanguage}{/if}</span>
												</span>
												{/if}
											</div>
											</div>
										</div>
									{/foreach} 
									
									{foreach key=num item=domain from=$renewals}
									<div class="item">
										<div class="row">
											<div class="col-sm-9">
												<span class="item-title">
					                                        {$LANG.domainrenewal}
															<button type="button" class="btn btn-link btn-xs btn-remove-from-cart" onclick="removeItem('r','{$num}')">
					                                        <i class="fas fa-times"></i>
					                                        {$LANG.orderForm.remove}
					                            			</button>
					                             </span>
												<span class="item-domain">
					                                        {$domain.domain}
					                                    </span> {if $domain.dnsmanagement}&nbsp;&raquo; {$LANG.domaindnsmanagement}<br />{/if} {if $domain.emailforwarding}&nbsp;&raquo; {$LANG.domainemailforwarding}<br />{/if} {if $domain.idprotection}&nbsp;&raquo; {$LANG.domainidprotection}<br />{/if}
											</div>
											<div class="col-sm-3 item-price">
												<span>{$domain.price}</span>
												<span class="cycle">{$domain.regperiod} {$LANG.orderyears}</span>
											</div>
										</div>
									</div>
									{/foreach}
									
									{foreach $upgrades as $num => $upgrade}
									<div class="item">
										<div class="row">
											<div class="col-sm-9">
												<span class="item-title">
					                                        {$LANG.upgrade}
												<button type="button" class="btn btn-link btn-xs btn-remove-from-cart" onclick="removeItem('u','{$num}')">
					                                        <i class="fas fa-times"></i>
					                                        {$LANG.orderForm.remove}
					                                    </button>
					                                    </span>
												<span class="item-group">
					                                        {if $upgrade->type == 'service'}
					                                            {$upgrade->originalProduct->productGroup->name}<br>{$upgrade->originalProduct->name} => {$upgrade->newProduct->name}
					                                        {elseif $upgrade->type == 'addon'}
					                                            {$upgrade->originalAddon->name} => {$upgrade->newAddon->name}
					                                        {/if}
					                                    </span>
												<span class="item-domain">
					                                        {if $upgrade->type == 'service'}
					                                            {$upgrade->service->domain}
					                                        {/if}
					                                    </span>
											</div>
											<div class="col-sm-3 item-price">
												<span>{$upgrade->newRecurringAmount}</span>
												<span class="cycle">{$upgrade->localisedNewCycle}</span>
											</div>
										</div>
										
										{if $upgrade->totalDaysInCycle > 0}
										<div class="row row-upgrade-credit">
											<div class="col-sm-9">
												<span class="item-group">
					                                            {$LANG.upgradeCredit}
					                                        </span>
												<div class="upgrade-calc-msg">
													{lang key="upgradeCreditDescription" daysRemaining=$upgrade->daysRemaining totalDays=$upgrade->totalDaysInCycle}
												</div>
											</div>
											<div class="col-sm-3 item-price">
												<span>-{$upgrade->creditAmount}</span>
											</div>
										</div>
										{/if}
										
									</div>
									{/foreach}
									
									{if $cartitems == 0}
									<div class="view-cart-empty">
										{$LANG.cartempty}
									</div>
									{/if}

								</div>

								{if $cartitems > 0}
								<div class="empty-cart">
									<button type="button" class="btn btn-link btn-xs" id="btnEmptyCart" style="background-color:#666;border:none;">
					                            <i class="fas fa-trash-alt"></i>
					                            <span>{$LANG.emptycart}</span>
					                        </button>
								</div>
								{/if}

							</form>

							<div class="subtotal clearfix">
								<span class="pull-left">{$LANG.ordersubtotal}</span>
								<span id="subtotal" class="pull-right">{$subtotal}</span>
							</div>
							{if $promotioncode || $taxrate || $taxrate2}
							<div class="bordered-totals">
								{if $promotioncode}
								<div class="clearfix">
									<span class="pull-left">
										{$promotiondescription}
										<a href="{$smarty.server.PHP_SELF}?a=removepromo" title="{$LANG.orderForm.removePromotionCode}" class="btn btn-sm" style="margin:-5px!important;">
											<i class="fas fa-trash-alt fa-lg"></i>
										</a>
									</span>
									<span id="discount" class="pull-right">{$discount}</span>
								</div>
								{/if} {if $taxrate}
								<div class="clearfix">
									<span class="pull-left">{$taxname} @ {$taxrate}%</span>
									<span id="taxTotal1" class="pull-right">{$taxtotal}</span>
								</div>
								{/if} {if $taxrate2}
								<div class="clearfix">
									<span class="pull-left">{$taxname2} @ {$taxrate2}%</span>
									<span id="taxTotal2" class="pull-right">{$taxtotal2}</span>
								</div>
								{/if}
							</div>
							{/if}
							
							<div class="recurring-totals clearfix">
								<span class="pull-left">{$LANG.orderForm.totals}</span>
								<span id="recurring" class="pull-right recurring-charges">
                                        <span id="recurringMonthly" {if !$totalrecurringmonthly}style="display:none;"{/if}>
                                            <span class="cost">{$totalrecurringmonthly}</span> {$LANG.orderpaymenttermmonthly}<br />
								</span>
								<span id="recurringQuarterly" {if !$totalrecurringquarterly}style="display:none;" {/if}>
                                            <span class="cost">{$totalrecurringquarterly}</span> {$LANG.orderpaymenttermquarterly}<br />
								</span>
								<span id="recurringSemiAnnually" {if !$totalrecurringsemiannually}style="display:none;" {/if}>
                                            <span class="cost">{$totalrecurringsemiannually}</span> {$LANG.orderpaymenttermsemiannually}<br />
								</span>
								<span id="recurringAnnually" {if !$totalrecurringannually}style="display:none;" {/if}>
                                            <span class="cost">{$totalrecurringannually}</span> {$LANG.orderpaymenttermannually}<br />
								</span>
								<span id="recurringBiennially" {if !$totalrecurringbiennially}style="display:none;" {/if}>
                                            <span class="cost">{$totalrecurringbiennially}</span> {$LANG.orderpaymenttermbiennially}<br />
								</span>
								<span id="recurringTriennially" {if !$totalrecurringtriennially}style="display:none;" {/if}>
                                            <span class="cost">{$totalrecurringtriennially}</span> {$LANG.orderpaymenttermtriennially}<br />
								</span>
								</span>
							</div>

							<div class="total-due-today total-due-today-padded">
								<span id="totalDueToday" class="amt">{$total}</span>
								<span>{$LANG.ordertotalduetoday}</span>
							</div>
						
							<div class="express-checkout-buttons">
								{foreach $expressCheckoutButtons as $checkoutButton}
									{$checkoutButton}
									<div class="separator">
										- {$LANG.or|strtoupper} -
									</div>
								{/foreach}
							</div>

							<div class="text-left">
								{if $accepttos}
								<p>
									<label class="checkbox-inline">
													<input type="checkbox" form="frmCheckout" name="accepttos" id="accepttos" />
													&nbsp;
													{$LANG.ordertosagreement}
													<a href="{$tosurl}" target="_blank">{$LANG.ordertos}</a>
												</label>
								</p>
								{/if}
							</div>
							
							<div class="text-right">
										{foreach $gatewaysoutput as $gatewayoutput}
											<div class="margin-bottom" title="{$LANG.completeorder}">
												{$gatewayoutput}
											</div>
										{/foreach}
										
										<button type="submit"
												id="btnCompleteOrder"
												form="frmCheckout"
												class="btn btn-warning btn-lg btn-checkout disable-on-click spinner-on-click{if $recaptcha} btn-recaptcha{/if}{if $recaptchaInvisible} btn-recaptcha-invisible{/if}"
												{if $cartitems==0}disabled="disabled" {/if}
												style="border:0px;line-height:0px;padding-top:15px;padding-bottom:15px;"
                    					>
                        					{if $inExpressCheckout}{$LANG.confirmAndPay}{else}{$LANG.completeorder}{/if}
											&nbsp;<i class="fas fa-arrow-circle-right"></i>
										</button>
								<br />
								<a href="cart.php" class="btn btn-link btn-continue-shopping" id="continueShopping">
                                        {$LANG.orderForm.continueShopping}
                                    </a>
							</div>

						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

	<form method="post" action="cart.php">
		<input type="hidden" name="a" value="remove" />
		<input type="hidden" name="r" value="" id="inputRemoveItemType" />
		<input type="hidden" name="i" value="" id="inputRemoveItemRef" />
		<div class="modal fade modal-remove-item" id="modalRemoveItem" tabindex="-1" role="dialog">
			<div class="modal-dialog" role="document">
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal" aria-label="{$LANG.orderForm.close}">
                                <span aria-hidden="true">&times;</span>
                            </button>
						<h4 class="modal-title">
							<i class="fas fa-times fa-3x"></i>
							<span>{$LANG.orderForm.removeItem}</span>
						</h4>
					</div>
					<div class="modal-body">
						{$LANG.cartremoveitemconfirm}
					</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-default" data-dismiss="modal">{$LANG.no}</button>
						<button type="submit" class="btn btn-primary">{$LANG.yes}</button>
					</div>
				</div>
			</div>
		</div>
	</form>

	<form method="post" action="cart.php">
		<input type="hidden" name="a" value="empty" />
		<div class="modal fade modal-remove-item" id="modalEmptyCart" tabindex="-1" role="dialog">
			<div class="modal-dialog" role="document">
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal" aria-label="{$LANG.orderForm.close}">
                                <span aria-hidden="true">&times;</span>
                            </button>
						<h4 class="modal-title">
							<i class="fas fa-trash-alt fa-3x"></i>
							<span>{$LANG.emptycart}</span>
						</h4>
					</div>
					<div class="modal-body">
						{$LANG.cartemptyconfirm}
					</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-default" data-dismiss="modal">{$LANG.no}</button>
						<button type="submit" class="btn btn-primary">{$LANG.yes}</button>
					</div>
				</div>
			</div>
		</div>
	</form>
</div>
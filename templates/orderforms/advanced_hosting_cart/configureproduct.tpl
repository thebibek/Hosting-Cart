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
#order-rs_hosting_cart .product-info hr {
    margin-bottom: 5px;
    margin-top: 4px;
    margin-left: -10px;
    border-color: #ddd;
}

#order-rs_hosting_cart #frmConfigureProduct .product-info .product-title {
	font-family: Raleway,"Helvetica Neue",Helvetica,Arial,sans-serif;
	font-size:1.7em;
	font-weight:400;
}

#order-rs_hosting_cart #producttotal div span {
	font-size: 115%;
 }
#order-rs_hosting_cart #producttotal div .amt {
	font-size: 150%;
	font-weight: bold;
 }
#order-rs_hosting_cart .panel .sub-heading span {
	font-size:170%;
	font-weight:700;
}
#order-rs_hosting_cart  #frmConfigureProduct .panel-addon label {
	font-size:150%;
	font-weight:500;
}
#order-rs_hosting_cart  #frmConfigureProduct .panel-addon .panel-body p {
	font-size:110%;
	font-weight:300;
	text-align:justify;
}
#order-rs_hosting_cart  #frmConfigureProduct .panel-addon .panel-price, .panel-add {
	font-size:130%;
	font-weight:500;
}
#order-rs_hosting_cart #frmConfigureProduct .addon-products .panel-addon-selected {
	background-color: rgba(76, 175, 80,0.4);
	border:1px solid rgba(76, 175, 80,0.2);
}
#order-rs_hosting_cart #frmConfigureProduct .addon-promo-container {
	border: 0px solid #eee;
}
#order-rs_hosting_cart #frmConfigureProduct .row h1, h2, h3, h4, h5, h6 {
    font-family: "Open Sans",Verdana,Tahoma,serif;
}
#order-rs_hosting_cart #frmConfigureProduct .row .col-md-7 .sub-heading {
	margin-top: 35px;
	font-size:0.9em;
}
</style>

<script type="text/javascript">
	$(document).ready(function(){
		jQuery("#order-rs_hosting_cart .addon-products .panel-addon span h3 text").addClass('hidden');
		//jQuery("#order-rs_hosting_cart .addonsPromoOutput").addClass('alert');
	});
	var _localLang = {
		'addToCart': '{$LANG.orderForm.addToCart|escape}',
		'addedToCartRemove': '{$LANG.orderForm.addedToCartRemove|escape}'
	}
</script>

<div id="order-rs_hosting_cart">

	<div class="row">

		<div class="col-md-12">

			<div class="header-lined margin-bottom">
				<h1 class="margin-bottom" style="margin-top:20px;padding:40px 0 40px 0;border:none;color:#fff;font-weight:700;text-shadow:0px 1px 0px rgba(0,0,0,0.6);">
					{$LANG.orderconfigure}<br/>
					<span style="font-size:40%;font-weight:500;text-shadow:0px 1px 0px rgba(0,0,0,0.2);">
						{$LANG.orderForm.configureDesiredOptions}
					</span>
				</h1>
			</div>

		</div>

		<div class="col-md-12">

			<form id="frmConfigureProduct">
				<input type="hidden" name="configure" value="true" />
				<input type="hidden" name="i" value="{$i}" />

				<div class="row">
					<div class="col-md-7">
					
						<div class="product-info alert" style="border-radius:0.3em;color:#fff;background-color: #666;">
							<p class="product-title">{$productinfo.name}</p>
						</div>
						
						<div class="panel panel-info product-info" style="padding:20px;padding-bottom:10px;font-size:1.1em;font-weight:300;line-height:1.6em;">

							<p>{$productinfo.description}</p>

						</div>
		
						<div class="alert alert-danger hidden" role="alert" id="containerProductValidationErrors">
							<button type="button" class="close" data-dismiss="alert" aria-label="Close">
							  <span aria-hidden="true">&times;</span>
							</button>
							<p>{$LANG.orderForm.correctErrors}:</p>
							<ul id="containerProductValidationErrorsList"></ul>
						</div>
						
						<div class="sub-heading">
							<span style="font-weight:400;">{$LANG.cartchoosecycle}</span>
						</div>
						
						<div class="panel panel-info" style="padding:20px;padding-bottom:0px;">

							{if $pricing.type eq "recurring"}
								<div class="form-group">
									<select name="billingcycle" id="inputBillingcycle" class="form-control" onchange="{if $configurableoptions}updateConfigurableOptions({$i}, this.value);{else}recalctotals();{/if}">
										{if $pricing.monthly}
											<option value="monthly"{if $billingcycle eq "monthly"} selected{/if}>
												{$pricing.monthly}
											</option>
										{/if}
										{if $pricing.quarterly}
											<option value="quarterly"{if $billingcycle eq "quarterly"} selected{/if}>
												{$pricing.quarterly}
											</option>
										{/if}
										{if $pricing.semiannually}
											<option value="semiannually"{if $billingcycle eq "semiannually"} selected{/if}>
												{$pricing.semiannually}
											</option>
										{/if}
										{if $pricing.annually}
											<option value="annually"{if $billingcycle eq "annually"} selected{/if}>
												{$pricing.annually}
											</option>
										{/if}
										{if $pricing.biennially}
											<option value="biennially"{if $billingcycle eq "biennially"} selected{/if}>
												{$pricing.biennially}
											</option>
										{/if}
										{if $pricing.triennially}
											<option value="triennially"{if $billingcycle eq "triennially"} selected{/if}>
												{$pricing.triennially}
											</option>
										{/if}
									</select>
							</div>
							{/if}
							
						</div>

                        {if count($metrics) > 0}
						<div class="panel panel-info" style="padding:20px;padding-bottom:0px;">
						
                            <div class="sub-heading">
                                <span>{$LANG.metrics.title}</span>
                            </div>

                            <p>{$LANG.metrics.explanation}</p>

                            <ul>
                                {foreach $metrics as $metric}
                                    <li>
                                        {$metric.displayName}
                                        -
                                        {if count($metric.pricing) > 1}
                                            {$LANG.metrics.startingFrom} {$metric.lowestPrice} / {if $metric.unitName}{$metric.unitName}{else}{$LANG.metrics.unit}{/if}
                                            <button type="button" class="btn btn-default btn-xs" data-toggle="modal" data-target="#modalMetricPricing-{$metric.systemName}">
                                                {$LANG.metrics.viewPricing}
                                            </button>
                                        {elseif count($metric.pricing) == 1}
                                            {$metric.lowestPrice} / {if $metric.unitName}{$metric.unitName}{else}{$LANG.metrics.unit}{/if}
                                            {if $metric.includedQuantity > 0} ({$metric.includedQuantity} {$LANG.metrics.includedNotCounted}){/if}
                                        {/if}
                                        {include file="$template/usagebillingpricing.tpl"}
                                    </li>
                                {/foreach}
                            </ul>

                            <br>
							
						</div>
                    	{/if}
						
						{if $productinfo.type eq "server"}
						
						<div class="sub-heading" style="font-size:0.7em;">
							<span style="font-weight:400;">{$LANG.cartconfigserver}</span>
						</div>
						
						<div class="panel panel-info" style="padding:20px;padding-bottom:0px;">
						
							<div class="field-container">

								<div class="row">
									<div class="col-sm-6">
										<div class="form-group">
											<label for="inputHostname">{$LANG.serverhostname}</label>
											<input type="text" name="hostname" class="form-control" id="inputHostname" value="{$server.hostname}" placeholder="servername.yourdomain.com">
										</div>
									</div>
									<div class="col-sm-6">
										<div class="form-group">
											<label for="inputRootpw">{$LANG.serverrootpw}</label>
											<input type="password" name="rootpw" class="form-control" id="inputRootpw" value="{$server.rootpw}">
										</div>
									</div>
								</div>

								<div class="row">
									<div class="col-sm-6">
										<div class="form-group">
											<label for="inputNs1prefix">{$LANG.serverns1prefix}</label>
											<input type="text" name="ns1prefix" class="form-control" id="inputNs1prefix" value="{$server.ns1prefix}" placeholder="ns1">
										</div>
									</div>
									<div class="col-sm-6">
										<div class="form-group">
											<label for="inputNs2prefix">{$LANG.serverns2prefix}</label>
											<input type="text" name="ns2prefix" class="form-control" id="inputNs2prefix" value="{$server.ns2prefix}" placeholder="ns2">
										</div>
									</div>
								</div>

							</div>
						
						</div>
						{/if}
						
						{if $configurableoptions}
						
						<div class="sub-heading">
							<span style="font-weight:400;">{$LANG.orderconfigpackage}</span>
						</div>
						
						<div class="panel panel-info" style="padding:20px;padding-bottom:0px;">
							
							<div class="product-configurable-options" id="productConfigurableOptions">
								<div class="row">
									{foreach $configurableoptions as $num => $configoption} {if $configoption.optiontype eq 1}
									<div class="col-sm-6">
										<div class="form-group">
											<label for="inputConfigOption{$configoption.id}">{$configoption.optionname}</label>
											<select name="configoption[{$configoption.id}]" id="inputConfigOption{$configoption.id}" class="form-control" style="width:100%;">
												{foreach key=num2 item=options from=$configoption.options}
													<option value="{$options.id}"{if $configoption.selectedvalue eq $options.id} selected="selected"{/if}>
														{$options.name}
													</option>
												{/foreach}
											</select>
										</div>
									</div>
									{elseif $configoption.optiontype eq 2}
									<div class="col-sm-6">
										<div class="form-group">
											<label for="inputConfigOption{$configoption.id}">{$configoption.optionname}</label> {foreach key=num2 item=options from=$configoption.options}
											<br />
											<label>
												<input type="radio" name="configoption[{$configoption.id}]" value="{$options.id}"{if $configoption.selectedvalue eq $options.id} checked="checked"{/if} />
												{if $options.name}
													{$options.name}
												{else}
													{$LANG.enable}
												{/if}
											</label> {/foreach}
										</div>
									</div>
									{elseif $configoption.optiontype eq 3}
									<div class="col-sm-6">
										<div class="form-group">
											<label for="inputConfigOption{$configoption.id}">{$configoption.optionname}</label>
											<br />
											<label>
												<input type="checkbox" name="configoption[{$configoption.id}]" id="inputConfigOption{$configoption.id}" value="1"{if $configoption.selectedqty} checked{/if} />
												{if $configoption.options.0.name}
													{$configoption.options.0.name}
												{else}
													{$LANG.enable}
												{/if}
											</label>
										</div>
									</div>
									{elseif $configoption.optiontype eq 4}
									<div class="col-sm-12">
										<div class="form-group">
											<label for="inputConfigOption{$configoption.id}">{$configoption.optionname}</label> {if $configoption.qtymaximum} {if !$rangesliderincluded}
											<script type="text/javascript" src="{$BASE_PATH_JS}/ion.rangeSlider.min.js"></script>
											<link href="{$BASE_PATH_CSS}/ion.rangeSlider.css" rel="stylesheet">
											<link href="{$BASE_PATH_CSS}/ion.rangeSlider.skinModern.css" rel="stylesheet"> {assign var='rangesliderincluded' value=true} {/if}
											<input type="text" name="configoption[{$configoption.id}]" value="{if $configoption.selectedqty}{$configoption.selectedqty}{else}{$configoption.qtyminimum}{/if}" id="inputConfigOption{$configoption.id}" class="form-control" />
											<script>
												var sliderTimeoutId = null;
												var sliderRangeDifference = {
													$configoption.qtymaximum
												} - {
													$configoption.qtyminimum
												};
												// The largest size that looks nice on most screens.
												var sliderStepThreshold = 25;
												// Check if there are too many to display individually.
												var setLargerMarkers = sliderRangeDifference > sliderStepThreshold;

												jQuery("#inputConfigOption{$configoption.id}").ionRangeSlider({
													min: {
														$configoption.qtyminimum
													},
													max: {
														$configoption.qtymaximum
													},
													grid: true,
													grid_snap: setLargerMarkers ? false : true,
													onChange: function() {
														if (sliderTimeoutId) {
															clearTimeout(sliderTimeoutId);
														}

														sliderTimeoutId = setTimeout(function() {
															sliderTimeoutId = null;
															recalctotals();
														}, 250);
													}
												});

											</script>
											{else}
											<div>
												<input type="number" name="configoption[{$configoption.id}]" value="{if $configoption.selectedqty}{$configoption.selectedqty}{else}{$configoption.qtyminimum}{/if}" id="inputConfigOption{$configoption.id}" min="{$configoption.qtyminimum}" onchange="recalctotals()" onkeyup="recalctotals()" class="form-control form-control-qty" />
												<span class="form-control-static form-control-static-inline">
													x {$configoption.options.0.name}
												</span>
											</div>
											{/if}
										</div>
									</div>
									{/if} {if $num % 2 != 0}
								</div>
								<div class="row">
									{/if} {/foreach}
								</div>
							</div>

						</div>
						{/if}
						
						{if $customfields}
					
						<div class="sub-heading">
							<span style="font-weight:400;">{$LANG.orderadditionalrequiredinfo}</span>
						</div>
						
						<div class="panel panel-info" style="padding:20px;padding-top:0px;padding-bottom:0px;">
							
							<div class="field-container">
								{foreach $customfields as $customfield}
								<div class="form-group">
									<label for="customfield{$customfield.id}">{$customfield.name}</label> {$customfield.input} {if $customfield.description}
									<span class="field-help-text">
										{$customfield.description}
									</span> {/if}
								</div>
								{/foreach}
							</div>

						</div>
						{/if}
						
						{if $addons || count($addonsPromoOutput) > 0}
						
						<div class="sub-heading">
							<span style="font-weight:400;">{$LANG.cartavailableaddons}</span>
						</div>
						
						<div class="row" style="padding:20px;padding-top:0px;padding-bottom:0px;">
						
							<div class="row addon-products">
								{foreach $addons as $addon}
								<div class="col-sm-{if count($addons) > 1}12{else}12{/if}">
									<div class="panel panel-default panel-addon{if $addon.status} panel-addon-selected{/if}">
										<div class="row panel-body">
												<div class="col-xs-8 col-sm-8 col-md-8 text-left">
													<span>
														<h3 style="margin-top:5px;margin-bottom:5px;">
															<text>
																<input type="checkbox" name="addons[{$addon.id}]" id="a{$addon.id}"{if $addon.status} checked{/if} />
															</text>
															{$addon.name}
														</h3>
														<h5>
															{$addon.pricing}
														</h5>
															{$addon.description}
													</span>
												</div>
												<div class="col-xs-4 col-sm-4 col-md-4 text-right">
													<img src="{$WEB_ROOT}/templates/orderforms/{$carttpl}/img/addons/{$addon.id}.png" width="100" height="100" border="0" alt="{$addon.name}">
												</div>
										</div>
									</div>
								</div>
								{/foreach}
							</div>
							
							{foreach $addonsPromoOutput as $output}
							<div class="panel panel-default addonsPromoOutput">
								{$output}
							</div>
							{/foreach}
							
						</div>
						{/if}

						<div class="alert alert-info info-text-sm">
							<i class="fas fa-question-circle"></i> {$LANG.orderForm.haveQuestionsContact} <a href="contact.php" target="_blank" class="alert-link">{$LANG.orderForm.haveQuestionsClickHere}</a>
						</div>

					</div>
					
					<div class="col-md-5" id="scrollingPanelContainer">
						<div id="orderSummary">
							<div class="order-summary">
								<div class="loader" id="orderSummaryLoader">
									<i class="fas fa-fw fa-spinner fa-spin"></i>
								</div>
								<h2>{$LANG.ordersummary}</h2>
								<div class="summary-container" id="producttotal" style="border-left:1px solid #666;border-right:1px solid #666;">
									<div align="center" id="loader"><br>
										<i class="fas fa-spinner fa-spin fa-5x"></i><br><br>
										{$LANG.loading}
									</div><br><br>
								</div>
							</div>
							</div>
						</div>
				</div>

			</form>
		</div>
	</div>
</div>

<script>recalctotals();</script>

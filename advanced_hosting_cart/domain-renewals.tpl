{include file="orderforms/$carttpl/common.tpl"}

<style type="text/css">
#order-rs_hosting_cart .header-lined, h1 { 
background: url('{$WEB_ROOT}/templates/orderforms/{$carttpl}/img/bg_pages_header.jpg') no-repeat center center fixed;
-webkit-background-size: cover;
-moz-background-size: cover;
-o-background-size: cover;
background-size: cover;
border-radius:4px;
text-align:center;
}
#order-rs_hosting_cart .domain-renewals h1, h2, h3, h4, h5, h6 {
    font-family: "Open Sans",Verdana,Tahoma,serif;
}
#order-rs_hosting_cart .btn {
	border:0px!important;
}
#order-rs_hosting_cart #producttotal div span {
	font-size: 115%;
 }
#order-rs_hosting_cart #producttotal div .amt {
	font-size: 150%;
	font-weight: bold;
 }
</style>

<script type="text/javascript">
	$(document).ready(function(){
		jQuery(".summary-container div button").addClass('hidden');
	});
</script>

<div id="order-rs_hosting_cart">
    <div class="row">

		<div class="col-md-12">
			<div class="header-lined margin-bottom">
				<h1 class="margin-bottom" style="margin-top:20px;padding:40px 0 0 0;border:none;color:#fff;font-weight:700;text-shadow:0px 1px 0px rgba(0,0,0,0.6);">
					{if $totalResults > 1}{lang key='domainrenewals'}{else}{lang key='domainrenewal'}{/if}
				</h1>
				<div class="row margin-bottom">
					<div class="col-sm-6 col-sm-offset-3 col-xs-10 col-xs-offset-1 margin-bottom">
						{if $totalResults > 5}
							<div class="margin-bottom">
								<input id="domainRenewalFilter" type="search" class="domain-renewals-filter form-control input-inline-100" placeholder="{lang key='searchenterdomain'}">
							</div>
						{/if}
					 </div>
				</div>
			</div>
        </div>

        <div class="col-md-12">

            {if $totalDomainCount == 0}
			
                <div id="no-domains" class="alert alert-warning text-center" role="alert">
                    {$LANG.domainRenewal.noDomains}
                </div>
				
            {else}
			
            <div class="row">

                <div class="col-md-7">
                    {if $totalResults < $totalDomainCount}
                        <div class="text-center">
                            {lang key='domainRenewal.showingDomains' showing=$totalResults totalCount=$totalDomainCount}
                            <a id="linkShowAll" href="{routePath('cart-domain-renewals')}">{lang key='domainRenewal.showAll'}</a>
                        </div>
                    {/if}

                    <div id="domainRenewals" class="domain-renewals" style="margin-top:0px;">
                        {foreach $renewalsData as $renewalData}
                            <div class="row domain-renewal" data-domain="{$renewalData.domain}" style="padding-left:0px;padding-right:0px;">
							
                                <div class="col-md-8 col-sm-8 col-xs-8">
								    
									<h4>
										<div class="btn-group btn-group-sm" style="width:16px;">
											<button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown" style="padding: 5px 10px;padding-top: 5px;padding-right: 5px;padding-bottom: 5px;padding-left: 5px;">
												<i class="fas fa-ellipsis-v fa-lg"></i>
											</button>
											<ul class="dropdown-menu text-left dropdown-menu-left" role="menu">
												{if $renewalData}
													<li><a target="_blank" href="{$WEB_ROOT}/clientarea.php?action=domaindetails&id={$renewalData.id}#tabNameservers"><i class="glyphicon glyphicon-globe"></i> {$LANG.domainmanagens}</a></li>
													<li><a target="_blank" href="{$WEB_ROOT}/clientarea.php?action=domaincontacts&domainid={$renewalData.id}"><i class="glyphicon glyphicon-user"></i> {$LANG.domaincontactinfoedit}</a></li>
													<li><a target="_blank" href="{$WEB_ROOT}/clientarea.php?action=domaindetails&id={$renewalData.id}#tabAutorenew"><i class="glyphicon glyphicon-globe"></i> {$LANG.domainautorenewstatus}</a></li>
													<li class="divider"></li>
												{/if}
												<li><a target="_blank" href="{$WEB_ROOT}/clientarea.php?action=domaindetails&id={$renewalData.id}"><i class="glyphicon glyphicon-pencil"></i> {$LANG.managedomain}</a></li>
											</ul>
										</div>
										<a href="http://{$renewalData.domain}" target="_blank">{$renewalData.domain}</a> 
										<span class="small">
											{if !$renewalData.eligibleForRenewal}
												<span class="label label-info">
													{lang key='domainRenewal.unavailable'}
												</span>
											{elseif ($renewalData.pastGracePeriod && $renewalData.pastRedemptionGracePeriod)}
												<span class="label label-info">
													{lang key='domainrenewalspastgraceperiod'}
												</span>
											{elseif !$renewalData.beforeRenewLimit && $renewalData.daysUntilExpiry > 0}
												<span class="label label-{if $renewalData.daysUntilExpiry > 30}success{else}warning{/if}">
													{lang key='domainRenewal.expiringIn' days=$renewalData.daysUntilExpiry}
												</span>
											{elseif $renewalData.daysUntilExpiry === 0}
												<span class="label label-grey">
													{lang key='expiresToday'}
												</span>
											{elseif $renewalData.beforeRenewLimit}
												<span class="label label-info">
													{lang key='domainRenewal.maximumAdvanceRenewal' days=$renewalData.beforeRenewLimitDays}
												</span>
											{else}
												<span class="label label-danger">
													{lang key='domainRenewal.expiredDaysAgo' days=$renewalData.daysUntilExpiry*-1}
												</span>
											{/if}
										</span>
									</h4>
									
									<p style="margin-top:10px;font-size:90%">{lang key='clientareadomainexpirydate'}: {$renewalData.expiryDate->format('j M Y')} ({$renewalData.expiryDate->diffForHumans()})</p>
								</div>
								
                                <div class="col-md-4 col-sm-4 col-xs-4">
									{if ($renewalData.pastGracePeriod && $renewalData.pastRedemptionGracePeriod) || !count($renewalData.renewalOptions)}
									{else}
									<form class="form-horizontal">
										<div class="form-group row">
											<label for="renewalPricing{$renewalData.id}" class="col-sm-12">
												{if $renewalData.inGracePeriod || $renewalData.inRedemptionGracePeriod}
													*
												{/if}
											</label>
											<div class="col-sm-12">
												<select class="field select-renewal-pricing" id="renewalPricing{$renewalData.id}" data-domain-id="{$renewalData.id}" style="width:100%;">
													{foreach $renewalData.renewalOptions as $renewalOption}
														<option value="{$renewalOption.period}">
															{$renewalOption.period} {lang key='orderyears'} @ {$renewalOption.rawRenewalPrice}
															{if $renewalOption.gracePeriodFee && $renewalOption.gracePeriodFee->toNumeric() != 0.00}
																+ {$renewalOption.gracePeriodFee} {lang key='domainRenewal.graceFee'}
															{/if}
															{if $renewalOption.redemptionGracePeriodFee && $renewalOption.redemptionGracePeriodFee->toNumeric() != 0.00}
																+ {$renewalOption.redemptionGracePeriodFee} {lang key='domainRenewal.redemptionFee'}
															{/if}
														</option>
													{/foreach}
												</select>
											</div>
										</div>
									</form>
									{/if}
									
									{if !$renewalData.eligibleForRenewal || $renewalData.beforeRenewLimit || ($renewalData.pastGracePeriod && $renewalData.pastRedemptionGracePeriod)}
									{else}
										<button id="renewDomain{$renewalData.id}" class="btn btn-warning btn-sm btn-add-renewal-to-cart" data-domain-id="{$renewalData.id}" style="margin-top:-10px;margin-bottom:2px;padding-top:4px;padding-bottom:4px;border:0px;width:100%;">
											<span class="to-add">
												<i class="fas fa-fw fa-spinner fa-spin"></i>
												{lang key='addtocart'}
											</span>
											<span class="added">{lang key='domaincheckeradded'}</span>
										</button>
									{/if}
                                </div>
								
                            </div>
							
                        {/foreach}
						
                    </div>

                    <div class="text-center">
                        <small>
                            {if $hasDomainsInGracePeriod}
                                * {lang key='domainRenewal.graceRenewalPeriodDescription'}
                            {/if}
                        </small>
                    </div>
                </div>

                <div class="col-md-5" id="scrollingPanelContainer">

                    <div id="orderSummary">
                    
                        <div class="order-summary">
                            <div class="loader" id="orderSummaryLoader">
                                <i class="fas fa-fw fa-spinner fa-spin"></i>
                            </div>
                            <h2>{lang key='ordersummary'}</h2>
                            <div class="summary-container" id="producttotal" style="border-left:1px solid #666;border-right:1px solid #666;">
								<div align="center" id="loader"><br>
									<i class="fa fa-spinner fa-spin fa-5x"></i><br><br>
									{$LANG.loading}
								</div><br><br>
							</div>
						</div>
                    </div>

                </div>
				
            </div>
			
			{/if}
        </div>
		
    </div>
	
    <form id="removeRenewalForm" method="post" action="{$WEB_ROOT}/cart.php">
        <input type="hidden" name="a" value="remove" />
        <input type="hidden" name="r" value="" id="inputRemoveItemType" />
        <input type="hidden" name="i" value="" id="inputRemoveItemRef" />
        <div class="modal fade modal-remove-item" id="modalRemoveItem" tabindex="-1" role="dialog">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-label="{lang key='orderForm.close'}">
                            <span aria-hidden="true">&times;</span>
                        </button>
                        <h4 class="modal-title">
                            <i class="fas fa-times fa-3x"></i>
                            <span>{lang key='orderForm.removeItem'}</span>
                        </h4>
                    </div>
                    <div class="modal-body">
                        {lang key='cartremoveitemconfirm'}
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-default" data-dismiss="modal">{lang key='no'}</button>
                        <button type="submit" class="btn btn-primary">{lang key='yes'}</button>
                    </div>
                </div>
            </div>
        </div>
    </form>
</div>

<script type="text/javascript">recalculateRenewalTotals();</script>

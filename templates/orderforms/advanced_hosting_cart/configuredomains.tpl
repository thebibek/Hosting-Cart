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
#order-rs_hosting_cart .panel .sub-heading span {
	font-size:170%;
	font-weight:700;
}
#order-rs_hosting_cart  #frmConfigureDomains .panel-addon label {
	font-size:150%;
	font-weight:500;
}
#order-rs_hosting_cart  #frmConfigureDomains .panel-addon .panel-price, .panel-add {
	font-size:130%;
	font-weight:500;
}
</style>

<script type="text/javascript">
	var _localLang = {
		'addToCart': '{$LANG.orderForm.addToCart|escape}',
		'addedToCartRemove': '{$LANG.orderForm.addedToCartRemove|escape}'
	}
	jQuery(document).ready(function(){
		$('[data-toggle="tooltip"]').tooltip(); 
	});
</script>

<div id="order-rs_hosting_cart">

	<div class="row">

		<div class="col-md-12">

			<div class="header-lined margin-bottom">
				<h1 class="margin-bottom" style="margin-top:20px;padding:40px 0 40px 0;border:none;color:#fff;font-weight:700;text-shadow:0px 1px 0px rgba(0,0,0,0.6);">
					{$LANG.cartdomainsconfig}<br/>
					<span style="font-size:40%;font-weight:500;text-shadow:0px 1px 0px rgba(0,0,0,0.2);">
						{$LANG.orderForm.reviewDomainAndAddons}
					</span>
				</h1>
			</div>

		</div>

		<div class="col-md-12">

			<form method="post" action="{$smarty.server.PHP_SELF}?a=confdomains" id="frmConfigureDomains">
				<input type="hidden" name="update" value="true" />
				
				{if $errormessage}
				<div class="alert alert-danger" role="alert">
					<button type="button" class="close" data-dismiss="alert" aria-label="Close">
					  <span aria-hidden="true">&times;</span>
					</button>
					<p>{$LANG.orderForm.correctErrors}:</p>
					<ul>
						{$errormessage}
					</ul>
				</div>
				{/if}
				
				{foreach $domains as $num => $domain}
				<div class="panel panel-info" style="padding:20px;padding-top:10px;padding-bottom:0px;">
					
					<div class="sub-heading">
						<span>{$domain.domain}</span>
					</div>

					<div class="row text-center">
						<div class="col-sm-6">
							<div class="form-group">
								<label>{$LANG.orderregperiod}:</label> <strong>{$domain.regperiod} {$LANG.orderyears}</strong>
							</div>
						</div>
						<div class="col-sm-6">
							<div class="form-group">
								<label>{$LANG.hosting}:</label> <strong>{if $domain.hosting}<span style="color:#009900;">[{$LANG.cartdomainshashosting}]</span>{else}<a href="cart.php" style="color:#cc0000;">[{$LANG.cartdomainsnohosting}]</a>{/if}</strong>
							</div>
						</div>
						{if $domain.eppenabled}
						<div class="col-sm-12">
							<div class="form-group prepend-icon">
								<label for="inputEppcode{$num}" class="field-icon">
									<i class="fas fa-lock"></i>
								</label>
								<input type="input" name="epp[{$num}]" id="inputEppcode{$num}" value="{$domain.eppvalue}" class="field" placeholder="{$LANG.domaineppcode}" />
								<span class="field-help-text">
									{$LANG.domaineppcodedesc}
								</span>
							</div>
						</div>
						{/if}
					</div>

					{if $domain.dnsmanagement || $domain.emailforwarding || $domain.idprotection}
					<div class="row addon-products">

						{if $domain.dnsmanagement}
						<div class="col-sm-{math equation=" 12 / numAddons " numAddons=$domain.addonsCount}">
							<div class="panel panel-default panel-addon{if $domain.dnsmanagementselected} panel-addon-selected{/if}">
								<div class="panel-body">
									<label>
										<input type="checkbox" name="dnsmanagement[{$num}]"{if $domain.dnsmanagementselected} checked{/if} />
										{$LANG.domaindnsmanagement} <i class="fa fa-question-circle fa-1x" style="color:#64b5f6;" aria-hidden="true" data-toggle="tooltip" data-placement="top" title="{$LANG.domainaddonsdnsmanagementinfo}"></i>
									</label>
								</div>
								<div class="panel-price">
									{$domain.dnsmanagementprice} / {$domain.regperiod} {$LANG.orderyears}
								</div>
								<div class="panel-add">
									<i class="fas fa-plus"></i> {$LANG.orderForm.addToCart}
								</div>
							</div>
						</div>
						{/if}
						
						{if $domain.idprotection}
						<div class="col-sm-{math equation=" 12 / numAddons " numAddons=$domain.addonsCount}">
							<div class="panel panel-default panel-addon{if $domain.idprotectionselected} panel-addon-selected{/if}">
								<div class="panel-body">
									<label>
										<input type="checkbox" name="idprotection[{$num}]"{if $domain.idprotectionselected} checked{/if} />
										{$LANG.domainidprotection} <i class="fa fa-question-circle fa-1x" style="color:#64b5f6;" aria-hidden="true" data-toggle="tooltip" data-placement="top" title="{$LANG.domainaddonsidprotectioninfo}"></i>
									</label>
								</div>
								<div class="panel-price">
									{$domain.idprotectionprice} / {$domain.regperiod} {$LANG.orderyears}
								</div>
								<div class="panel-add">
									<i class="fas fa-plus"></i> {$LANG.orderForm.addToCart}
								</div>
							</div>
						</div>
						{/if}
						
						{if $domain.emailforwarding}
						<div class="col-sm-{math equation=" 12 / numAddons " numAddons=$domain.addonsCount}">
							<div class="panel panel-default panel-addon{if $domain.emailforwardingselected} panel-addon-selected{/if}">
								<div class="panel-body">
									<label>
										<input type="checkbox" name="emailforwarding[{$num}]"{if $domain.emailforwardingselected} checked{/if} />
										{$LANG.domainemailforwarding} <i class="fa fa-question-circle fa-1x" style="color:#64b5f6;" aria-hidden="true" data-toggle="tooltip" data-placement="top" title="{$LANG.domainaddonsemailforwardinginfo}"></i>
									</label>
								</div>
								<div class="panel-price">
									{$domain.emailforwardingprice} / {$domain.regperiod} {$LANG.orderyears}
								</div>
								<div class="panel-add">
									<i class="fas fa-plus"></i> {$LANG.orderForm.addToCart}
								</div>
							</div>
						</div>
						{/if}

					</div>
					{/if}
					
					<div class="row">
						{foreach from=$domain.fields key=domainfieldname item=domainfield}
							<div class="col-sm-3">
								<span>{$domainfieldname}:</span><br/>
								<span>{$domainfield}</span>
							</div>
						{/foreach}
					</div>
					
				</div>
				{/foreach} 
				
				{if $atleastonenohosting}
				<div class="panel panel-info" style="padding:20px;padding-top:10px;padding-bottom:0px;">
					
					<div class="sub-heading">
						<span>{$LANG.domainnameservers}</span>
					</div>

					<p class="text-center">{$LANG.cartnameserversdesc}</p>

					<div class="row">
						<div class="col-sm-4">
							<div class="form-group">
								<label for="inputNs1">{$LANG.domainnameserver1}</label>
								<input type="text" class="form-control" id="inputNs1" name="domainns1" value="{$domainns1}" />
							</div>
						</div>
						<div class="col-sm-4">
							<div class="form-group">
								<label for="inputNs2">{$LANG.domainnameserver2}</label>
								<input type="text" class="form-control" id="inputNs2" name="domainns2" value="{$domainns2}" />
							</div>
						</div>
						<div class="col-sm-4">
							<div class="form-group">
								<label for="inputNs3">{$LANG.domainnameserver3}</label>
								<input type="text" class="form-control" id="inputNs3" name="domainns3" value="{$domainns3}" />
							</div>
						</div>
						<div class="col-sm-4">
							<div class="form-group">
								<label for="inputNs1">{$LANG.domainnameserver4}</label>
								<input type="text" class="form-control" id="inputNs4" name="domainns4" value="{$domainns4}" />
							</div>
						</div>
						<div class="col-sm-4">
							<div class="form-group">
								<label for="inputNs5">{$LANG.domainnameserver5}</label>
								<input type="text" class="form-control" id="inputNs5" name="domainns5" value="{$domainns5}" />
							</div>
						</div>
					</div>
					
				</div>
				{/if}

				<div class="text-center">
					<button type="submit" class="btn btn-info btn-lg">
                        {$LANG.continue}
                        &nbsp;<i class="fas fa-arrow-circle-right"></i>
                    </button>
				</div>

			</form>
		</div>
	</div>
</div>

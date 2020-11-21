<style type="text/css">
#order-rs_hosting_cart .rs-select2-config {
	margin-left:1%;
	<!-- margin-right:1%; -->
}
#order-rs_hosting_cart .rs-select2-config .select2-selection {
	background-color: rgba(250, 250, 250,0.1);
	<!-- border: 0px; -->
}
#order-rs_hosting_cart .rs-select2-config .select2-selection__rendered {
	color: rgba(250, 250, 250,1.0);
}
#order-rs_hosting_cart .rs-select2-config .select2-selection__arrow b {
	border-color: #fff transparent;
}
#order-rs_hosting_cart .rs-select2-config-right .select2-selection {
	border-radius: 4px 0px 0px 4px;
	border-right: 0px;
}
#order-rs_hosting_cart .rs-select2-config-left .select2-selection {
	border-radius:0px 4px 4px 0px;
	border-left: 0px;
}
</style>

<div class="row margin-bottom text-center rs-select2-config">
	<div class="{if !$loggedin && $currencies}col-md-8 col-sm-8 col-xs-8 rs-select2-config-right{else}col-md-8 col-md-offset-2 col-sm-8 col-sm-offset-2 col-xs-8 col-xs-offset-2{/if} margin-bottom" style="{if !$loggedin && $currencies}margin-right:-15px;{/if}">
		<form method="get" action="{$smarty.server.PHP_SELF}">
			<select name="gid" onchange="submit()" style="width:100%;">
                <optgroup label="Product Categories">
                    {foreach key=num item=productgroup from=$productgroups}
                        <option value="{$productgroup.gid}"{if $gid eq $productgroup.gid} selected="selected"{/if}>{if $gid eq $productgroup.gid}&#10004;  {/if}{$productgroup.name}</option>
                    {/foreach}
                </optgroup>
                <optgroup label="Actions">
                    {if $loggedin}
                        <option value="addons"{if $gid eq "addons"} selected{/if}>{if $gid eq "addons"}&#10004;  {/if}{$LANG.cartproductaddons}</option>
                        {if $renewalsenabled}
                            <option value="renewals"{if $gid eq "renewals"} selected{/if}>{if $gid eq "renewals"}&#10004;  {/if}{$LANG.domainrenewals}</option>
                        {/if}
                    {/if}
                    {if $registerdomainenabled}
                        <option value="registerdomain"{if $domain eq "register"} selected{/if}>{if $domain eq "register"}&#10004;  {/if}{$LANG.navregisterdomain}</option>
                    {/if}
                    {if $transferdomainenabled}
                        <option value="transferdomain"{if $domain eq "transfer"} selected{/if}>{if $domain eq "transfer"}&#10004;  {/if}{$LANG.transferinadomain}</option>
                    {/if}
                    <option value="viewcart"{if $action eq "view"} selected{/if}>{if $action eq "view"}&#10004;  {/if}{$LANG.cartreviewcheckout}</option>
                </optgroup>
            </select>
		</form>
	</div>
		{if !$loggedin && $currencies}
	<div class="col-md-4 col-sm-4 col-xs-4 margin-bottom rs-select2-config-left" style="margin-left:-15px;">
		<form method="post" action="cart.php{if $action}?a={$action}{elseif $gid}?gid={$gid}{/if}">
			<select name="currency" onchange="submit()" style="width:100%;">
					<option value="">{$LANG.choosecurrency}</option>
					{foreach from=$currencies item=listcurr}
						<option value="{$listcurr.id}"{if $listcurr.id == $currency.id} selected{/if}>{if $listcurr.id == $currency.id}{$currency['prefix']} {/if}{$listcurr.code}</option>
					{/foreach}
				</select>
		</form>
	</div>
		{/if}
</div>
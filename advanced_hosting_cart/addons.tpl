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
#order-rs_hosting_cart .products, h2, h3, h4, h5, h6 {
    font-family: "Open Sans",Verdana,Tahoma,serif;
}
#order-rs_hosting_cart .btn {
	border:0px!important;
}
#order-rs_hosting_cart .rs-btn-addons {
    background-color: rgba(189, 189, 189,1.0);
	color: rgba(250, 250, 250,1.0)!important;
	font-size: 16px;
	font-weight: 500;
}
#order-rs_hosting_cart .rs-btn-addons:hover, .rs-btn-addons:focus, .rs-btn-addons:active {
    background-color: rgba(158, 158, 158,1.0);
}
</style>

<div id="order-rs_hosting_cart">

	<div class="row">
	
		<div class="col-md-12">

			<div class="header-lined margin-bottom">
				<h1 class="margin-bottom" style="margin-top:20px;padding:40px 0 0 0;border:none;color:#fff;font-weight:700;text-shadow:0px 1px 0px rgba(0,0,0,0.6);">{$LANG.cartproductaddons}</h1>
				<div class="row margin-bottom">
					<div class="col-sm-4 col-sm-offset-4 col-xs-10 col-xs-offset-1 margin-bottom">
					 	{include file="orderforms/$carttpl/sidebar-categories-collapsed.tpl"}
					 </div>
				</div>
				
			</div>

		</div>
	
			<div class="col-md-12 pull-md-right">

				{if count($addons) == 0}
				<div id="noAddons" class="alert alert-warning text-center" role="alert">
					<button type="button" class="close" data-dismiss="alert" aria-label="Close">
					  <span aria-hidden="true">&times;</span>
					</button>
					{$LANG.cartproductaddonsnone}
				</div>
				<p class="text-center">
					<a href="clientarea.php" class="btn btn-default">
							<i class="fas fa-arrow-circle-left"></i>
							{$LANG.orderForm.returnToClientArea}
						</a>
				</p>
				{/if}

				<div class="row row-eq-height">
					{foreach $addons as $num => $addon}
					<div class="col-xs-12 col-sm-12 col-md-6">
						<div class="panel panel-default" id="product{$num}">
							<div class="row panel-body">
								<div class="col-xs-8 col-sm-8 col-md-8 margin-bottom text-left">
									<span>
										<h4 style="margin-top:5px;margin-bottom:5px;">
											{$addon.name} {if $product.qty} <span class="qty"> {$product.qty} {$LANG.orderavailable}</span>{/if}
										</h4>								
										<div class="margin-bottom">
												<h5 class="text-left">
													{if $addon.free}
														{$LANG.orderfree}
													{else}
														{$addon.recurringamount} {$addon.billingcycle} {if $addon.setupfee} + {$addon.setupfee} {$LANG.ordersetupfee}{/if}
													{/if}
												</h5>
										</div>
											{$addon.description}
									</span>
								</div>
								<div class="col-xs-4 col-sm-4 col-md-4 margin-bottom text-right">
									<img src="{$WEB_ROOT}/templates/orderforms/{$carttpl}/img/addons/{$addon.id}.png" width="100" height="100" border="0" alt="{$addon.name}">
								</div>
								<div class="row">
									<form method="post" action="{$smarty.server.PHP_SELF}?a=add" class="form-inline">
										<input type="hidden" name="aid" value="{$addon.id}" />
										<div class="col-sm-12">
											<div class="form-group col-xs-12 col-sm-6 col-md-6">
													<select name="productid" id="inputProductId{$num}" class="form-control" style="width:100%;">
															{foreach $addon.productids as $product}
																<option value="{$product.id}">
																	{$product.product}{if $product.domain} - {$product.domain}{/if}
																</option>
															{/foreach}
													</select>
											</div>
											<div class="form-group col-xs-12 col-sm-6 col-md-6">
												<button type="submit" class="btn btn-block rs-btn-addons" style="width:100%;">
													<i class="fas fa-shopping-cart"></i>
													{$LANG.ordernowbutton}
												</button>
											</div>		
										</div>
									</form>
								</div>
							</div>
						</div>
					</div>
					
				{if $num % 2 != 0}
				</div>
				<div class="row row-eq-height">
				{/if} {/foreach}
				</div>
			</div>
			
		</div>
	</div>
</div>
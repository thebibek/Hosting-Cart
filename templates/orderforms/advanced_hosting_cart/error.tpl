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
			
				<h1 class="margin-bottom" style="margin-top:20px;padding:40px 0 0 0;border:none;color:#fff;font-weight:700;text-shadow:0px 1px 0px rgba(0,0,0,0.6);">{$LANG.thereisaproblem}</h1>
				<div class="row margin-bottom">
				<div class="col-sm-4 col-sm-offset-4 col-xs-10 col-xs-offset-1 margin-bottom">
					 {include file="orderforms/$carttpl/sidebar-categories-collapsed.tpl"}
					 </div>
				</div>
				
			</div>

		</div>

		<div class="col-md-10 col-md-offset-1">

			<div class="alert alert-danger error-heading">
				<i class="fas fa-exclamation-triangle"></i> {$errortitle}
			</div>

			<div class="row">
				<div class="col-sm-8 col-sm-offset-2">

					<p class="margin-bottom">{$errormsg}</p>

					<div class="text-center">
						<a href="javascript:history.go(-1)" class="btn btn-default">
                            <i class="fas fa-arrow-left"></i>&nbsp;
                            {$LANG.problemgoback}
                        </a>
					</div>

				</div>
			</div>

		</div>
	</div>
</div>

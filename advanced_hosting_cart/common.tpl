<!--
 * WHMCS Base Order Form  ( RactStudio's HostingCart )
 *
 * This file(s) belongs to the HostingCart series products.
 *
 * @project   OrderForms
 * @cssdoc    version 4.0.0
 * @package   HostingCart
 * @author    RactStudio <ractstudio@gmail.com>
 * @copyright Copyright (c) RactStudio 2017-2019
 * @license   https://www.ractstudio.com/legal/
 * @link      https://www.ractstudio.com/
 * @Docs      https://docs.ractstudio.com/
-->

<link rel="stylesheet" type="text/css" href="{$WEB_ROOT}/templates/orderforms/{$carttpl}/css/all.min.css?v={$versionHash}" />
<!-- Select2 CSS and JS Files and Automated JavaScript Loader -->
<link rel="stylesheet" href="{$WEB_ROOT}/templates/orderforms/{$carttpl}/lib/select2/css/select2.min.css">
<script src="{$WEB_ROOT}/templates/orderforms/{$carttpl}/lib/select2/js/select2.full.min.js"></script>
<script type="text/javascript">
$( document ).ready(function() {
	$(function () {
		$( "#order-rs_hosting_cart select" ).select2({
			theme: "bootstrap"
		});
		//$( "#order-rs_hosting_cart select" ).select2();
	});
});
</script>
<!--  Select2 Bootstrap Theme  -->
<link rel="stylesheet" href="{$WEB_ROOT}/templates/orderforms/{$carttpl}/lib/select2-bootstrap-theme/css/select2-bootstrap.min.css">
<!--  Select2 and Theme CSS Overwrite -->
<style type="text/css">
.select2-container--bootstrap .select2-dropdown {
	background-color: rgba(250, 250, 250,1.0);
}
.select2-container--bootstrap .select2-results__group {
	color: rgba(66, 66, 66,1.0);
	background-color: rgba(224, 224, 224,1.0);
}
.select2-container--bootstrap .select2-results__options, .select2-results__options--nested, .select2-results__option {
	color: rgba(33, 33, 33,1.0);
}
.select2-container--bootstrap .select2-results__option[aria-selected=true] {
    background-color: rgba(238, 238, 238,1.0);
    color: rgba(33, 33, 33,1.0);
}
.select2-container--bootstrap .select2-results__option:hover[aria-selected=true] {
    background-color: #337ab7;
    color: rgba(250, 250, 250,1.0);
}
</style>
<script type="text/javascript" src="{$WEB_ROOT}/templates/orderforms/{$carttpl}/js/scripts.min.js?v={$versionHash}"></script>
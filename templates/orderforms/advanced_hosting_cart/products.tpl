{include file="orderforms/$carttpl/common.tpl"}
<style type="text/css">
/*=============================
GENERAL
==============================*/
#order-rs_hosting_cart {
	font-family: "Open Sans",Verdana,Tahoma,serif;
}
#order-rs_hosting_cart .header-lined, h1 { 
background: url('templates/orderforms/{$carttpl}/img/bg_pages_header.jpg') no-repeat center center fixed;
-webkit-background-size: cover;
-moz-background-size: cover;
-o-background-size: cover;
background-size: cover;
border-radius:4px;
text-align:center;
}
#order-rs_hosting_cart .row h2, h3, h4, h5, h6 {
    font-family: "Open Sans",Verdana,Tahoma,serif;
}
#order-rs_hosting_cart .row a:hover, a:focus{
    text-decoration: none !important;
}
#order-rs_hosting_cart .row .btn {
	border:0px!important;
}

/*=============================
BUTTONS
==============================*/
#order-rs_hosting_cart .rs-btn-addproduct {
	font-size:1.4em;
	background-color: rgba(189, 189, 189,0.4);
	border-bottom:2px solid rgba(224, 224, 224,0.3);
	box-shadow: 1px 1px 2px rgba(158, 158, 158,0.6);
	font-weight: 400;
	font-family: 'Open Sans', sans-serif;
	padding: 5px 15px 5px 15px;
	outline: none;
}
#order-rs_hosting_cart .rs-btn-addproduct:hover, .rs-btn-addproduct:focus {
    background-color: rgba(255, 179, 0,1.0);
	border-bottom:2px solid rgba(224, 224, 224,0.8);
	outline: none;
}
#order-rs_hosting_cart .rs-btn-addproduct:active {
	background-color: rgba(255, 179, 0,0.7);
}

/*=============================
PRICING STYLE
==============================*/
#order-rs_hosting_cart .rs-pricing {
	position: relative;
	margin-bottom: 30px;
    margin-top: 50px;
    line-height: 30px;
	border-radius:6px!important;
}
#order-rs_hosting_cart .rs-pricing hr {
	margin-bottom: 4px;
    margin-top: 3px;
    margin-left: -10px;
    border-color: #fff;
}

#order-rs_hosting_cart .rs-pricing ul {
    list-style: none;
    margin: 0;
	font-size:1.0em;
	font-weight:100;
	line-height:15px;
    padding-left: 20px;
    padding-right: 10px;
}
#order-rs_hosting_cart .rs-pricing ul li {
    padding-top: 20px;
    padding-bottom: 20px;
}
#order-rs_hosting_cart .rs-pricing ul li i {
    margin-right: 5px;
}
#order-rs_hosting_cart .rs-pricing .price {
    background-color: rgba(0, 0, 0, .5);
    padding: 30px 10px 10px;
    font-size: 24px;
    font-weight: 300;
    text-align: center;
    text-transform: capitalize;
	border-radius:8px 8px 0 0;
    color: #FFF;
}
#order-rs_hosting_cart .rs-pricing .price small {
    color: #efefef;
    display: block;
    font-size: 15px;
    text-align: center;
    text-transform: lowercase;
    margin-top: 5px;
    margin-bottom: -10px;
}
#order-rs_hosting_cart .rs-pricing .type {
	background-color: rgba(100,100,100, 0.3);
    padding: 20px 10px;
    font-weight: 500;
    text-transform: uppercase;
    font-size: 20px;
    text-align: center;
}
#order-rs_hosting_cart .rs-pricing .pricing-footer {
    padding: 20px;
    text-align: center;
}
#order-rs_hosting_cart .rs-attached > .col-lg-6,
#order-rs_hosting_cart .rs-attached > .col-lg-4,
#order-rs_hosting_cart .rs-attached > .col-lg-3,
#order-rs_hosting_cart .rs-attached > .col-md-6,
#order-rs_hosting_cart .rs-attached > .col-md-4,
#order-rs_hosting_cart .rs-attached > .col-md-3,
#order-rs_hosting_cart .rs-attached > .col-sm-6,
#order-rs_hosting_cart .rs-attached > .col-sm-4,
#order-rs_hosting_cart .rs-attached > .col-sm-3 {
    padding-left: 0;
    padding-right: 0;
}

#order-rs_hosting_cart .rs-pricing.popular {
    margin-top: 10px;
	border-radius:9px;
}
#order-rs_hosting_cart .rs-pricing.popular .price {
    padding-top: 36px;
}

#order-rs_hosting_cart .product_desc {
	padding-left:20px;
	padding-right:20px;
	padding-bottom:15px;
	font-weight:300;
	line-height:1.3em!important;
	font-size: 1.4rem;
}
#order-rs_hosting_cart .product_desc .product1-description {
	
}

/*=============================
PRICING COLORS
==============================*/
#order-rs_hosting_cart .rs-color-0 {
    background-color: rgba(33, 150, 243,1.0);
	}
#order-rs_hosting_cart .rs-color-0:hover {
    background-color: rgba(133, 165, 236,1.0);
}

#order-rs_hosting_cart .rs-color-1 {
    background-color: rgba(0, 176, 255,1.0);
}
#order-rs_hosting_cart .rs-color-1:hover {
    background-color: rgba(100, 181, 246,1.0);
}

#order-rs_hosting_cart .rs-color-2 {
    background-color: rgba(255, 82, 82,1.0);
}
#order-rs_hosting_cart .rs-color-2:hover {
    background-color: rgba(229, 115, 115,1.0);
}

#order-rs_hosting_cart .rs-color-3 {
    background-color: rgba(0, 176, 255,1.0);
}
#order-rs_hosting_cart .rs-color-3:hover {
    background-color: rgba(100, 181, 246,1.0);
}

#order-rs_hosting_cart .rs-color-4 {
    background-color: rgba(156, 204, 101,1.0);
}
#order-rs_hosting_cart .rs-color-4:hover {
    background-color: rgba(129, 199, 132,1.0);
}

#order-rs_hosting_cart .rs-color-5 {
    background-color: rgba(0, 176, 255,1.0);
}
#order-rs_hosting_cart .rs-color-5:hover {
    background-color: rgba(100, 181, 246,1.0);
}

#order-rs_hosting_cart .rs-color-6 {
    background-color: rgba(156, 204, 101,1.0);
}
#order-rs_hosting_cart .rs-color-6:hover {
    background-color: rgba(129, 199, 132,1.0);
}

#order-rs_hosting_cart .rs-color-7 {
    background-color: rgba(92, 107, 192,1.0);
}
#order-rs_hosting_cart .rs-color-7:hover {
    background-color: rgba(121, 134, 203,1.0);
}

#order-rs_hosting_cart .rs-color-8 {
    background-color: rgba(156, 204, 101,1.0);
}
#order-rs_hosting_cart .rs-color-8:hover {
    background-color: rgba(129, 199, 132,1.0);
}

#order-rs_hosting_cart .rs-color-9 {
    background-color: rgba(92, 107, 192,1.0);
}
#order-rs_hosting_cart .rs-color-9:hover {
    background-color: rgba(121, 134, 203,1.0);
}

#order-rs_hosting_cart .rs-color-10 {
    background-color: rgba(38, 166, 154,1.0);
}
#order-rs_hosting_cart .rs-color-10:hover {
    background-color: rgba(77, 182, 172,1.0);
}

#order-rs_hosting_cart .rs-color-11 {
    background-color: rgba(92, 107, 192,1.0);
}
#order-rs_hosting_cart .rs-color-11:hover {
    background-color: rgba(121, 134, 203,1.0);
}

#order-rs_hosting_cart .rs-color-12 {
    background-color: rgba(38, 166, 154,1.0);
}
#order-rs_hosting_cart .rs-color-12:hover {
    background-color: rgba(77, 182, 172,1.0);
}

#order-rs_hosting_cart .rs-color-13 {
    background-color: rgba(239, 83, 80,1.0);
}
#order-rs_hosting_cart .rs-color-13:hover {
    background-color: rgba(229, 115, 115,1.0);
}

#order-rs_hosting_cart .rs-color-14 {
    background-color: rgba(38, 166, 154,1.0);
}
#order-rs_hosting_cart .rs-color-14:hover {
    background-color: rgba(77, 182, 172,1.0);
}

#order-rs_hosting_cart .rs-color-15 {
    background-color: rgba(239, 83, 80,1.0);
}
#order-rs_hosting_cart .rs-color-15:hover {
    background-color: rgba(229, 115, 115,1.0);
}

#order-rs_hosting_cart .rs-color-16 {
    background-color: rgba(255, 167, 38,1.0);
}
#order-rs_hosting_cart .rs-color-16:hover {
    background-color: rgba(255, 183, 77,1.0);
}

#order-rs_hosting_cart .rs-color-17 {
    background-color: rgba(239, 83, 80,1.0);
}
#order-rs_hosting_cart .rs-color-17:hover {
    background-color: rgba(229, 115, 115,1.0);
}

#order-rs_hosting_cart .rs-color-18 {
    background-color: rgba(255, 167, 38,1.0);
}
#order-rs_hosting_cart .rs-color-18:hover {
    background-color: rgba(255, 183, 77,1.0);
}

#order-rs_hosting_cart .rs-color-19 {
    background-color: rgba(126, 87, 194,1.0);
}
#order-rs_hosting_cart .rs-color-19:hover {
    background-color: rgba(149, 117, 205,1.0);
}

#order-rs_hosting_cart .rs-color-20 {
    background-color: rgba(255, 167, 38,1.0);
}
#order-rs_hosting_cart .rs-color-20:hover {
    background-color: rgba(255, 183, 77,1.0);
}

#order-rs_hosting_cart .rs-color-21 {
    background-color: rgba(126, 87, 194,1.0);
}
#order-rs_hosting_cart .rs-color-21:hover {
    background-color: rgba(149, 117, 205,1.0);
}

#order-rs_hosting_cart .rs-color-22 {
    background-color: rgba(3, 169, 244,1.0);
}
#order-rs_hosting_cart .rs-color-22:hover {
    background-color: rgba(41, 182, 246,1.0);
}

#order-rs_hosting_cart .rs-color-23 {
    background-color: rgba(126, 87, 194,1.0);
}
#order-rs_hosting_cart .rs-color-23:hover {
	background-color: rgba(149, 117, 205,1.0);
}

#order-rs_hosting_cart .rs-color-24 {
    background-color: rgba(3, 169, 244,1.0);
}
#order-rs_hosting_cart .rs-color-24:hover {
    background-color: rgba(41, 182, 246,1.0);
}

#order-rs_hosting_cart .rs-color-25 {
    background-color: rgba(139, 195, 74,1.0);
}
#order-rs_hosting_cart .rs-color-25:hover {
    background-color: rgba(156, 204, 101,1.0);
}

#order-rs_hosting_cart .rs-color-26 {
    background-color: rgba(3, 169, 244,1.0);
}
#order-rs_hosting_cart .rs-color-26:hover {
    background-color: rgba(41, 182, 246,1.0);
}

#order-rs_hosting_cart .rs-color-27 {
    background-color: rgba(139, 195, 74,1.0);
}
#order-rs_hosting_cart .rs-color-27:hover {
    background-color: rgba(156, 204, 101,1.0);
}

#order-rs_hosting_cart .rs-color-28 {
    background-color: rgba(205, 220, 57,1.0);
}
#order-rs_hosting_cart .rs-color-28:hover {
    background-color: rgba(212, 225, 87,1.0);
}

#order-rs_hosting_cart .rs-color-29 {
    background-color: rgba(139, 195, 74,1.0);
}
#order-rs_hosting_cart .rs-color-29:hover {
    background-color: rgba(156, 204, 101,1.0);
}

#order-rs_hosting_cart .rs-color-30 {
	background-color: rgba(205, 220, 57,1.0);
}
#order-rs_hosting_cart .rs-color-30:hover {
	background-color: rgba(212, 225, 87,1.0);
}

#order-rs_hosting_cart .rs-color-31 {
    background-color: rgba(255, 112, 67,1.0);
}
#order-rs_hosting_cart .rs-color-31:hover {
    background-color: rgba(255, 138, 101,1.0);
}

#order-rs_hosting_cart .rs-color-32 {
    background-color: rgba(205, 220, 57,1.0);
}
#order-rs_hosting_cart .rs-color-32:hover {
    background-color: rgba(212, 225, 87,1.0);
}

#order-rs_hosting_cart .rs-color-33 {
    background-color: rgba(255, 112, 67,1.0);
}
#order-rs_hosting_cart .rs-color-33:hover {
    background-color: rgba(255, 138, 101,1.0);
}

#order-rs_hosting_cart .rs-color-34 {
    background-color: rgba(120, 144, 156,1.0);
}
#order-rs_hosting_cart .rs-color-34:hover {
    background-color: rgba(144, 164, 174,1.0);
}

#order-rs_hosting_cart .rs-color-35 {
    background-color: rgba(255, 112, 67,1.0);
}
#order-rs_hosting_cart .rs-color-35:hover {
    background-color: rgba(255, 138, 101,1.0);
}

#order-rs_hosting_cart .rs-color-36 {
    background-color: rgba(120, 144, 156,1.0);
}
#order-rs_hosting_cart .rs-color-36:hover {
    background-color: rgba(144, 164, 174,1.0);
}

#order-rs_hosting_cart .rs-color-37 {
    background-color: rgba(253, 216, 53,1.0);
}
#order-rs_hosting_cart .rs-color-37:hover {
    background-color: rgba(255, 235, 59,1.0);
}

#order-rs_hosting_cart .rs-color-38 {
    background-color: rgba(120, 144, 156,1.0);
}
#order-rs_hosting_cart .rs-color-38:hover {
    background-color: rgba(144, 164, 174,1.0);
}

#order-rs_hosting_cart .rs-color-39 {
    background-color: rgba(253, 216, 53,1.0);
}
#order-rs_hosting_cart .rs-color-39:hover {
    background-color: rgba(255, 235, 59,1.0);
}

#order-rs_hosting_cart .rs-color-40 {
    background-color: rgba(255, 202, 40,1.0);
}
#order-rs_hosting_cart .rs-color-40:hover {
    background-color: rgba(255, 213, 79,1.0);
}

#order-rs_hosting_cart .rs-color-41 {
    background-color: rgba(253, 216, 53,1.0);
}
#order-rs_hosting_cart .rs-color-41:hover {
    background-color: rgba(255, 235, 59,1.0);
}

#order-rs_hosting_cart .rs-color-42 {
    background-color: rgba(255, 202, 40,1.0);
}
#order-rs_hosting_cart .rs-color-42:hover {
    background-color: rgba(255, 213, 79,1.0);
}

#order-rs_hosting_cart .rs-color-43 {
    background-color: rgba(38, 166, 154,1.0);
}
#order-rs_hosting_cart .rs-color-43:hover {
    background-color: rgba(77, 182, 172,1.0);
}

#order-rs_hosting_cart .rs-color-44 {
    background-color: rgba(255, 202, 40,1.0);
}
#order-rs_hosting_cart .rs-color-44:hover {
    background-color: rgba(255, 213, 79,1.0);
}

#order-rs_hosting_cart .rs-color-45 {
    background-color: rgba(38, 166, 154,1.0);
}
#order-rs_hosting_cart .rs-color-45:hover {
    background-color: rgba(77, 182, 172,1.0);
}

#order-rs_hosting_cart .rs-color-46 {
    background-color: rgba(158, 158, 158,1.0);
}
#order-rs_hosting_cart .rs-color-46:hover {
    background-color: rgba(189, 189, 189,1.0);
}

#order-rs_hosting_cart .rs-color-47 {
    background-color: rgba(38, 166, 154,1.0);
}
#order-rs_hosting_cart .rs-color-47:hover {
    background-color: rgba(77, 182, 172,1.0);
}

#order-rs_hosting_cart .rs-color-48 {
    background-color: rgba(158, 158, 158,1.0);
}
#order-rs_hosting_cart .rs-color-48:hover {
    background-color: rgba(189, 189, 189,1.0);
}

#order-rs_hosting_cart .rs-color-49 {
    background-color: rgba(66, 165, 245,1.0);
}
#order-rs_hosting_cart .rs-color-49:hover {
    background-color: rgba(100, 181, 246,1.0);
}

#order-rs_hosting_cart .rs-color-50 {
    background-color: rgba(158, 158, 158,1.0);
}
#order-rs_hosting_cart .rs-color-50:hover {
    background-color: rgba(189, 189, 189,1.0);
}

#order-rs_hosting_cart .rs-color-51 {
    background-color: rgba(66, 165, 245,1.0);
}
#order-rs_hosting_cart .rs-color-51:hover {
    background-color: rgba(100, 181, 246,1.0);
}

#order-rs_hosting_cart .rs-color-52 {
    background-color: rgba(38, 198, 218,1.0);
}
#order-rs_hosting_cart .rs-color-52:hover {
    background-color: rgba(77, 208, 225,1.0);
}

#order-rs_hosting_cart .rs-color-53 {
    background-color: rgba(66, 165, 245,1.0);
}
#order-rs_hosting_cart .rs-color-53:hover {
    background-color: rgba(100, 181, 246,1.0);
}

#order-rs_hosting_cart .rs-color-54 {
    background-color: rgba(38, 198, 218,1.0);
}
#order-rs_hosting_cart .rs-color-54:hover {
    background-color: rgba(77, 208, 225,1.0));
}

#order-rs_hosting_cart .rs-color-55 {
    background-color: rgba(3, 169, 244,1.0);
}
#order-rs_hosting_cart .rs-color-55:hover {
    background-color: rgba(41, 182, 246,1.0);
}

#order-rs_hosting_cart .rs-color-56 {
    background-color: rgba(126, 87, 194,1.0);
}
#order-rs_hosting_cart .rs-color-56:hover {
    background-color: rgba(149, 117, 205,1.0);
}

#order-rs_hosting_cart .rs-color-57 {
    background-color: rgba(3, 169, 244,1.0);
}
#order-rs_hosting_cart .rs-color-57:hover {
    background-color: rgba(41, 182, 246,1.0);
}

#order-rs_hosting_cart .rs-color-58 {
    background-color: rgba(139, 195, 74,1.0);
}
#order-rs_hosting_cart .rs-color-58:hover {
    background-color: rgba(156, 204, 101,1.0);
}

#order-rs_hosting_cart .rs-color-59 {
    background-color: rgba(3, 169, 244,1.0);
}
#order-rs_hosting_cart .rs-color-59:hover {
    background-color: rgba(41, 182, 246,1.0);
}

#order-rs_hosting_cart .rs-color-60 {
    background-color: rgba(139, 195, 74,1.0);
}
#order-rs_hosting_cart .rs-color-60:hover {
    background-color: rgba(156, 204, 101,1.0);
}

#order-rs_hosting_cart .rs-color-61 {
    background-color: rgba(205, 220, 57,1.0);
}
#order-rs_hosting_cart .rs-color-61:hover {
    background-color: rgba(212, 225, 87,1.0);
}

#order-rs_hosting_cart .rs-color-62 {
    background-color: rgba(139, 195, 74,1.0);
}
#order-rs_hosting_cart .rs-color-62:hover {
    background-color: rgba(156, 204, 101,1.0);
}

#order-rs_hosting_cart .rs-color-63 {
    background-color: rgba(205, 220, 57,1.0);
}
#order-rs_hosting_cart .rs-color-63:hover {
    background-color: rgba(212, 225, 87,1.0);
}

#order-rs_hosting_cart .rs-color-64 {
    background-color: rgba(255, 112, 67,1.0);
}
#order-rs_hosting_cart .rs-color-64:hover {
    background-color: rgba(255, 138, 101,1.0);
}

#order-rs_hosting_cart .rs-color-65 {
    background-color: rgba(205, 220, 57,1.0);
}
#order-rs_hosting_cart .rs-color-65:hover {
    background-color: rgba(212, 225, 87,1.0);
}

#order-rs_hosting_cart .rs-color-66 {
    background-color: rgba(255, 112, 67,1.0);
}
#order-rs_hosting_cart .rs-color-66:hover {
    background-color: rgba(255, 138, 101,1.0);
}

#order-rs_hosting_cart .rs-color-67 {
    background-color: rgba(120, 144, 156,1.0);
}
#order-rs_hosting_cart .rs-color-67:hover {
    background-color: rgba(144, 164, 174,1.0);
}

#order-rs_hosting_cart .rs-color-68 {
    background-color: rgba(255, 112, 67,1.0);
}
#order-rs_hosting_cart .rs-color-68:hover {
    background-color: rgba(255, 138, 101,1.0);
}

#order-rs_hosting_cart .rs-color-69 {
    background-color: rgba(120, 144, 156,1.0);
}
#order-rs_hosting_cart .rs-color-69:hover {
    background-color: rgba(144, 164, 174,1.0);
}

#order-rs_hosting_cart .rs-color-70 {
    background-color: rgba(253, 216, 53,1.0);
}
#order-rs_hosting_cart .rs-color-70:hover {
    background-color: rgba(255, 235, 59,1.0);
}

#order-rs_hosting_cart .rs-color-71 {
    background-color: rgba(120, 144, 156,1.0);
}
#order-rs_hosting_cart .rs-color-71:hover {
    background-color: rgba(144, 164, 174,1.0);
}

#order-rs_hosting_cart .rs-color-72 {
    background-color: rgba(253, 216, 53,1.0);
}
#order-rs_hosting_cart .rs-color-72:hover {
    background-color: rgba(255, 235, 59,1.0);
}

#order-rs_hosting_cart .rs-color-73 {
    background-color: rgba(255, 202, 40,1.0);
}
#order-rs_hosting_cart .rs-color-73:hover {
    background-color: rgba(255, 213, 79,1.0);
}

#order-rs_hosting_cart .rs-color-74 {
    background-color: rgba(253, 216, 53,1.0);
}
#order-rs_hosting_cart .rs-color-74:hover {
    background-color: rgba(255, 235, 59,1.0);
}

#order-rs_hosting_cart .rs-color-75 {
    background-color: rgba(255, 202, 40,1.0);
}
#order-rs_hosting_cart .rs-color-75:hover {
    background-color: rgba(255, 213, 79,1.0);
}

#order-rs_hosting_cart .rs-color-76 {
    background-color: rgba(38, 166, 154,1.0);
}
#order-rs_hosting_cart .rs-color-76:hover {
    background-color: rgba(77, 182, 172,1.0);
}

#order-rs_hosting_cart .rs-color-77 {
    background-color: rgba(255, 202, 40,1.0);
}
#order-rs_hosting_cart .rs-color-77:hover {
    background-color: rgba(255, 213, 79,1.0);
}

#order-rs_hosting_cart .rs-color-78 {
    background-color: rgba(38, 166, 154,1.0);
}
#order-rs_hosting_cart .rs-color-78:hover {
    background-color: rgba(77, 182, 172,1.0);
}

#order-rs_hosting_cart .rs-color-79 {
    background-color: rgba(158, 158, 158,1.0);
}
#order-rs_hosting_cart .rs-color-79:hover {
    background-color: rgba(189, 189, 189,1.0);
}

#order-rs_hosting_cart .rs-color-80 {
    background-color: rgba(38, 166, 154,1.0);
}
#order-rs_hosting_cart .rs-color-80:hover {
    background-color: rgba(77, 182, 172,1.0);
}

#order-rs_hosting_cart .rs-color-81 {
    background-color: rgba(158, 158, 158,1.0);
}
#order-rs_hosting_cart .rs-color-81:hover {
    background-color: rgba(189, 189, 189,1.0);
}

#order-rs_hosting_cart .rs-color-82 {
    background-color: rgba(66, 165, 245,1.0);
}
#order-rs_hosting_cart .rs-color-82:hover {
    background-color: rgba(100, 181, 246,1.0);
}

#order-rs_hosting_cart .rs-color-83 {
    background-color: rgba(158, 158, 158,1.0);
}
#order-rs_hosting_cart .rs-color-83:hover {
    background-color: rgba(189, 189, 189,1.0);
}

#order-rs_hosting_cart .rs-color-84 {
    background-color: rgba(66, 165, 245,1.0);
}
#order-rs_hosting_cart .rs-color-84:hover {
    background-color: rgba(100, 181, 246,1.0);
}

#order-rs_hosting_cart .rs-color-85 {
    background-color: rgba(38, 198, 218,1.0);
}
#order-rs_hosting_cart .rs-color-85:hover {
    background-color: rgba(77, 208, 225,1.0);
}

#order-rs_hosting_cart .rs-color-86 {
    background-color: rgba(66, 165, 245,1.0);
}
#order-rs_hosting_cart .rs-color-86:hover {
    background-color: rgba(100, 181, 246,1.0);
}

#order-rs_hosting_cart .rs-color-87 {
    background-color: rgba(38, 198, 218,1.0);
}
#order-rs_hosting_cart .rs-color-87:hover {
    background-color: rgba(77, 208, 225,1.0));
}

#order-rs_hosting_cart .rs-color-88 {
    background-color: rgba(3, 169, 244,1.0);
}
#order-rs_hosting_cart .rs-color-88:hover {
    background-color: rgba(41, 182, 246,1.0);
}

#order-rs_hosting_cart .rs-color-89 {
    background-color: rgba(126, 87, 194,1.0);
}
#order-rs_hosting_cart .rs-color-89:hover {
    background-color: rgba(149, 117, 205,1.0);
}

#order-rs_hosting_cart .rs-color-90 {
    background-color: rgba(3, 169, 244,1.0);
}
#order-rs_hosting_cart .rs-color-90:hover {
    background-color: rgba(41, 182, 246,1.0);
}

#order-rs_hosting_cart .rs-color-91 {
    background-color: rgba(139, 195, 74,1.0);
}
#order-rs_hosting_cart .rs-color-91:hover {
    background-color: rgba(156, 204, 101,1.0);
}

#order-rs_hosting_cart .rs-color-92 {
    background-color: rgba(3, 169, 244,1.0);
}
#order-rs_hosting_cart .rs-color-92:hover {
    background-color: rgba(41, 182, 246,1.0);
}

#order-rs_hosting_cart .rs-color-93 {
    background-color: rgba(139, 195, 74,1.0);
}
#order-rs_hosting_cart .rs-color-93:hover {
    background-color: rgba(156, 204, 101,1.0);
}

#order-rs_hosting_cart .rs-color-94 {
    background-color: rgba(205, 220, 57,1.0);
}
#order-rs_hosting_cart .rs-color-94:hover {
    background-color: rgba(212, 225, 87,1.0);
}

#order-rs_hosting_cart .rs-color-95 {
    background-color: rgba(139, 195, 74,1.0);
}
#order-rs_hosting_cart .rs-color-95:hover {
    background-color: rgba(156, 204, 101,1.0);
}

#order-rs_hosting_cart .rs-color-96 {
    background-color: rgba(205, 220, 57,1.0);
}
#order-rs_hosting_cart .rs-color-96:hover {
    background-color: rgba(212, 225, 87,1.0);
}

#order-rs_hosting_cart .rs-color-97 {
    background-color: rgba(255, 112, 67,1.0);
}
#order-rs_hosting_cart .rs-color-97:hover {
    background-color: rgba(255, 138, 101,1.0);
}

#order-rs_hosting_cart .rs-color-98 {
    background-color: rgba(205, 220, 57,1.0);
}
#order-rs_hosting_cart .rs-color-98:hover {
    background-color: rgba(212, 225, 87,1.0);
}

#order-rs_hosting_cart .rs-color-99 {
    background-color: rgba(255, 112, 67,1.0);
}
#order-rs_hosting_cart .rs-color-99:hover {
    background-color: rgba(255, 138, 101,1.0);
}

#order-rs_hosting_cart .rs-color-100 {
    background-color: rgba(120, 144, 156,1.0);
}
#order-rs_hosting_cart .rs-color-100:hover {
    background-color: rgba(144, 164, 174,1.0);
}

/*=============================
FEATURES
==============================*/
#order-rs_hosting_cart .rs-include-features {
	color:rgba(66, 66, 66,1.0);
	font-size:130%;
	font-weight:400;
	border:1px solid rgba(0, 145, 234,0.0);
	border-radius:10px;
	padding-top:3%;
	padding-bottom:3%;
}
#order-rs_hosting_cart .rs-include-features:hover {
	border:1px solid rgba(0, 145, 234,0.1);
	-webkit-box-shadow: 0px 0px 8px 8px rgba(209,209,209,0.3);
	-moz-box-shadow: 0px 0px 8px 8px rgba(209,209,209,0.3);
	box-shadow: 0px 0px 8px 8px rgba(209,209,209,0.3);
}
</style>

<div id="order-rs_hosting_cart">

	<div class="row">

		<div class="col-md-12">
			<div class="header-lined">
				{if $productGroup.name}
					<h1 class="margin-bottom" style="margin-top:20px;padding:40px 0 0 0;border:none;color:#fff;font-weight:700;text-shadow:0px 1px 0px rgba(0,0,0,0.6);">{$productGroup.name}</h1>
				{/if}
				{if $productGroup.headline}
					<h3 class="" style="margin-top:-40px;padding:40px 0 0 0;border:none;color:#fff;font-size:160%;font-weight:300;text-shadow:0px 1px 0px rgba(0,0,0,0.6);">{$productGroup.headline}</h3>
				{/if}
				{if $productGroup.tagline}
					<h4 class="margin-bottom" style="color:#fff;font-size:105%;font-weight:100;text-shadow:0px 1px 0px rgba(0,0,0,0.2);">{$productGroup.tagline}</h4>
				{/if}
				<div class="row margin-bottom">
					<div class="col-md-4 col-md-offset-4 col-sm-6 col-sm-offset-3 col-xs-8 col-xs-offset-2">
						 {include file="orderforms/$carttpl/sidebar-categories-collapsed.tpl"}
					</div>
				</div>
			</div>
			{if $errormessage}
				<div class="alert alert-danger margin-bottom">
					{$errormessage}
				</div>
            {elseif !$productGroup}
                <div class="alert alert-info margin-bottom">
                    {lang key='orderForm.selectCategory'}
                </div>
            {/if}
		</div>

		<div class="col-md-12 margin-bottom">

			{foreach $hookAboveProductsOutput as $output}
			<div class="margin-bottom">
				{$output}
			</div>
			{/foreach}
			
			<div class="row" style="margin:-10px;">
			<div class="rs-attached">
				{foreach $products as $key => $product}
				<div class="col-xs-12 col-sm-{if count($productGroup.products) >= 4}6{elseif 3 == count($productGroup.products)}4{else 2 >= count($productGroup.products)}6{/if} col-md-{if count($productGroup.products) >= 4}3{elseif 3 == count($productGroup.products)}4{else 2 >= count($productGroup.products)}6{/if}{if 1 >= count($productGroup.products)} col-md-offset-3{/if}">
					<div class=" margin-bottom" style="margin:0 10px 0 10px!important;"{if $product.qty} data-toggle="tooltip" data-placement="top" title="Only {$product.qty} {$LANG.orderavailable}"{/if}>
						<div class="rs-pricing rs-color-{$product@iteration}{if $product.isFeatured} popular{/if}" style="color:{if 99 <= count($productGroup.products)}#000{else}#fff{/if};" id="pid{$product.pid}">
				
							{if 99 >= count($productGroup.products)}
								{if $product.isFeatured}
									<div class="rs-color-{$product@iteration}" style="border-radius:8px 8px 0 0;padding-bottom:5px;padding-top:5px;text-align:center;font-size:17px;font-weight:500;background-color: rgba(255, 80, 80, 9.0)!important;">
										{$LANG.featuredProduct|upper}
									</div>
								{/if}
							{/if}

							<div class="price margin-bottom" style="{if 99 >= count($productGroup.products)}{if $product.isFeatured}margin-top:0!important;padding-bottom:0;background-color: rgba(117, 190, 218, 0.2)!important;{/if}{else}color:rgba(55, 71, 79,1.0);{/if}line-height:1.2em!important;">

								<div class="text-center text-uppercase" style="margin-bottom:10px!important;font-size:17px!important;">
									{$product.name}
								</div>
							
								{if $product.bid}
									{$LANG.bundledeal}
									{if $product.displayprice}
										{$product.displayprice}
									{/if}
								{else}
									{if $product.pricing.hasconfigoptions}
										<small style="margin-bottom:10px!important;color:{if 99 <= count($productGroup.products)}#000{else}#fff{/if};">{$LANG.startingfrom}</small>
									{/if}
									{$product.pricing.minprice.price}
									<small style="color:{if 99 <= count($productGroup.products)}#000{else}#fff{/if};">
									{if $product.pricing.minprice.cycle eq "monthly"}
										{$LANG.orderpaymenttermmonthly}
									{elseif $product.pricing.minprice.cycle eq "quarterly"}
										{$LANG.orderpaymenttermquarterly}
									{elseif $product.pricing.minprice.cycle eq "semiannually"}
										{$LANG.orderpaymenttermsemiannually}
									{elseif $product.pricing.minprice.cycle eq "annually"}
										{$LANG.orderpaymenttermannually}
									{elseif $product.pricing.minprice.cycle eq "biennially"}
										{$LANG.orderpaymenttermbiennially}
									{elseif $product.pricing.minprice.cycle eq "triennially"}
										{$LANG.orderpaymenttermtriennially}
									{/if}
									</small><br/>
									{if $product.pricing.minprice.setupFee}
										<small style="color:{if 99 <= count($productGroup.products)}#000{else}#fff{/if};">
											{$product.pricing.minprice.setupFee->toPrefixed()} {$LANG.ordersetupfee}
										</small>
									{/if}
								{/if}
								
							</div>
							
							{if $product.featuresdesc}
							<div class="product_desc">
									<text id="product{$product@iteration}-description" style="color:{if 99 <= count($productGroup.products)}#000{/if};">
										{$product.featuresdesc}
									</text>
									{foreach $product.features as $feature => $value}
										<text id="product{$product@iteration}-feature{$value@iteration}" style="color:{if 99 <= count($productGroup.products)}#000{/if};">
											<span class="feature-value">{$value}</span>
											{$feature}
										</text>
									{/foreach}
							</div>
							{/if}
							
							<div class="pricing-footer" style="margin-top:-10px;">
								<a type="button" id="pid{$product.pid}" class="btn rs-btn-addproduct" style="color:{if 99 <= count($productGroup.products)}#000{else}#fff{/if};" href="cart.php?a=add&{if $product.bid}bid={$product.bid}{else}pid={$product.pid}{/if}" {if $product.qty!="" && $product.qty<=0}disabled{/if}>
									<i class="fa fa-shopping-cart"></i> {$LANG.ordernowbutton}
								</a>
							</div>
							
						</div>
					</div>
				</div>
				{/foreach}
			</div>
			</div>
			
			{if count($productGroup.features) > 0}
			<div class="row {if $hookBelowProductsOutput} margin-bottom{/if}" style="margin: 10px;">
				<div class="col-xs-12 col-sm-12 col-md-12 head-area text-center text-uppercase margin-bottom">
					<h2 class="margin-bottom" style="font-size:200%;font-weight:300;color:rgba(0, 145, 234,1.0);">
						{$LANG.orderForm.includedWithPlans}
					</h2>
					<div class="col-xs-4 col-xs-offset-4 col-sm-2 col-sm-offset-5 col-md-2 col-md-offset-5 margin-bottom"  style="border-top:2px solid rgba(100, 221, 23,1.0);"></div>
				</div>
					{foreach $productGroup.features as $features}
					<div class="rs-include-features col-xs-12 col-sm-6 col-md-4 text-center">
						<i class="fas fa-check fa-lg" style="font-size:280%;font-weight:300;color:rgba(100, 221, 23,1.0);"></i><br/>{$features.feature}
					</div>
					{/foreach}
			</div>
            {/if}
			
			{foreach $hookBelowProductsOutput as $output}
			<div class="margin-bottom">
				{$output}
			</div>
			{/foreach}
			
		</div>
		
	</div>
</div>

	<script>
	$(document).ready(function(){
		$('[data-toggle="tooltip"]').tooltip();
	});
	</script>
<!DOCTYPE html>
<!--[if IE]><![endif]-->
<!--[if IE 8 ]><html dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>" class="ie8"><![endif]-->
<!--[if IE 9 ]><html dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>" class="ie9"><![endif]-->
<!--[if (gt IE 9)|!(IE)]><!-->
<html dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>">
<!--<![endif]-->
<head>
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title><?php echo $title; ?></title>
<base href="<?php echo $base; ?>" />
<?php if ($description) { ?>
<meta name="description" content="<?php echo $description; ?>" />
<?php } ?>
<?php if ($keywords) { ?>
<meta name="keywords" content= "<?php echo $keywords; ?>" />
<?php } ?>

<script src="catalog/view/javascript/jquery/jquery-2.1.1.min.js" type="text/javascript"></script>
<script src="catalog/view/javascript/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
<link href="catalog/view/javascript/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css" />
<link href="//fonts.googleapis.com/css?family=Open+Sans:400,400i,600,300,700" rel="stylesheet" type="text/css" />
<link href='//fonts.googleapis.com/css?family=Lato:400,100,300,300italic,400italic,700,900,900italic,700italic' rel='stylesheet' type='text/css'>
<link href='//fonts.googleapis.com/css?family=Anton' rel='stylesheet' type='text/css'>
<link href="catalog/view/theme/<?php echo $mytemplate; ?>/stylesheet/stylesheet.css" rel="stylesheet">

<link rel="stylesheet" type="text/css" href="catalog/view/theme/<?php echo $mytemplate; ?>/stylesheet/megnor/carousel.css" />
<link rel="stylesheet" type="text/css" href="catalog/view/theme/<?php echo $mytemplate; ?>/stylesheet/megnor/custom.css" />
<link rel="stylesheet" type="text/css" href="catalog/view/theme/<?php echo $mytemplate; ?>/stylesheet/megnor/bootstrap.min.css" />
<link rel="stylesheet" type="text/css" href="catalog/view/theme/<?php echo $mytemplate; ?>/stylesheet/megnor/lightbox.css" />

<?php if($direction=='rtl'){ ?>
<link rel="stylesheet" type="text/css" href="catalog/view/theme/<?php echo $mytemplate; ?>/stylesheet/megnor/rtl.css">
<?php }?>

<?php foreach ($styles as $style) { ?>
<link href="<?php echo $style['href']; ?>" type="text/css" rel="<?php echo $style['rel']; ?>" media="<?php echo $style['media']; ?>" />
<?php } ?>

<!-- Megnor www.templatemela.com - Start -->
<script type="text/javascript" src="catalog/view/javascript/megnor/parallex.js"></script>
<script type="text/javascript" src="catalog/view/javascript/megnor/custom.js"></script>
<script type="text/javascript" src="catalog/view/javascript/megnor/jstree.min.js"></script>
<script type="text/javascript" src="catalog/view/javascript/megnor/carousel.min.js"></script>
<script type="text/javascript" src="catalog/view/javascript/megnor/megnor.min.js"></script>
<script type="text/javascript" src="catalog/view/javascript/megnor/jquery.custom.min.js"></script>
<script type="text/javascript" src="catalog/view/javascript/megnor/jquery.bxslider.min.js"></script>
<script type="text/javascript" src="catalog/view/javascript/megnor/jquery.elevatezoom.min.js"></script>
<script type="text/javascript" src="catalog/view/javascript/lightbox/lightbox-2.6.min.js"></script>
<!-- Megnor www.templatemela.com - End -->

<script src="catalog/view/javascript/common.js" type="text/javascript"></script>
	<?php foreach ($links as $link) { ?>
	<link href="<?php echo $link['href']; ?>" rel="<?php echo $link['rel']; ?>" />
	<?php } ?>
<script src="catalog/view/javascript/megnor/tabs.js" type="text/javascript"></script>

<?php foreach ($scripts as $script) { ?>
<script src="<?php echo $script; ?>" type="text/javascript"></script>
<?php } ?>
<?php foreach ($analytics as $analytic) { ?>
	<?php echo $analytic; ?>
	<?php } ?>
</head>

<?php if ($column_left && $column_right) { ?>
<?php $layoutclass = 'layout-3'; ?>
<?php } elseif ($column_left || $column_right) { ?>
<?php if ($column_left){ ?>
<?php $layoutclass = 'layout-2 left-col'; ?>
<?php } elseif ($column_right) { ?>
<?php $layoutclass = 'layout-2 right-col'; ?>
<?php } ?>
<?php } else { ?>
<?php $layoutclass = 'layout-1'; ?>
<?php } ?>

<body class="<?php echo $class;echo " " ;echo $layoutclass; ?>">
<div class="main-header">
<nav id="top">
  <div class="container">
    <?php echo $currency; ?>
    <?php echo $language; ?>
    <div id="top-links" class="nav pull-right">
      <ul class="list-inline">
        <?php /*?><li><a href="<?php echo $contact; ?>"><i class="fa fa-phone"></i></a> <span class="hidden-xs hidden-sm hidden-md"><?php echo $telephone; ?></span></li><?php */?>
		<li><a href="<?php echo $wishlist; ?>" class="top-wishlist" id="wishlist-total" title="<?php echo $text_wishlist; ?>"><?php echo $text_wishlist; ?></a></li>
        <li class="dropdown myaccount"><a href="<?php echo $account; ?>" title="<?php echo $text_account; ?>" class="dropdown-toggle" data-toggle="dropdown"><?php echo $text_account; ?><span class="caret"></span></a>
          <ul class="dropdown-menu dropdown-menu-right myaccount-menu">
            <?php if ($logged) { ?>
            <li><a href="<?php echo $account; ?>"><?php echo $text_account; ?></a></li>
            <li><a href="<?php echo $order; ?>"><?php echo $text_order; ?></a></li>
            <li><a href="<?php echo $transaction; ?>"><?php echo $text_transaction; ?></a></li>
            <li><a href="<?php echo $download; ?>"><?php echo $text_download; ?></a></li>
            <li><a href="<?php echo $logout; ?>"><?php echo $text_logout; ?></a></li>
            <?php } else { ?>
            <li><a href="<?php echo $register; ?>"><?php echo $text_register; ?></a></li>
            <li><a href="<?php echo $login; ?>"><?php echo $text_login; ?></a></li>
            <?php } ?>
			<li class="inner-wishlist"><a href="<?php echo $wishlist; ?>" id="wishlist-tm-total" title="<?php echo $text_wishlist; ?>"><?php echo $text_wishlist; ?></a></li>
			<li class="inner-checkout"><a href="<?php echo $checkout; ?>" title="<?php echo $text_checkout; ?>"><?php echo $text_checkout; ?></a></li>
          </ul>
        </li>
        <li><a class="top-checkout" href="<?php echo $checkout; ?>" title="<?php echo $text_checkout; ?>"><?php echo $text_checkout; ?></a></li>
      </ul>
    </div>
  </div>
</nav>
<header>
  <div class="container">
	<div class="header_left header_block">
	<div class="contact_us"><a href="<?php echo $contact; ?>"><i class="fa fa-phone"></i></a>Call Us Free : <?php echo $telephone; ?></div>
	</div>
	<div class="header_center header_block">
      <div class="col-sm-4">
        <div id="logo">
          <?php if ($logo) { ?>
          <a href="<?php echo $home; ?>"><img src="<?php echo $logo; ?>" title="<?php echo $name; ?>" alt="<?php echo $name; ?>" class="img-responsive" /></a>
          <?php } else { ?>
          <h1><a href="<?php echo $home; ?>"><?php echo $name; ?></a></h1>
          <?php } ?>
        </div>
      </div>
	  </div>
	<div class="header_right header_block">
      <div class="col-sm-5"><?php echo $search; ?>
	  </div>
      </div>
  </div>
</header>
<nav class="nav-container" role="navigation">
<div class="nav-inner container">
<!-- ======= Menu Code START ========= -->
<?php if ($categories) { ?>
<!-- Opencart 3 level Category Menu-->
<div id="menu" class="main-menu">
  <ul class="main-navigation">
  	<li> <a href="<?php echo $home; ?>"><?php echo $text_home; ?></a></li>
    <?php foreach ($categories as $category_1) { ?>
		<li class="level0">
			<a href="<?php echo $category_1['href']; ?>">
			<span data-hover="<?php echo $category_1['name']; ?>"><?php echo $category_1['name']; ?></span>
			</a>
  			 <?php if ($category_1['children']) { ?>
			   <?php $i = count($category_1['children']); ?>
					<span class="active_menu"></span>
					<div class="categorybg">
				<!--	<span class="active_menu"></span>-->
						 <div class="categoryinner">
						 
								<?php $i=1; ?>
								<?php foreach ($category_1['children'] as $category_2) { ?>
								<ul>
								<li class="categorycolumn"><b><a class="submenu1" href="<?php echo $category_2['href']; ?>"><?php echo $category_2['name']; ?></a></b>
								
								  <?php if($category_2['children']) { ?>
									<?php $j = count($category_2['children']); ?>
									<?php if($j<=10) { ?>
									
									<div class="cate_inner_bg">
									  <ul>
										 <?php foreach ($category_2['children'] as $category_3) { ?>
										 <li style="padding-right:6px;"><a class="submenu2" href="<?php echo $category_3['href']; ?>"><?php echo $category_3['name']; ?></a></li>
										 <?php } ?>
									  </ul>
									</div>
								
									<?php } else { ?>
									
									<div>
									  <ul>
									  <?php $j=0; ?>
										 <?php foreach ($category_2['children'] as $category_3) { ?>
										 <li style="padding-right:6px;"><a class="submenu2" href="<?php echo $category_3['href']; ?>"><?php echo $category_3['name']; ?></a></li>
										 <?php if (++$j == 10) ?>
										 <?php } ?>
										 <li style="padding-right:6px;"><a class="submenu2" href="<?php echo $category_2['href']; ?>">More....</a></li>
									  </ul>
									</div>
									<?php } ?>
									
								</li>
								<?php } ?>
								</ul>
								<?php } ?>
					
		
							
						</div>
					</div>
				
				<?php } ?>
	  		<?php } ?>
	  	</li> 
		<?php if(isset($blog_enable)){   ?>
       	<li> <a href="<?php echo $all_blogs; ?>">
		<span data-hover="<?php echo $text_blog; ?>"><?php echo $text_blog; ?></span>
		</a></li>       
<?php  } ?>
		
  </ul>
  
</div>
<?php } ?>
<!--  =============================================== Mobile menu start  =============================================  -->
<div id="res-menu" class="main-menu nav-container1">
	<div class="nav-responsive"><span>Menu</span><div class="expandable"></div></div>
    <ul class="main-navigation">
      <?php foreach ($categories as $category) { ?>
    <li><a href="<?php echo $category['href']; ?>"><?php echo $category['name']; ?></a>
      <?php if ($category['children']) { ?>

        <?php for ($i = 0; $i < count($category['children']);) { ?>
        <ul>
          <?php $j = $i + ceil(count($category['children']) / $category['column']); ?>
          <?php for (; $i < $j; $i++) { ?>
          <?php if (isset($category['children'][$i])) { ?>										
				<li>
				<?php if(count($category['children'][$i]['children'])>0){ ?>
					<a href="<?php echo $category['children'][$i]['href']; ?>" class="activSub" <?php /*?>onmouseover='JavaScript:openSubMenu("<?php echo $category['children'][$i]['id']; ?>")'<?php */?>><?php echo $category['children'][$i]['name'];?></a> 					
				<?php } else { ?>				
					<a href="<?php echo $category['children'][$i]['href']; ?>" <?php /*?>onmouseover='JavaScript:closeSubMenu()'<?php */?> ><?php echo $category['children'][$i]['name']; ?></a>
				<?php } ?>

				<?php if ($category['children'][$i]['children']) { ?>
				<?php /*?><div class="submenu" id="id_menu_<?php echo $category['children'][$i]['id']; ?>"><?php */?>
				<ul>
				<?php for ($wi = 0; $wi < count($category['children'][$i]['children']); $wi++) { ?>
					<li><a href="<?php echo $category['children'][$i]['children'][$wi]['href']; ?>"  ><?php echo $category['children'][$i]['children'][$wi]['name']; ?></a></li>
				 <?php } ?>
				</ul>
				<?php /*?></div><?php */?>
			  <?php } ?>		  
			</li>		
          <?php } ?>
          <?php } ?>
        </ul>
        <?php } ?>

      <?php } ?>
    </li>
    <?php } ?>
	<?php if(isset($blog_enable)){   ?>
       	<li> <a href="<?php echo $all_blogs; ?>"><?php echo $text_blog; ?></a></li>       
<?php  } ?>
    </ul>
	</div>
<!--  ================================ Mobile menu end   ======================================   --> 
<!-- ======= Menu Code END ========= -->
<div class="col-sm-3 cart"><?php echo $cart; ?></div> 
</div>
</nav> 
</div> 


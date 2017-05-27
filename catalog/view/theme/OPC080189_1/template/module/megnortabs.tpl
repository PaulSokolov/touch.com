<div class="hometab container">

<div class="hometab-heading"><?php echo $heading_title; ?></div>
<div id="tabs" class="htabs">
  <ul class='etabs'>
	<li class='tab'>
		<?php if($latestproducts){ ?>
			<a href="#tab-latest"><?php echo $tab_latest; ?></a>
		<?php } ?>
	</li>
	<li class='tab'>
		<?php if($bestsellersproducts){ ?>
		<a href="#tab-bestseller"><?php echo $tab_bestseller; ?></a>
		<?php } ?>
	</li>
	<li class='tab'>
		<?php if($specialproducts){ ?>
			<a href="#tab-special"><?php echo $tab_special; ?></a>
		<?php } ?>
	</li>
	</ul>
 </div>
 <?php if($latestproducts){ ?>
<div id="tab-latest" class="tab-content">
	<div class="box">
				<div class="box-content">
					<?php 
						$sliderFor = 5;
						$productCount = sizeof($latestproducts); 
					?>
					
					<div class="box-product <?php if ($productCount >= $sliderFor){?>product-carousel<?php }else{?>productbox-grid<?php }?>" id="<?php if ($productCount >= $sliderFor){?>tablatest-carousel<?php }else{?>tablatest-grid<?php }?>">
						
						<?php $temp2=0; ?>

						<?php foreach ($latestproducts as $product) { ?>
							
							<?php if ($productCount >= $sliderFor){?>
								<?php if($productCount > 8 && $temp2 % 2 == 0) { ?>
								<div class="slider-item">
									<div>
								<?php } else if($productCount <= 8) { ?>
								<div class="slider-item">
								<?php } ?>
							<?php } else {?>
							<div class="product-items">
							<?php } ?>

								<div class="product-block product-thumb transition">
									<div class="product-block-inner">
										<div class="product-image-block-inner">
										 <?php if ($product['thumb_swap']) { ?>
      										<div class="image">
											<a href="<?php echo $product['href']; ?>">
											<img src="<?php echo $product['thumb']; ?>" title="<?php echo $product['name']; ?>" alt="<?php echo $product['name']; ?>" class="img-responsive"/>
											<img class="img-responsive hover-image" src="<?php echo $product['thumb_swap']; ?>" alt="<?php echo $product['name']; ?>"/>
											</a>
											<?php if (!$product['special']) { ?>       
											<?php } else { ?>
												<span class="saleicon sale">Sale</span>         
											<?php } ?>
											</div>

          									<?php } else {?>
     									 <div class="image">
										 <a href="<?php echo $product['href']; ?>">
										 <img src="<?php echo $product['thumb']; ?>" title="<?php echo $product['name']; ?>" alt="<?php echo $product['name']; ?>" class="img-responsive"/></a>
										 <?php if (!$product['special']) { ?>       
											<?php } else { ?>
												<span class="saleicon sale">Sale</span>         
											<?php } ?>
										 </div>

      									<?php } ?>
										<div class="product_hover_block">
											<div class="action">
											<button class="cart_button" type="button" data-toggle="tooltip" title="<?php echo $button_cart; ?>" onclick="cart.add('<?php echo $product['product_id']; ?>');"><span><span><?php echo $button_cart; ?></span></span></button>
											<button class="wishlist_button" type="button" data-toggle="tooltip" title="<?php echo $button_wishlist; ?>" onclick="wishlist.add('<?php echo $product['product_id']; ?>');"><i class="fa fa-heart-o"></i></button>
											<button class="compare_button" type="button" data-toggle="tooltip" title="<?php echo $button_compare; ?>" onclick="compare.add('<?php echo $product['product_id']; ?>');"><i class="fa fa-clone"></i></button>
											
											</div>
											</div>
										</div>
										<div class="caption">
										<div class="rating">
													<?php for ($i = 1; $i <= 5; $i++) { ?>
														<?php if ($product['rating'] < $i) { ?>
															<span class="fa fa-stack"><i class="fa fa-star fa-stack-1x"></i></span>
														<?php } else { ?>
														<span class="fa fa-stack"><i class="fa fa-star fa-stack-1x"></i><i class="fa fa-star fa-stack-1x"></i></span>
														<?php } ?>
													<?php } ?>
													</div>
										<h4><a href="<?php echo $product['href']; ?>"><?php echo $product['name']; ?></a></h4>
										<?php if ($product['price']) { ?>
												<p class="price">
												  <?php if (!$product['special']) { ?>
												  <?php echo $product['price']; ?>
												  <?php } else { ?>
												  <span class="price-new"><?php echo $product['special']; ?></span><span class="price-old"><?php echo $product['price']; ?></span>
												  <?php } ?>
												  <?php if ($product['tax']) { ?>
												  <span class="price-tax"><?php echo $text_tax; ?> <?php echo $product['tax']; ?></span>
												  <?php } ?>
												</p>
											<?php } ?>
										</div>
										
									</div>
								</div>
							<?php if ($productCount >= $sliderFor){?>
								<?php if($productCount > 8 && $temp2 % 2 != 0) { ?>
								</div>
								</div>
								<?php } else if($productCount <= 8) { ?>
								</div>
								<?php } $temp2++; ?>
							<?php } else {?>
								</div>
							<?php } ?>

						<?php } ?>

						<?php if($productCount > 8 && $temp2 % 2 != 0) {?>
							</div>
							</div>
						<?php }?>
					</div>
					<?php if ($productCount >= $sliderFor): ?>
						<div class="customNavigation">
							<a class="btn prev">prev</a>
							<a class="btn next">next</a>
						</div>
					<?php endif; ?>	
				</div>
			 </div>
			  <span class="tablatest_default_width" style="display:none; visibility:hidden"></span>
 </div>
<?php } ?>
<?php if($bestsellersproducts){ ?>
 <div id="tab-bestseller" class="tab-content">
    	  <div class="box">
				<div class="box-content">
					<?php 
						$sliderFor = 5;
						$productCount = sizeof($bestsellersproducts); 
					?>
					
					<div class="box-product <?php if ($productCount >= $sliderFor){?>product-carousel<?php }else{?>productbox-grid<?php }?>" id="<?php if ($productCount >= $sliderFor){?>tabbestseller-carousel<?php }else{?>tabbestseller-grid<?php }?>">
						
						<?php $temp=0; ?>

						<?php foreach ($bestsellersproducts as $product) { ?>

							<?php if ($productCount >= $sliderFor){?>
								<?php if($productCount > 8 && $temp % 2 == 0) { ?>
								<div class="slider-item">
									<div>
								<?php } else if($productCount <= 8) { ?>
								<div class="slider-item">
								<?php } ?>
							<?php } else {?>
							<div class="product-items">
							<?php } ?>
							
								<div class="product-block product-thumb transition">
									<div class="product-block-inner">
										<div class="product-image-block-inner">
										<?php if ($product['thumb_swap']) { ?>
      										<div class="image">
											<a href="<?php echo $product['href']; ?>">
											<img src="<?php echo $product['thumb']; ?>" title="<?php echo $product['name']; ?>" alt="<?php echo $product['name']; ?>" class="img-responsive"/>
											<img class="img-responsive hover-image" src="<?php echo $product['thumb_swap']; ?>" alt="<?php echo $product['name']; ?>"/>
											</a>
											<?php if (!$product['special']) { ?>       
											<?php } else { ?>
												<span class="saleicon sale">Sale</span>         
											<?php } ?>
											</div>

          									<?php } else {?>
     									 <div class="image">
										 <a href="<?php echo $product['href']; ?>">
										 <img src="<?php echo $product['thumb']; ?>" title="<?php echo $product['name']; ?>" alt="<?php echo $product['name']; ?>" class="img-responsive"/></a>
										 <?php if (!$product['special']) { ?>       
											<?php } else { ?>
												<span class="saleicon sale">Sale</span>         
											<?php } ?>
										 </div>

      									<?php } ?>
										<div class="product_hover_block">
											<div class="action">
											<button class="cart_button" type="button" data-toggle="tooltip" title="<?php echo $button_cart; ?>" onclick="cart.add('<?php echo $product['product_id']; ?>');"><span><span><?php echo $button_cart; ?></span></span></button>
											<button class="wishlist_button" type="button" title="<?php echo $button_wishlist; ?>" onclick="wishlist.add('<?php echo $product['product_id']; ?>');"><i class="fa fa-heart-o"></i></button>
											<button class="compare_button" type="button" title="<?php echo $button_compare; ?>" onclick="compare.add('<?php echo $product['product_id']; ?>');"><i class="fa fa-clone"></i></button>
											
											</div>
											</div>
										</div>
										<div class="caption">
										<div class="rating">
													<?php for ($i = 1; $i <= 5; $i++) { ?>
														<?php if ($product['rating'] < $i) { ?>
															<span class="fa fa-stack"><i class="fa fa-star fa-stack-1x"></i></span>
														<?php } else { ?>
														<span class="fa fa-stack"><i class="fa fa-star fa-stack-1x"></i><i class="fa fa-star fa-stack-1x"></i></span>
														<?php } ?>
													<?php } ?>
													</div>
										<h4><a href="<?php echo $product['href']; ?>"><?php echo $product['name']; ?></a></h4>
										<?php if ($product['price']) { ?>
												<p class="price">
												  <?php if (!$product['special']) { ?>
												  <?php echo $product['price']; ?>
												  <?php } else { ?>
												  <span class="price-new"><?php echo $product['special']; ?></span><span class="price-old"><?php echo $product['price']; ?></span> 
												  <?php } ?>
												  <?php if ($product['tax']) { ?>
												  <span class="price-tax"><?php echo $text_tax; ?> <?php echo $product['tax']; ?></span>
												  <?php } ?>
												</p>
											<?php } ?>
										</div>
										
									</div>
								</div>
							<?php if ($productCount >= $sliderFor){?>
								<?php if($productCount > 8 && $temp % 2 != 0) { ?>
								</div>
								</div>
								<?php } else if($productCount <= 8) { ?>
								</div>
								<?php } $temp++; ?>
							<?php } else {?>
								</div>
							<?php } ?>

						<?php } ?>
						
						<?php if($productCount > 8 && $temp % 2 != 0) {?>
							</div>
							</div>
						<?php }?>
					</div>
					<?php if ($productCount >= $sliderFor): ?>
						<div class="customNavigation">
							<a class="btn prev">prev</a>
							<a class="btn next">next</a>
						</div>	
					<?php endif; ?>	
				</div>
			 </div>
		 <span class="tabbestseller_default_width" style="display:none; visibility:hidden"></span> 
 </div>
<?php } ?>
<?php if($specialproducts){ ?>
 <div id="tab-special" class="tab-content">
    	 <div class="box">
				<div class="box-content">
					<?php 
						$sliderFor = 5;
						$productCount = sizeof($specialproducts); 
					?>
					
					<div class="box-product <?php if ($productCount >= $sliderFor){?>product-carousel<?php }else{?>productbox-grid<?php }?>" id="<?php if ($productCount >= $sliderFor){?>tabspecial-carousel<?php }else{?>tabspecial-grid<?php }?>">
						
						<?php $temp3=0; ?> 

						<?php foreach ($specialproducts as $product) { ?>
							
							<?php if ($productCount >= $sliderFor){?>
								<?php if($productCount > 8 && $temp3 % 2 == 0) { ?>
								<div class="slider-item">
									<div>
								<?php } else if($productCount <= 8) { ?>
								<div class="slider-item">
								<?php } ?>
							<?php } else {?>
							<div class="product-items">
							<?php } ?>

								<div class="product-block product-thumb transition">
									<div class="product-block-inner">
										<div class="product-image-block-inner">
										<?php if ($product['thumb_swap']) { ?>
      										<div class="image">
											<a href="<?php echo $product['href']; ?>">
											<img src="<?php echo $product['thumb']; ?>" title="<?php echo $product['name']; ?>" alt="<?php echo $product['name']; ?>" class="img-responsive"/>
											<img class="img-responsive hover-image" src="<?php echo $product['thumb_swap']; ?>" alt="<?php echo $product['name']; ?>"/>
											</a>
											<?php if (!$product['special']) { ?>       
											<?php } else { ?>
												<span class="saleicon sale">Sale</span>         
											<?php } ?>
											</div>

          									<?php } else {?>
     									 <div class="image">
										 <a href="<?php echo $product['href']; ?>">
										 <img src="<?php echo $product['thumb']; ?>" title="<?php echo $product['name']; ?>" alt="<?php echo $product['name']; ?>" class="img-responsive"/></a>
										 <?php if (!$product['special']) { ?>       
											<?php } else { ?>
												<span class="saleicon sale">Sale</span>         
											<?php } ?>
										 </div>

      									<?php } ?>
										<div class="product_hover_block">
											<div class="action">
											<button class="cart_button" type="button" data-toggle="tooltip" title="<?php echo $button_cart; ?>" onclick="cart.add('<?php echo $product['product_id']; ?>');"><span><span><?php echo $button_cart; ?></span></span></button>
											<button class="wishlist_button" type="button" title="<?php echo $button_wishlist; ?>" onclick="wishlist.add('<?php echo $product['product_id']; ?>');"><i class="fa fa-heart-o"></i></button>
											<button class="compare_button" type="button" title="<?php echo $button_compare; ?>" onclick="compare.add('<?php echo $product['product_id']; ?>');"><i class="fa fa-clone"></i></button>
											
											</div>
											</div>
										</div>
										<div class="caption">
										<div class="rating">
													<?php for ($i = 1; $i <= 5; $i++) { ?>
														<?php if ($product['rating'] < $i) { ?>
															<span class="fa fa-stack"><i class="fa fa-star fa-stack-1x"></i></span>
														<?php } else { ?>
														<span class="fa fa-stack"><i class="fa fa-star fa-stack-1x"></i><i class="fa fa-star fa-stack-1x"></i></span>
														<?php } ?>
													<?php } ?>
													</div>
										<h4><a href="<?php echo $product['href']; ?>"><?php echo $product['name']; ?></a></h4>
										<?php if ($product['price']) { ?>
												<p class="price">
												  <?php if (!$product['special']) { ?>
												  <?php echo $product['price']; ?>
												  <?php } else { ?>
												  <span class="price-new"><?php echo $product['special']; ?></span><span class="price-old"><?php echo $product['price']; ?></span> 
												  <?php } ?>
												  <?php if ($product['tax']) { ?>
												  <span class="price-tax"><?php echo $text_tax; ?> <?php echo $product['tax']; ?></span>
												  <?php } ?>
												</p>
											<?php } ?>
										</div>
										
									</div>
								</div>
							
							<?php if ($productCount >= $sliderFor){?>
								<?php if($productCount > 8 && $temp3 % 2 != 0) { ?>
								</div>
								</div>
								<?php } else if($productCount <= 8) { ?>
								</div>
								<?php } $temp3++; ?>
							<?php } else {?>
								</div>
							<?php } ?>

						<?php } ?>

						<?php if($productCount > 8 && $temp3 % 2 != 0) {?>
							</div>
							</div>
						<?php }?>
					</div>
					<?php if ($productCount >= $sliderFor): ?>
						<div class="customNavigation">
							<a class="btn prev">prev</a>
							<a class="btn next">next</a>
						</div>	
					<?php endif; ?>	
				</div>
			 </div>
		 <span class="tabspecial_default_width" style="display:none; visibility:hidden"></span> 
 </div>
<?php } ?>

</div>
<script type="text/javascript">
$('#tabs a').tabs();
</script> 
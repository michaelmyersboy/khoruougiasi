<?php
/**
 * The template for displaying product content in the single-product.php template
 *
 * This template can be overridden by copying it to yourtheme/woocommerce/content-single-product.php.
 *
 * HOWEVER, on occasion WooCommerce will need to update template files and you
 * (the theme developer) will need to copy the new files to your theme to
 * maintain compatibility. We try to do this as little as possible, but it does
 * happen. When this occurs the version of the template file will be bumped and
 * the readme will list any important changes.
 *
 * @see     https://docs.woocommerce.com/document/template-structure/
 * @package WooCommerce/Templates
 * @version 3.4.0
 */

defined( 'ABSPATH' ) || exit;

/**
 * Hook: woocommerce_before_single_product.
 *
 * @hooked wc_print_notices - 10
 */
do_action( 'woocommerce_before_single_product' );
global $product;
if ( post_password_required() ) {
	echo get_the_password_form(); // WPCS: XSS ok.
	return;
}
?>
<section class="bg-fbf9f2 product_details">
	<div class="container">
		<div class="title-group underline-double">
			<h5 class="sub-title">Royal wine</h5>
			<h2 class="selected">Product Details</h2>
			<p class="line-mix star-group">
				<i class="fa fa-star"></i>
				<i class="fa fa-star"></i>
				<i class="fa fa-star"></i>
			</p>
		</div>
		<div class="row">
			<div class="col-sm-6 text-center">
				<div class="img-lager">
					  <?php echo get_the_post_thumbnail( get_the_id(), 'full', array( 'class' =>'thumnail','alt'=>'image') ); ?>
				</div>
			</div>
			<div class="col-sm-6">
				<div class="box p-40">
					<p></p>
					<p></p>
					<h1 class="f-30 p-t-0"><?php the_title(); ?></h1>
					<p><?php echo substr(get_the_excerpt(),0,38).' ...'; ?></p>
					<ul class="list list-border">
						<li class="color-9"><p class="price f-40"><?php echo wc_price($product->get_price()); ?></p>
							<?php if($product->regular_price!=0):?>
								<?php
									$percent = ($product->price * 100)/$product->regular_price;
								?>
										Old price: <?php echo wc_price($product->get_regular_price()); ?> (-<?php echo $percent; ?>%)
							<?php endif; ?>
						</li>
						<?php
							echo wc_display_product_attributes($product);
						?>
						<li><b class="d-inline-block w-100">Quantity:</b><input type="text" class="form-item w-120" id="quantity" value="1" pattern= "[1-9]"></li>
					</ul>
					<a rel="nofollow" href="/?add-to-cart=<?php echo get_the_id(); ?>" class="button product_type_simple add_to_cart_button ajax_add_to_cart ht-btn bg-dc4c46"
						 data-product_id="<?php echo get_the_id(); ?>" id="addToCart">Add to Cart</a>
						 <script type="text/javascript">
						 (function($){
							 $(document).ready(function(){
								 $('#quantity').keyup( function() {
									 this.value = this.value.replace(/[^0-9]/g, '');
									 if(Number(this.value) >  1){
									 		$('#addToCart').attr('href',"/?add-to-cart=<?php echo get_the_id(); ?>&quantity="+this.value);
								 		}
								 });
							 });
						 })(jQuery);
						 </script>
				</div>
			</div>
		</div>
		<div class="m-t-30">
			<h3 class="line-default">DESCTIPTION</h3>
			<div class="box p-30"><div><?php echo get_post_field('post_content', get_the_id()); ?></div>
		</div>
		<div class="m-t-60">
			<div class="title-group">
				<h5 class="sub-title">Royal wine</h5>
				<h2>Related product</h2>
				<p class="line-mix star-group">
					<i class="fa fa-star"></i>
					<i class="fa fa-star"></i>
					<i class="fa fa-star"></i>
				</p>
			</div>
			<div class="row">
				<?php
					if( ! is_a( $product, 'WC_Product' ) ){
				    $product = wc_get_product(get_the_id());
					}

					woocommerce_related_products( array(
					    'posts_per_page' => 4,
					    'columns'        => 4,
					    'orderby'        => 'rand'
					) ) ;

				?>
			</div>
		</div>
	</div>
</section>

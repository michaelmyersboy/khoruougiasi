<?php
/**
 * Single Product Price
 *
 * This template can be overridden by copying it to yourtheme/woocommerce/single-product/price.php.
 *
 * HOWEVER, on occasion WooCommerce will need to update template files and you
 * (the theme developer) will need to copy the new files to your theme to
 * maintain compatibility. We try to do this as little as possible, but it does
 * happen. When this occurs the version of the template file will be bumped and
 * the readme will list any important changes.
 *
 * @see     https://docs.woocommerce.com/document/template-structure/
 * @author  WooThemes
 * @package WooCommerce/Templates
 * @version 3.0.0
 */

if ( ! defined( 'ABSPATH' ) ) {
	exit; // Exit if accessed directly
}

global $product;
?>
<li class="color-9"><p class="price f-40"><?php echo wc_price($product->get_price()); ?></p>
	<?php
		if($product->regular_price!=0):
			$percent = round( 100 - ( ($product->price * 100)/$product->regular_price ),2);
		?>
			<span class="old_price">Old price: <?php echo wc_price($product->regular_price); ?> (-<?php echo $percent; ?>%)</span>
			<?php endif; ?>

</li>
<?php echo wc_display_product_attributes($product);?>

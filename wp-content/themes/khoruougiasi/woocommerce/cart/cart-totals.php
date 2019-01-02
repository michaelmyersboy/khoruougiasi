<?php
/**
 * Cart totals
 *
 * This template can be overridden by copying it to yourtheme/woocommerce/cart/cart-totals.php.
 *
 * HOWEVER, on occasion WooCommerce will need to update template files and you
 * (the theme developer) will need to copy the new files to your theme to
 * maintain compatibility. We try to do this as little as possible, but it does
 * happen. When this occurs the version of the template file will be bumped and
 * the readme will list any important changes.
 *
 * @see 	    https://docs.woocommerce.com/document/template-structure/
 * @author 		WooThemes
 * @package 	WooCommerce/Templates
 * @version     2.3.6
 */

if ( ! defined( 'ABSPATH' ) ) {
	exit;
}

?>
<?php do_action( 'woocommerce_before_cart_totals' ); ?>
<h3 class="title line-default cart-page-title"><?php _e( 'Total', 'woocommerce' ); ?>:<?php wc_cart_totals_order_total_html(); ?></h3>
<ul class="list list-border m-b-10 cart-page-ul">
    <li><b class="d-inline-block w-120"><?php _e( 'Subtotal', 'woocommerce' ); ?>:</b><?php wc_cart_totals_subtotal_html(); ?></li>
    <li> <?php if ( WC()->cart->needs_shipping() && WC()->cart->show_shipping() ) : ?>
            <?php wc_cart_totals_shipping_html(); ?>
        <?php elseif ( WC()->cart->needs_shipping() && 'yes' === get_option( 'woocommerce_enable_shipping_calc' ) ) : ?>
            <?php _e( 'Shipping', 'woocommerce' ); ?>
            <?php woocommerce_shipping_calculator(); ?>
        <?php endif; ?>
    </li>
</ul>


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
<div class="cart_totals <?php echo ( WC()->customer->has_calculated_shipping() ) ? 'calculated_shipping' : ''; ?>">

	<?php do_action( 'woocommerce_before_cart_totals' ); ?>
	<h3 class="title line-default cart-page-title"><?php _e( 'Total', 'woocommerce' ); ?>:<?php wc_cart_totals_order_total_html(); ?></h3>
	<ul class="list list-border m-b-10 cart-page-ul">
			<li><b class="d-inline-block w-120"><?php _e( 'Subtotal', 'woocommerce' ); ?>:</b><?php echo  WC()->cart->get_cart_subtotal(); ?></li>
			<?php if ( count(WC()->cart->get_coupons()) > 0 ) :?>
			<li><b style="width:40%;">Coupon code:</b>
						<table class="cart_ul_children ul_coupon">
						<?php foreach ( WC()->cart->get_coupons() as $code => $coupon ) : ?>
									<tr>
										 <td><?php echo $coupon->code; ?></td>
										 <td>
											 <?php
											    if($coupon->discount_type=='percent'){
															echo '-'.$coupon->amount.'%';
													}
													else{
											  		echo '-'.wc_price($coupon->amount).'';
													}
												?>
										 </td>
										 <td><a href="<?php echo get_site_url(); ?>cart/?remove_coupon=<?php echo $coupon->code ?>" class="woocommerce-remove-coupon" data-coupon="<?php echo $coupon->code ?>"><i class="fa fa-remove"></i></a></td>
									<tr>
						<?php endforeach; ?>
						</table>
			</li>
		 <?php endif; ?>
			<?php foreach ( WC()->cart->get_fees() as $fee ) : ?>
				<li class="fee">
					<b><?php echo esc_html( $fee->name ); ?></b><?php wc_cart_totals_fee_html( $fee ); ?>
				</li>
			<?php endforeach; ?>
		  <?php if ( WC()->cart->needs_shipping() && WC()->cart->show_shipping() ) : ?>
			 	<li class="wc_cart_totals_shipping_html">
	            <?php wc_cart_totals_shipping_html(); ?>
	        		<?php elseif ( WC()->cart->needs_shipping() && 'yes' === get_option( 'woocommerce_enable_shipping_calc' ) ) : ?>
	            <?php woocommerce_shipping_calculator(); ?>
				</li>
      <?php endif; ?>

			<?php if ( wc_tax_enabled() && ! WC()->cart->display_prices_including_tax() ) :
				$taxable_address = WC()->customer->get_taxable_address();
				$estimated_text  = WC()->customer->is_customer_outside_base() && ! WC()->customer->has_calculated_shipping()
						? sprintf( ' <small>' . __( '(estimated for %s)', 'woocommerce' ) . '</small>', WC()->countries->estimated_for_prefix( $taxable_address[0] ) . WC()->countries->countries[ $taxable_address[0] ] )
						: '';
				if ( 'itemized' === get_option( 'woocommerce_tax_total_display' ) ) : ?>
					<?php foreach ( WC()->cart->get_tax_totals() as $code => $tax ) : ?>
						<li class="tax-rate tax-rate-<?php echo sanitize_title( $code ); ?>">
							<b><?php echo esc_html( $tax->label ) . $estimated_text; ?></b><?php echo wp_kses_post( $tax->formatted_amount ); ?>
						</li>
					<?php endforeach; ?>
				<?php else : ?>
					<li class="tax-total">
						<b><?php echo esc_html( WC()->countries->tax_or_vat() ) . $estimated_text; ?></b><?php wc_cart_totals_taxes_total_html(); ?>
					</li>
				<?php endif; ?>
			<?php endif; ?>
	</ul>
	<p class="cart-total"><b class="color-3 d-inline-block w-120">Total:</b><?php wc_cart_totals_order_total_html(); ?></p>
	<?php do_action( 'woocommerce_proceed_to_checkout' ); ?>
	<?php do_action( 'woocommerce_after_cart_totals' ); ?>
	<?php do_action( 'woocommerce_cart_totals_after_order_total' ); ?>

</div>

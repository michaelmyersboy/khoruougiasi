<?php
/**
 * Checkout shipping information form
 *
 * This template can be overridden by copying it to yourtheme/woocommerce/checkout/form-shipping.php.
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
 * @version 3.0.9
 */

if ( ! defined( 'ABSPATH' ) ) {
	exit; // Exit if accessed directly
}

?>
<div class="woocommerce-shipping-fields panel panel-default">
	<?php if ( true === WC()->cart->needs_shipping_address() ) : ?>
		<div class="panel-heading">
			<h4 class="panel-title" id="ship-to-different-address"><a id="shipping_details_button"href="#shipping_details" data-toggle="collapse" data-parent="#accordion" class="accordion-toggle collapsed" aria-expanded="false"><?php _e( 'Ship to a different address', 'woocommerce' ); ?></a>
				<input id="ship-to-different-address-checkbox" class="woocommerce-form__input woocommerce-form__input-checkbox input-checkbox" <?php checked( apply_filters( 'woocommerce_ship_to_different_address_checked', 'shipping' === get_option( 'woocommerce_ship_to_destination' ) ? 1 : 0 ), 1 ); ?> type="checkbox" name="ship_to_different_address" value="1" /></h4>
		</div>
		<div id="#shipping_details" class="shipping_address panel-collapse collapse" role="tabpanel" aria-expanded="false" >
			<div class="panel-body form-horizontal">
			<?php do_action( 'woocommerce_before_checkout_shipping_form', $checkout ); ?>
				<?php
					$fields = $checkout->get_checkout_fields( 'shipping' );

					foreach ( $fields as $key => $field ) {
						if ( isset( $field['country_field'], $fields[ $field['country_field'] ] ) ) {
							$field['country'] = $checkout->get_value( $field['country_field'] );
						}
						woocommerce_form_field_custom( $key, $field, $checkout->get_value( $key ) );
					}
				?>
			<?php do_action( 'woocommerce_after_checkout_shipping_form', $checkout ); ?>
			<script type="text/javascript">
			(function($){
				$(document).ready(function(){
					$("#ship-to-different-address input").on('click',function(){
						var checkbox= $(this).val();
						console.log(checkbox);
						$("#shipping_details_button").toggleClass('collapsed');
					});
				});
			})(jQuery);
			</script>
		</div>
	</div>
	<?php endif; ?>

</div>
<div class="woocommerce-additional-fields panel panel-default"  >
			<?php do_action( 'woocommerce_before_order_notes', $checkout ); ?>
			<?php if ( apply_filters( 'woocommerce_enable_order_notes_field', 'yes' === get_option( 'woocommerce_enable_order_comments', 'yes' ) ) ) : ?>
				<?php if ( ! WC()->cart->needs_shipping() || wc_ship_to_billing_address_only() ) { ?>
					<div class="panel-heading">
						<h4 class="panel-title"><a href="#woocommerce_order_notes" data-toggle="collapse" data-parent="#accordion" class="accordion-toggle collapsed" aria-expanded="false"><?php _e( 'Additional information', 'woocommerce' ); ?></a></h4>
					</div>
				<?php }else{ ?>
				<div class="panel-heading">
					<h4 class="panel-title"><a href="#woocommerce_order_notes" data-toggle="collapse" data-parent="#accordion" class="accordion-toggle collapsed" aria-expanded="false"><?php _e( 'Order note', 'woocommerce' ); ?></a></h4>
				</div>
				<?php }?>
				<div class="woocommerce-additional-fields__field-wrapper panel-collapse collapse" id="woocommerce_order_notes"  role="tabpanel" aria-expanded="false">
					<div class="panel-body form-horizontal">
					<?php foreach ( $checkout->get_checkout_fields( 'order' ) as $key => $field ) : ?>
						<?php woocommerce_form_field( $key, $field, $checkout->get_value( $key ) ); ?>
					<?php endforeach; ?>
					</div>
				</div>
			<?php endif; ?>
			<?php do_action( 'woocommerce_after_order_notes', $checkout ); ?>
	</div>
</div>

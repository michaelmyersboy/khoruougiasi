<?php
/**
 * Cart Page
 *
 * This template can be overridden by copying it to yourtheme/woocommerce/cart/cart.php.
 *
 * HOWEVER, on occasion WooCommerce will need to update template files and you
 * (the theme developer) will need to copy the new files to your theme to
 * maintain compatibility. We try to do this as little as possible, but it does
 * happen. When this occurs the version of the template file will be bumped and
 * the readme will list any important changes.
 *
 * @see     https://docs.woocommerce.com/document/template-structure/
 * @package WooCommerce/Templates
 * @version 3.5.0
 */

defined( 'ABSPATH' ) || exit;

do_action( 'woocommerce_before_cart' ); ?>

<form class="woocommerce-cart-form" action="<?php echo esc_url( wc_get_cart_url() ); ?>" method="post">
	<?php do_action( 'woocommerce_before_cart_table' ); ?>


    <div class="col-sm-8">
        <div class="over-x-auto">
            <div class="responsive_grid">
                <div class="row grid-table-heading">
                    <div class="col-xs-2 grid-item"></div>
                    <div class="col-xs-5 grid-item"><b><?php esc_html_e( 'Product name', 'woocommerce' ); ?></b></div>
                    <div class="col-xs-2 grid-item"><b><?php esc_html_e( 'Quantity', 'woocommerce' ); ?></b></div>
                    <div class="col-xs-2 grid-item"><b><?php esc_html_e( 'Price', 'woocommerce' ); ?></b></div>
                </div>
                <?php do_action( 'woocommerce_before_cart_contents' ); ?>

                <?php
                foreach ( WC()->cart->get_cart() as $cart_item_key => $cart_item ) {
                $_product   = apply_filters( 'woocommerce_cart_item_product', $cart_item['data'], $cart_item, $cart_item_key );
                $product_id = apply_filters( 'woocommerce_cart_item_product_id', $cart_item['product_id'], $cart_item, $cart_item_key );

                if ( $_product && $_product->exists() && $cart_item['quantity'] > 0 && apply_filters( 'woocommerce_cart_item_visible', true, $cart_item, $cart_item_key ) ) {
                $product_permalink = apply_filters( 'woocommerce_cart_item_permalink', $_product->is_visible() ? $_product->get_permalink( $cart_item ) : '', $cart_item, $cart_item_key );
                ?>
                <div class="row grid-table">
                    <div class="col-xs-2 grid-item img">
                        <?php
                        $thumbnail = apply_filters( 'woocommerce_cart_item_thumbnail', $_product->get_image(), $cart_item, $cart_item_key );

                        if ( ! $product_permalink ) {
                            echo $thumbnail; // PHPCS: XSS ok.
                        } else {
                            printf( '<a href="%s">%s</a>', esc_url( $product_permalink ), $thumbnail );
                        }
                        ?>
                    </div>
                    <div class="col-xs-5 grid-item"><h3>
                        <?php
						if ( ! $product_permalink ) {
							echo wp_kses_post( apply_filters( 'woocommerce_cart_item_name', $_product->get_name(), $cart_item, $cart_item_key ) . '&nbsp;' );
						} else {
							echo wp_kses_post( apply_filters( 'woocommerce_cart_item_name', sprintf( '<a href="%s">%s</a>', esc_url( $product_permalink ), $_product->get_name() ), $cart_item, $cart_item_key ) );
						}

						do_action( 'woocommerce_after_cart_item_name', $cart_item, $cart_item_key );
                        ?></h3>
                        <p class="ml">Code:<?php echo esc_attr( $_product->get_sku()); ?></p>
                    </div>
                    <div class="col-xs-2 grid-item">
                        <?php
                        if ( $_product->is_sold_individually() ) {
                            $product_quantity = sprintf( '1 <input type="hidden" name="cart[%s][qty]" value="1" class="form-item" />', $cart_item_key );
                        } else {
                            $product_quantity = woocommerce_quantity_input( array(
                                'input_name'   => "cart[{$cart_item_key}][qty]",
                                'input_value'  => $cart_item['quantity'],
                                'max_value'    => $_product->get_max_purchase_quantity(),
                                'min_value'    => '0',
                                'product_name' => $_product->get_name(),
                            ), $_product, false );
                        }

                        echo apply_filters( 'woocommerce_cart_item_quantity', $product_quantity, $cart_item_key, $cart_item ); // PHPCS: XSS ok.
                        ?>
                    </div>
                    <div class="col-xs-2 grid-item">
                        <b>
                            <?php
                            echo apply_filters( 'woocommerce_cart_item_price', WC()->cart->get_product_price( $_product ), $cart_item, $cart_item_key ); // PHPCS: XSS ok.
                            ?>
                        </b>
                    </div>
                    <div class="col-sm-1 grid-item text-center">
                        <?php
                        // @codingStandardsIgnoreLine
                        echo apply_filters( 'woocommerce_cart_item_remove_link', sprintf(
                            '<a href="%s" class="remove" aria-label="%s" data-product_id="%s" data-product_sku="%s"> <i class="fa fa-remove"></i></a>',
                            esc_url( wc_get_cart_remove_url( $cart_item_key ) ),
                            __( 'Remove this item', 'woocommerce' ),
                            esc_attr( $product_id ),
                            esc_attr( $_product->get_sku() )
                        ), $cart_item_key );
                        ?>
                    </div>
                </div>
                    <?php
                    }
                }
                ?>
            </div>
        </div>
    </div>
    <div class="col-sm-4">
        <?php if ( wc_coupons_enabled() ) { ?>
        <div class="box">
            <h3 class="title line-default">Discount code</h3>
            <p>Enter a coupon code below to apply to this order</p>
            <input type="text" name="coupon_code" class="form-item" id="coupon_code" value="" placeholder="<?php esc_attr_e( 'Code', 'woocommerce' ); ?>" />
            <a type="submit" class="ht-btn bg-4" name="apply_coupon" value="<?php esc_attr_e( 'Apply', 'woocommerce' ); ?>"><?php esc_attr_e( 'Apply coupon', 'woocommerce' ); ?></a>
            <?php do_action( 'woocommerce_cart_coupon' ); ?>
        </div>
        <?php }?>
        <div class="box">
            <?php
            /**
             * Cart collaterals hook.
             *
             * @hooked woocommerce_cross_sell_display
             * @hooked woocommerce_cart_totals - 10
             */
            do_action( 'woocommerce_cart_collaterals' );
            ?>
        </div>
    </div>
</form>


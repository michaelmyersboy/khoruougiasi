<?php

function feature_product_custom( $atts ) {
    $slugs=($atts['slug']!=null)?explode(',',$atts['slug']):array();
    echo '<div class="ht-tabs ht-tabs-product">';
    echo '<ul class="nav nav-tabs" >';
    for($i=0;$i<count($slugs);$i++){
        $cat=get_term_by('slug', $slugs[$i], 'product_cat');
        if(!empty($cat)) {
            if ($i == 0) {
                echo '<li  class="active"><a href="#tab-' . $slugs[$i] . '" aria-controls="tab-' . $slugs[$i] . '" role="tab" data-toggle="tab" >' . $cat->name . '</a></li>';
            } else {
                echo '<li ><a href="#tab-' . $slugs[$i] . '" aria-controls="tab-' . $slugs[$i] . '" role="tab" data-toggle="tab">' . $cat->name . '</a></li>';
            }
        }

    }
    echo '</ul>';
    echo '<div class="tab-content">';
    for($i=0;$i<count($slugs);$i++){
        $args = array( 'post_type' => 'product','posts_per_page' =>6, 'product_cat' => $slugs[$i]);
        $loop = new WP_Query( $args );
        if ( $loop->have_posts() ) {
            if($i==0) {
                echo '<div role="tabpanel" class="tab-pane active" id="tab-' . $slugs[$i] . '"><div class="row">';
            }
            else{
                echo '<div role="tabpanel" class="tab-pane" id="tab-' . $slugs[$i] . '"><div class="row">';
            }
            while ( $loop->have_posts() ) : $loop->the_post();
                wc_get_template_part( 'content', 'product' );
                //echo "cau";
            endwhile;
            echo '</div></div>';
        } else {
            echo __( 'No products found' );
        }
        wp_reset_postdata();

    }
    echo '</div>';
}
add_shortcode( 'feature_product_custom', 'feature_product_custom' );
add_filter( 'woocommerce_add_to_cart_fragments', 'woocommerce_header_add_to_cart_fragment' );
function woocommerce_header_add_to_cart_fragment( $fragments ) {
    global $woocommerce;

    ob_start();

    ?>
    <a href="#" class="cart-customlocation cart-item dropdown-toggle" id="dropdownMenu2" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
        <span><?php echo  $woocommerce->cart->cart_contents_count?></span>
        <i class="fa fa-shopping-bag"></i>
    </a>
    <?php
    $fragments['a.cart-customlocation'] = ob_get_clean();
    return $fragments;
}
remove_action('woocommerce_cart_collaterals','woocommerce_cross_sell_display');
remove_action('woocommerce_before_shop_loop','woocommerce_result_count',20);

function woocommerce_button_proceed_to_checkout() {
    $checkout_url = WC()->cart->get_checkout_url(); ?>
    <a href="<?php echo esc_url( wc_get_checkout_url() );?>" class="checkout-button alt wc-forward ht-btn bg-dc4c46">Check Out
    </a>
    <a href="<?php echo esc_url( get_permalink( woocommerce_get_page_id( 'shop' ) ) );?>" class="checkout-button alt wc-forward ht-btn bg-2 m-t-20">Continue Shopping
    </a>
    <?php
}

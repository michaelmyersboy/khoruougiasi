<?php
/**
 * The template for displaying product content within loops
 *
 * This template can be overridden by copying it to yourtheme/woocommerce/content-product.php.
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

global $product;

// Ensure visibility.
if ( empty( $product ) || ! $product->is_visible() ) {
    return;
}
?>
<div class="box-item">
  <div class="row">
    <div class="col-sm-4">
      <a href="<?php echo get_the_post_thumbnail_url(get_the_id(), 'full'); ?>" class="img hover-img image-zoom">
      <?php echo get_the_post_thumbnail( get_the_id(), 'medium', array( 'class' =>'thumnail','alt'=>'image') ); ?>
        <div class="hover-caption">
          <i class="fa fa-search-plus"></i>
        </div>
      </a>
    </div>
    <div class="col-sm-8">
      <div class="caption text-left p-0">
        <h3 class="heading"><a href="<?php the_permalink(); ?>"><?php the_title(); ?></a></h3>
        <p class="price"><?php echo wc_price($product->get_price()); ?></p>
        <p><?php echo substr(get_the_excerpt(),0,38).' ...'; ?></p>
        <div class="rating">
            <?php
            $rating_count = $product->get_rating_count();
            $rating_not_active= 5-$rating_count;
            if($rating_not_active == 5){
                echo '<i class="fa fa-star"></i>
                <i class="fa fa-star"></i>
                <i class="fa fa-star"></i>
                <i class="fa fa-star"></i>
                <i class="fa fa-star"></i>';
            }
            else {
                for ($i=1;$i<=$rating_count;$i++){
                    echo '<i class="fa fa-star active"></i>';
                }
                for ($i=1;$i<=$rating_not_active;$i++){
                    echo '<i class="fa fa-star"></i>';
                }

            }
            ?>
        </div>
        <div class="no_show_view_cart">
            <a rel="nofollow" href="/?add-to-cart==<?php echo get_the_id(); ?>" class="button product_type_simple add_to_cart_button ajax_add_to_cart ht-btn"
               data-product_id="<?php echo get_the_id(); ?>">Add to Cart</a>
        </div>
        <br>
      </div>
    </div>
  </div>
</div>

<?php
/**
 * The Template for displaying product archives, including the main shop page which is a post type archive
 *
 * This template can be overridden by copying it to yourtheme/woocommerce/archive-product.php.
 *
 * HOWEVER, on occasion WooCommerce will need to update template files and you
 * (the theme developer) will need to copy the new files to your theme to
 * maintain compatibility. We try to do this as little as possible, but it does
 * happen. When this occurs the version of the template file will be bumped and
 * the readme will list any important changes.
 *
 * @see https://docs.woocommerce.com/document/template-structure/
 * @package WooCommerce/Templates
 * @version 3.4.0
 */

defined( 'ABSPATH' ) || exit;

get_header( 'shop' );

/**
 * Hook: woocommerce_before_main_content.
 *
 * @hooked woocommerce_output_content_wrapper - 10 (outputs opening divs for the content)
 * @hooked woocommerce_breadcrumb - 20
 * @hooked WC_Structured_Data::generate_website_data() - 30
 */
do_action( 'woocommerce_before_main_content' );

?>
<section class="bg-fbf9f2">
	<div class="container">
		<div class="content">
			<div class="title-group underline-double">
				<?php if(get_field('minium_title')):?>
					<h5 class="sub-title"><?php echo get_field('minium_title'); ?></h5>
			  <?php endif; ?>
				<?php if(get_field('title_custom')):?>
					<h2 class="selected"><?php echo get_field('title_custom'); ?></h2>
				<?php endif; ?>
				<p class="line-mix star-group">
					<i class="fa fa-star"></i>
					<i class="fa fa-star"></i>
					<i class="fa fa-star"></i>
				</p>
			</div>
			<div class="row">
				<div class="col-sm-4 col-md-3">
					<div class="box">
						<h3 class="title line-default">Categories</h3>
						<?php
								$orderby = 'name';
								$order = 'asc';
								$hide_empty = false ;
								$cat_args = array(
									'orderby'    => $orderby,
									'order'      => $order,
									'hide_empty' => $hide_empty,
								);
								$product_categories = get_terms( 'product_cat', $cat_args );
								if( !empty($product_categories) ){ ?>
								<ul class="list list-border">
									<?php foreach ($product_categories as $key => $category) :	?>
											<li><a href="<?php echo get_term_link($category);?>"><?php echo  $category->name; ?></a></li>
									<?php endforeach;	?>
								</ul>
								<?php }	?>
					</div>
					<div class="box widget_product_list">
						<h3 class="title line-default">Search</h3>
						<ul class="list list-border">
							<?php dynamic_sidebar('widget_product_list')  ?>
						</ul>
					</div>
				</div>
				<?php if ( woocommerce_product_loop() )	{ ?>
				<div class="col-sm-8 col-md-9">
					<div class="row">
						<div class="col-xs-6 col-sm-4">
							<div class="iconc" onclick="showLayout('1')"><i class="fa fa-th"></i></div>
							<div class="iconc" onclick="showLayout('2')"><i class="fa fa-list"></i></div>
						</div>
						<div class="col-xs-6 col-sm-4 pull-right">
							<?php do_action( 'woocommerce_before_shop_loop' ); ?>
						</div>
					</div>
					<div class="row">
						<?php
									woocommerce_product_loop_start();
									if ( wc_get_loop_prop( 'total' ) )
									{?>
										<div id="layout1">
									<?php	while ( have_posts() )
											{
												the_post();
												do_action( 'woocommerce_shop_loop' );
												wc_get_template_part( 'content', 'productList' );
											}?>
										</div>
										<div id="layout2" class="hidden">
									<?php	while ( have_posts() )
											{
												the_post();
												do_action( 'woocommerce_shop_loop' );
												wc_get_template_part( 'content', 'product' );
											}?>
										</div>
									<?php
									}
									woocommerce_product_loop_end();
									do_action( 'woocommerce_after_shop_loop' );
						?>
					</div>
				</div>
				<?php
					}
					else
					{
						 do_action( 'woocommerce_no_products_found' );
					}
				?>
			</div>
		</div>
	</div>
</section>
<script type="text/javascript">
	function showLayout(current,layou1Id,layout2Id){
		if(current === '1'){
			$("#layout2").addClass('hidden');
			$("#layout1").removeClass('hidden');
		}
		if(current === '2'){		
			$("#layout2").removeClass('hidden');
			$("#layout1").addClass('hidden');
		}
	}
</script>
<?php
do_action( 'woocommerce_after_main_content' );
get_footer( 'shop' );

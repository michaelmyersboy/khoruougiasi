<?php

get_header(); ?>
<section class="bg-fbf9f2">
	<div class="container">
		<div class="content">
			<div class="title-group underline-double">
				<h5 class="sub-title">Royal wine</h5>
				<h2 class="selected">Our Blog</h2>
				<p class="line-mix star-group">
					<i class="fa fa-star"></i>
					<i class="fa fa-star"></i>
					<i class="fa fa-star"></i>
				</p>
			</div>
			<div class="row">
				<div class="col-sm-8 category-content"><!--Blog item--><!--Blog item-->
					<?php
						global $wp_query;
						$big = 999999999;
						$paged = ( get_query_var( 'paged' ) ) ? absint( get_query_var( 'paged' ) ) : 1;
						$tagd = ( get_query_var( 'tag' ) ) ? get_query_var( 'tag' ) : '';
						$category = get_the_category();
							$catId = $category[0]->term_id;
						$args = array(
							'posts_per_page' => get_option('posts_per_page'),
							'category_name' => $category[0]->slug,
							'paged' => $paged,
							'tag'=>$tagd
						);
						 $the_query = new WP_Query( $args );
						 if ( $the_query->have_posts() ) :
							 while ( $the_query->have_posts() ) : $the_query->the_post();
							 global $post;
							 $author_id=$post->post_author;
						 ?>
								<div class="box-item">
									<?php echo get_the_post_thumbnail( get_the_id(), 'full', array( 'class' =>'thumnail','alt'=>'image') ); ?>
									<div class="caption text-left">
										<h2 class="heading"><a href="<?php echo get_the_permalink()?>" class="f-30"><?php echo get_the_title();?></a></h2>
										<ul class="post-date">
											<li>By <a href="<?php echo  get_author_posts_url($author_id);?>"><?php echo  get_the_author(get_the_id());?></a></li>
											<li><?php echo get_the_date('',get_the_id())?></li>
											<li><?php echo get_comments_number();?> comment</li>
										</ul>
										<p><?php echo substr(get_the_excerpt(get_the_id()),0,196).' ...'; ?></p>
										<div class="row">
											<div class="col-sm-6"><a href="<?php echo get_the_permalink()?>" class="ht-btn bg-1">Read more</a></div>
											<div class="col-sm-6">
												<ul class="list-1x list-inline m-t-20 text-right">
													<li><a href="https://www.facebook.com/"><i class="fa fa-facebook"></i></a></li>
													<li><a href="https://plus.google.com/?hl=vi"><i class="fa fa-google"></i></a></li>
													<li><a href="https://twitter.com/?lang=vi"><i class="fa fa-twitter"></i></a></li>
													<li><a href="https://www.instagram.com/"><i class="fa fa-instagram"></i></a></li>
												</ul>
											</div>
										</div>
									</div>
								</div>
					<?php
				endwhile;wp_reset_postdata();
				endif;
				 $pagination=paginate_links( array(
				'base' => str_replace( $big, '%#%', esc_url( get_pagenum_link( $big ) ) ),
				'format' => '?paged=%#%',
				'current' => max( 1, get_query_var('paged') ),
				'total' => $the_query->max_num_pages,
				 'type'  => 'array',
				 'prev_text' => '<i class="fa fa-chevron-left"></i>',
				 'next_text' => '<i class="fa fa-chevron-right"></i>',
				 ) );
				 if(!empty($pagination)):
					?>
					<nav aria-label="Page navigation">
						<ul class="pagination ht-pagination">
							<?php foreach ( $pagination as $page ) : ?>
								<li><?php echo $page ?></li>
							<?php endforeach; ?>
						</ul>
					</nav>
				<?php endif; ?>
				</div>
				<div class="col-sm-4">
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
								$product_categories = get_terms( 'category', $cat_args );
								if( !empty($product_categories) ){ ?>
								<ul class="list list-border">
									<?php foreach ($product_categories as $key => $category) :	?>
											<li><a href="<?php echo get_term_link($category);?>"><?php echo  $category->name; ?></a></li>
									<?php endforeach;	?>
								</ul>
								<?php }	?>
					</div>
					<div class="box">
						<h3 class="title line-default">Archives</h3>
						<?php
						$args = array(
									 'type'            => 'monthly',
									 'limit'           => '',
									 'format'          => 'html',
									 'before'          => '',
									 'after'           => '',
									 'show_post_count' => true,
									 'echo'            => 1,
									 'order'           => 'DESC',
										'post_type'     => 'post'
									);

						?>
						<ul class="list list-border">
							<?php echo 	wp_get_archives($args);?>
						</ul>
					</div>
					<div class="box">
						<h3 class="title line-default">Recent Post</h3>
						<?php
						$args = array(
								'numberposts' => 4,
								'offset' => 0,
								'category' => $catId,
								'orderby' => 'post_date',
								'order' => 'DESC',
								'include' => '',
								'exclude' => '',
								'meta_key' => '',
								'meta_value' =>'',
								'post_type' => 'post',
								'post_status' => 'draft, publish, future, pending, private',
								'suppress_filters' => true
								);
								$recent_posts = wp_get_recent_posts( $args, ARRAY_A );
								if(count($recent_posts) > 0):
						?>
						    <?php foreach ($recent_posts as  $rp) : ?>
									<div class="media">
										<div class="media-left">
											<a href="<?php echo get_permalink($rp['ID'])?>">
												 <img class="media-object m-r-5" src="<?php echo get_the_post_thumbnail_url($rp['ID'], 'thumbnail'); ?>" width="100" alt="image">
											 </a>
										</div>
										<div class="media-body">
											<h4 class="media-heading p-0 f-16"><a href="<?php echo get_permalink($rp['ID'])?>"><?php echo substr($rp['post_excerpt'],0,38).' ...'; ?></a></h4>
											<span class="color-9 f-14"><?php echo get_the_date('',$rp['ID'])?></span>
										</div>
									</div>
						    <?php endforeach; ?>
					   <?php endif;?>
					</div>
					<div class="box">
						<h3 class="title line-default line-default-left p-t-10">Popular tags</h3>
						<?php
						$tags = get_tags();
						?>
						<ul class="tags">
							<?php foreach ($tags as $tag):?>
								<li><a href="<?php echo get_tag_link($tag->term_id);?>"><?php echo $tag->name; ?></a></li>
							<?php endforeach; ?>
						</ul>
					</div>
				</div>
			</div>
		</div>
	</div>
</section>
<?php get_footer(); ?>

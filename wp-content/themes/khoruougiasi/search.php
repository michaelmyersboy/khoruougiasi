<?php

get_header(); ?>
<section class="bg-fbf9f2">
	<div class="container">
		<div class="content">
			<div class="title-group underline-double">
				<h5 class="sub-title">Royal wine</h5>
				<h2 class="selected">Search Result</h2>
				<p class="line-mix star-group">
					<i class="fa fa-star"></i>
					<i class="fa fa-star"></i>
					<i class="fa fa-star"></i>
				</p>
			</div>
			<div class="row">
				<div class="col-sm-12 search"><!--Blog item--><!--Blog item-->
					<?php
						 if ( have_posts() ) :
							 while ( have_posts() ) : the_post();
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
			endif;?>
				</div>
			</div>
		</div>
	</div>
</section>
<?php get_footer(); ?>

<?php
/**
 * The template for displaying all single posts and attachments
 *
 * @package WordPress
 * @subpackage Twenty_Fifteen
 * @since Twenty Fifteen 1.0
 */

get_header();
while ( have_posts() ) : the_post();
 ?>

<section class="bg-fbf9f2" id="postId_<?php echo get_the_id();?>">
	<div class="container">
		<div class="content">
			<div class="title-group underline-double">
				<h5 class="sub-title">Royal wine</h5>
				<h2 class="selected"><?php the_title(); ?></h2>
				<p class="line-mix star-group">
					<i class="fa fa-star"></i>
					<i class="fa fa-star"></i>
					<i class="fa fa-star"></i>
				</p>
			</div>
			<div class="row">
				<div class="col-sm-8"><!-- Blog-item -->
					<div class="box-item">
						<?php the_post_thumbnail()?>
						<div class="caption text-left">
							<h2 class="heading"><a href="<?php echo get_permalink(); ?>" class="f-35"><?php the_title(); ?></a></h2>
							<ul class="post-date">
								<li>By
									<a href="<?php echo get_the_author_link(); ?>"><?php echo get_the_author() ?></a></li>
								<li><?php echo get_the_date('',get_the_id())?></li>
								<li><?php echo get_comments_number();?> comment</li>
							</ul>
							<div class="content">
							<?php the_content();?>
							</div>
						</div>
					</div>
					<div class="p-10 border-1x bg-f">
						<div class="row">
							<div class="col-sm-6">
								<p class="f-14 m-t-10 m-l-20">
									<strong class="m-r-5">Tag:</strong>
									<?php
										$resultTag='';
									  foreach (get_the_tags() as $tag):
										 $resultTag .='<a href="'.get_tag_link('$tag->term_id').'">'.$tag->name.'</a>,';
								  	endforeach;
										$resultTag= rtrim($resultTag,",");
										echo $resultTag;
									?>
								</p>
							</div>
							<div class="col-sm-6">
								<ul class="list list-inline m-t-5 text-right">
									<li><a href="https://www.facebook.com/"><i class="fa fa-facebook icon icon-25"></i></a></li>
									<li><a href="https://plus.google.com/?hl=vi"><i class="fa fa-google icon icon-25"></i></a></li>
									<li><a href="https://twitter.com/?lang=vi"><i class="fa fa-twitter icon icon-25"></i></a></li>
									<li><a href="https://www.instagram.com/"><i class="fa fa-instagram icon icon-25"></i></a></li>
								</ul>
							</div>
						</div>
					</div>
					<div class="m-t-20">
						<?php
						$comment_args = array(
							'class_form'=>'form-group',
							'title_reply_before'=>'<h4 class="title m-t-40 m-b-0">',
							'title_reply_after'=>'</h4>',
						  'title_reply'=>'Leave a comment',
							'fields' => apply_filters( 'comment_form_default_fields',
									array(
										'author' => '<input name="author" type="text" class="form-item" placeholder="Name" value="' . esc_attr( $commenter['comment_author'] ).'"' . $aria_req . $html_req . ' />',
										'email'  => '<input name="email" type="text" class="form-item" placeholder="Email" value="' . esc_attr(  $commenter['comment_author_email'] ) .'"'. $aria_req . $html_req  . ' />',
										'comment_notes_after' => '',
									)
					 		 ),
							 'comment_field' => '<textarea  name="comment" class="form-item" placeholder="Comment" aria-required="true" required="required"></textarea>',
							 'class_submit'=>'ht-btn bg-dc4c46',
							 'comment_notes_before'=>'',
							 'comment_notes_after'=>''
						);

						comment_form($comment_args);
						 ?>
						 <?php
						 	$comments = get_approved_comments(get_the_id());
							if(count($comments) > 0):?>
							<ul class="list list-border">
							 <?php foreach($comments as $comment) : ?>
								<li>
										<b><?php echo $comment->comment_author; ?></b></br>
										<?php echo $comment->comment_content;?>
								</li>
							 <?php endforeach; ?>
							</ul>
						<?php endif; ?>
					</div>
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
									 'show_post_count' => false,
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
						$category=get_the_category(get_the_id());
						$args = array(
								'numberposts' => 4,
								'offset' => 0,
								'category' => $category[0]->term_id,
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
						<h3 class="title line-default">Popular tags</h3>
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

<?php endwhile; get_footer(); ?>

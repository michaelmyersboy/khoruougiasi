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
						<h4 class="title m-t-40 m-b-0">Leave a comment</h4>
						<form>
							<div class="form-group">
								<input type="text" class="form-item" placeholder="Name">
								<input type="text" class="form-item" placeholder="Email">
								<input type="text" class="form-item" placeholder="Phone">
								<textarea class="form-item" placeholder="Comment"></textarea>
							</div>
							<div class="form-group"></div>
							<button type="submit" class="ht-btn bg-dc4c46">Post comment</button>
						</form>
					</div>
				</div>
				<div class="col-sm-4">
					<div class="box">
						<h3 class="title line-default">Categories</h3>
						<ul class="list list-border">
							<li><a href="#">Event</a></li>
							<li><a href="#">Wedding</a></li>
							<li>Brithdaysr</li>
							<li><a href="#">Food</a></li>
							<li><a href="#">Drink</a></li>
						</ul>
					</div>
					<div class="box">
						<h3 class="title line-default">Archives</h3>
						<ul class="list list-border">
							<li><a href="#">January 2016</a><span class="pull-right color-8 f-normal">42</span></li>
							<li><a href="#">November 2016</a><span class="pull-right color-8 f-normal">152</span></li>
							<li><a href="#">September 2016</a><span class="pull-right color-8 f-normal">82</span></li>
							<li><a href="#">May 2017</a><span class="pull-right color-8 f-normal">322</span></li>
							<li><a href="#">July 2017</a><span class="pull-right color-8 f-normal">72</span></li>
						</ul>
					</div>
					<div class="box">
						<h3 class="title line-default">Recent Post</h3>
						<div class="media">
							<div class="media-left">
								<a href="#"><img class="media-object m-r-5" src="../images/alcohol-2101_960_720.jpg" width="100" alt="image"></a>
							</div>
							<div class="media-body">
								<h4 class="media-heading p-0 f-16"><a href="#">Lorem ipsum dolor sit amet consectetur</a></h4>
								<span class="color-9 f-14">January 23 2017</span>
							</div>
						</div>
						<div class="media">
							<div class="media-left">
								<a href="#"><img class="media-object m-r-5" src="../images/bar-1869656_1920.jpg" width="100" alt="image"></a>
							</div>
							<div class="media-body">
								<h4 class="media-heading p-0 f-16"><a href="#">Lorem ipsum dolor sit amet consectetur</a></h4>
								<span class="color-9 f-14">November 06 2017</span>
							</div>
						</div>
						<div class="media">
							<div class="media-left">
								<a href="#"><img class="media-object m-r-5" src="../images/bottle-791699_960_720.jpg" width="100" alt="image"></a>
							</div>
							<div class="media-body">
								<h4 class="media-heading p-0 f-16"><a href="#">Lorem ipsum dolor sit amet consectetur</a></h4>
								<span class="color-9 f-14">Febnuary 10 2017</span>
							</div>
						</div>
						<div class="media">
							<div class="media-left">
								<a href="#"><img class="media-object m-r-5" src="../images/breakfast-801827_960_720.jpg" width="100" alt="image"></a>
							</div>
							<div class="media-body">
								<h4 class="media-heading p-0 f-16"><a href="#">Lorem ipsum dolor sit amet consectetur</a></h4>
								<span class="color-9 f-14">September 11 2017</span>
							</div>
						</div>
					</div>
					<div class="box">
						<h3 class="title line-default">Popular tags</h3>
						<ul class="tags">
							<li><a href="#">restaurent</a></li>
							<li><a href="#">dinner</a></li>
							<li><a href="#">luch</a></li>
							<li><a href="#">sea food</a></li>
							<li><a href="#">cake</a></li>
							<li><a href="#">meat</a></li>
							<li><a href="#">food</a></li>
							<li><a href="#">bar</a></li>
							<li><a href="#">main course</a></li>
							<li><a href="#">salad</a></li>
							<li><a href="#">soul</a></li>
							<li><a href="#">wine</a></li>
							<li><a href="#">dessert</a></li>
						</ul>
					</div>
				</div>
			</div>
		</div>
	</div>
</section>

<?php endwhile; get_footer(); ?>

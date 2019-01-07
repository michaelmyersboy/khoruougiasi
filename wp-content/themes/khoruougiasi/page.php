<?php get_header(); ?>
<section class="bg-fbf9f2">
  <div class="container">
    <div class="content">
      <div class="title-group underline-double">
        <?php if (get_field('minium_title')):?>
        <h5 class="sub-title"><?php get_field('minium_title')?></h5>
        <?php endif; ?>
        <h2 class="selected"><?php the_title(); ?></h2>
        <p class="line-mix star-group">
          <i class="fa fa-star"></i>
          <i class="fa fa-star"></i>
          <i class="fa fa-star"></i>
        </p>
      </div>
      <div class="row">
         <?php  while ( have_posts() ) : the_post(); ?>
           <?php
              the_content();
           ?>
         <?php endwhile; ?>
      </div>
    </div>
  </div>
</section>
<?php get_footer(); ?>

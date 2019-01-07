<?php
/**
 * Template Name: Gallery
 *
 * @package WordPress
 * @subpackage Khoruougiasi
 * @since Namthien 1.0
 */
get_header(); ?>
<section class="bg-fbf9f2">
  <div class="container">
    <div class="title-group underline-double">
      <?php if (get_field('minium_title')):?>
      <h5 class="sub-title"><?php echo get_field('minium_title')?></h5>
      <?php endif; ?>
        <h2 class="selected"><?php the_title(); ?></h2>
      <p class="line-mix star-group">
        <i class="fa fa-star"></i>
        <i class="fa fa-star"></i>
        <i class="fa fa-star"></i>
      </p>
    </div>
    <div class="row row-m-5">
      <?php  $gallery = get_field('gallery');
              $size = "medium";
          if($gallery):
              foreach ($gallery as $g):
      ?>
          <div class="col-sm-4">
              <?php echo wp_get_attachment_image( $g['ID'], $size ); ?>
          </div>
      <?php
              endforeach;
          endif;
      ?>
    </div>
  </div>
</section>
<?php get_footer(); ?>

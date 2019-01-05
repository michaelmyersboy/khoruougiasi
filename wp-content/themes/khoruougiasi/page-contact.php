<?php
/**
 * Template Name: Contact
 *
 * @package WordPress
 * @subpackage Khoruougiasi
 * @since Namthien 1.0
 */
get_header(); ?>
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
        <div class="col-sm-6">
          <div class="box-item text-left p-50">
            <?php if (get_field('contact_form')):?>
              <?php echo do_shortcode(get_field('contact_form'))?>
            <?php endif; ?>
          </div>
        </div>
        <div class="col-sm-6">
          <div id="map" class="h-650">
              <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3740.5283354663175!2d106.29499271439654!3d20.361094815611807!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3135e25511aade3f%3A0xc8bdc62accca981b!2zQ2jDuWEgS2VvIFRow6FpIELDrG5o!5e0!3m2!1svi!2sus!4v1546679243321" width="600" height="650" frameborder="0" style="border:0" allowfullscreen></iframe>
          </div>
        </div>
      </div>
    </div>
  </div>
</section>
<?php get_footer(); ?>

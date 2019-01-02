<?php
/**
 * Template Name: About
 *
 * @package WordPress
 * @subpackage Khoruougiasi
 * @since Namthien 1.0
 */
get_header(); ?>
<section class="bg-fbf9f2">
    <div class="container">
        <div class="title-group underline-double">
            <h5 class="sub-title"><?php echo get_field('minium_title') ?></h5>
            <h2 class="selected"><?php echo get_the_title()?></h2>
            <p class="line-mix star-group">
                <i class="fa fa-star"></i>
                <i class="fa fa-star"></i>
                <i class="fa fa-star"></i>
            </p>
        </div>
        <div class="row">
            <div class="col-sm-5">
                <div class="row row-m-5">
                    <?php  $gallery = get_field('gallery');
                            $size = "medium";
                        if($gallery):
                            foreach ($gallery as $g):
                    ?>
                        <div class="col-sm-6">
                            <?php echo wp_get_attachment_image( $g['ID'], $size ); ?>
                        </div>
                    <?php
                            endforeach;
                        endif;
                    ?>
                </div>
            </div>
            <div class="col-sm-7">
                <div class="m-t-30">
                    <div class="title-group m-b-0">
                        <h5 class="sub-title"><?php echo get_field('content_minium_title')?></h5>
                        <h2><?php echo get_field('content_title')?></h2>
                        <p class="line-mix star-group">
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                        </p>
                        <div class="text-left">
                            <?php
                                while ( have_posts() ) : the_post();
                                    the_content();
                                endwhile;
                            ?>
                        </div>
                    </div>
                    <br>
                </div>
            </div>
        </div>
    </div>
</section>
<?php get_footer(); ?>

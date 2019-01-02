<?php

get_header(); ?>

<div class="main-content">
    <?php
    // Start the loop.
    while ( have_posts() ) : the_post(); ?>


        <article id="post-<?php the_ID(); ?>" <?php post_class(); ?>>
            <header class="entry-header">
                <?php the_title( '<h1 class="entry-title">', '</h1>' ); ?>
            </header><!-- .entry-header -->
            <div class="entry-content">
                <?php
                the_content();

                ?>
            </div><!-- .entry-content -->
        </article><!-- #post-## -->

        <?php if ( comments_open() || get_comments_number() ) {
            comments_template();
        }

        // End of the loop.
    endwhile;
    ?>
</div><!-- .content-area -->


<?php get_footer(); ?>

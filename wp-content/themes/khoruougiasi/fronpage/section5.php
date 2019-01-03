<section class="p-0 bg-f">
    <div class="container">
        <div class="row row-m-0">
           <?php if( have_rows('block') ): ?>
            <?php while( have_rows('block') ): the_row(); ?>
                   <div class="col-sm-4">
                       <div class="sh-item">
                           <h4><?php echo get_sub_field('title')?></h4>
                           <p class="line-mix"><?php echo get_sub_field('caption')?></p>
                       </div>
                   </div>
            <?php endwhile; ?>
            <?php endif; ?>
    </div>
    </div>
</section>
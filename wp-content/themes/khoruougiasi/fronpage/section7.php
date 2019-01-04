<div class="bg-005960">
    <div class="container">
        <div class="testimonial">
            <div class="row">
                <?php if( have_rows('testimonial') ): ?>

                <div class="owl" data-items="4" data-itemsdesktop="3" data-itemsdesktopsmall="2" data-itemstablet="2" data-itemsmobile="1" data-transitionstyle="backslide" data-singleitem="true" data-autoplay="false" data-pag="true" data-buttons="false">
                    <?php while( have_rows('testimonial') ): the_row(); ?>
                    <div class="testimonial-item">
                        <p class="line-default line-default-f testimonial-txt"><i class="fa fa-quote-left m-r-5"></i><?php echo get_sub_field('Desciption')?></p>
                        <p class="line"></p>
                        <?php $user= get_sub_field('author'); ?>
                        <p><strong></strong><?php echo $user['display_name']; ?></strong></p>
                    </div>
                    <?php endwhile; ?>
                </div>

                <?php endif; ?>
            </div>
        </div>
    </div>
</div>

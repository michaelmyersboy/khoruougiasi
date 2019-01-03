<section class="bg-fbf9f2 product-inline">
    <div class="container">
        <div class="title-group">
            <?php if (get_sub_field('minium_title')) :?>
            <h5 class="sub-title"><?php echo get_sub_field('minium_title')?></h5>
            <?php endif; ?>
            <?php if (get_sub_field('title')) :?>
            <h2><?php echo get_sub_field('title')?></h2>
            <?php endif; ?>
            <p class="line-mix star-group">
                <i class="fa fa-star"></i>
                <i class="fa fa-star"></i>
                <i class="fa fa-star"></i>
            </p>
        </div>
        <div class="ht-tabs ht-tabs-product"><!-- Nav tabs -->
            <?php
                echo do_shortcode(get_sub_field('short_code'));
            ?>
        </div>
    </div>
</section>
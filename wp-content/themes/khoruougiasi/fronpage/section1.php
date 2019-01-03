<section class="p-0">
    <div class="banner h-700 bg-image-8"
        <?php if (get_sub_field('background_image')) :?>
            style='background-image:url("<?php echo get_sub_field('background_image') ?>")'
        <?php endif; ?>
        >
        <div class="caption">
            <div class="title-group">
                <?php if (get_sub_field('minium_title')) :?>
                    <h5 class="sub-title"><?php echo get_sub_field('minium_title')?></h5>
                <?php endif; ?>
                <?php if (get_sub_field('title')) :?>
                <h1><?php echo get_sub_field('title'); ?></h1>
                <?php endif; ?>
                <p class="line-mix line-mix-f star-group">
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star"></i>
                </p>
                <?php if (get_sub_field('description')) :?>
                <h5><?php echo get_sub_field('description')?></h5>
                <?php endif; ?>
                <?php if (get_sub_field('button_title')) :?>
                <a href="<?php echo get_sub_field('button_link')?>" class="ht-btn"><?php echo get_sub_field('button_title')?></a>
                <?php endif; ?>
            </div>
        </div>
    </div>
</section>
<section class="bg-image-4 banner bg-fixed"
    <?php if (get_sub_field('background_image_fixed')) :?>
        style='background-image:url("<?php echo get_sub_field('background_image_fixed') ?>")'
    <?php endif; ?>
    >
    <div class="caption">
        <div class="title-group m-b-0">
            <?php if (get_sub_field('minium_title')) :?>
            <h5 class="sub-title"><?php echo get_sub_field('minium_title') ?></h5>
            <?php endif; ?>
            <?php if (get_sub_field('title')) :?>
            <h2 class="f-60"><?php echo get_sub_field('title')?></h2>
            <?php endif; ?>
            <p class="line-mix line-mix-f star-group">
                <i class="fa fa-star"></i>
                <i class="fa fa-star"></i>
                <i class="fa fa-star"></i>
            </p>
            <?php if (get_sub_field('description')) :?>
            <p><?php echo get_sub_field('description')?></p>
            <?php endif; ?>
            <?php if (get_sub_field('button_title')) :?>
            <a href="<?php echo get_sub_field('button_link')?>" class="ht-btn ht-btn-2"><?php echo get_sub_field('button_title')?></a>
            <?php endif; ?>
        </div>
    </div>
</section>

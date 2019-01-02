<section class="bg-image-1 m-t-ab-100"
         <?php if(get_sub_field('background_image')):?>
             style='background-image:url("<?php echo get_sub_field('background_image') ?>")'
        <?php endif;?>
>
    <div class="container">
        <div class="row">
            <div class="col-sm-7 pull-right">
                <div class="p-bn bg-fbf9f2">
                    <div class="title-group m-b-0">
                        <?php if(get_sub_field('minium_title')) :?>
                        <h5 class="sub-title"><?php echo get_sub_field('minium_title')?></h5>
                        <?php endif; ?>
                        <?php if(get_sub_field('title')):?>
                        <h2><?php echo get_sub_field('title')?></h2>
                        <?php endif; ?>
                        <p class="line-mix star-group">
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                        </p>
                        <?php if(get_sub_field('description')) :?>
                            <p><?php echo get_sub_field('description')?></p>
                        <?php  endif; ?>
                        <?php if(get_sub_field('button_title')):?>
                        <a href="<?php echo get_sub_field('button_link')?>" class="ht-btn ht-btn-2"><?php echo get_sub_field('button_title');?></a>
                        <?php endif;?>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<?php
$args = array(
    'numberposts' => 10,
    'offset' => 0,
    'category' => 0,
    'orderby' => 'post_date',
    'order' => 'DESC',
    'include' => '',
    'exclude' => '',
    'meta_key' => '',
    'meta_value' =>'',
    'post_type' => 'post',
    'post_status' => 'draft, publish, future, pending, private',
    'suppress_filters' => true
);

$recent_posts = wp_get_recent_posts( $args, ARRAY_A );
?>
<section class="bg-fbf9f2">
    <div class="container">
        <div class="title-group">
            <?php if (get_sub_field('minium_title')) :?>
            <h5 class="sub-title"><?php echo get_sub_field('minium_title'); ?></h5>
            <?php endif; ?>
            <?php if (get_sub_field('title')) :?>
            <h2><?php echo get_sub_field('title'); ?></h2>
            <?php endif; ?>
            <p class="line-mix star-group">
                <i class="fa fa-star"></i>
                <i class="fa fa-star"></i>
                <i class="fa fa-star"></i>
            </p>
        </div>
        <div class="row">
            <div class="owl" data-items="2" data-itemsdesktop="2" data-itemsdesktopsmall="2" data-itemstablet="1" data-itemsmobile="1" data-transitionstyle="backslide" data-singleitem="false" data-autoplay="false" data-pag="false" data-buttons="true">
                <?php foreach ($recent_posts as $p) {
                    $author_id=$post->post_author;
                    ?>
                    <div class="col-md-12">
                        <div class="box-item">
                            <div class="row">
                                <div class="col-sm-6">
                                    <a href="<?php echo get_permalink($p['ID'])?>" class="blog-image">
                                        <img src="<?php echo get_the_post_thumbnail_url($p['ID'], 'full'); ?>" alt="image">
                                    </a>
                                </div>
                                <div class="col-sm-6">
                                    <div class="caption text-left">
                                        <h3 class="line-default"><a href="<?php echo get_permalink($p['ID'])?>"><?php echo get_the_title($p['ID'])?></a></h3>
                                        <ul class="post-date">
                                            <li>By <a href="<?php echo  get_author_posts_url($author_id);?>"><?php echo  get_the_author($p['ID']);?></a></li>
                                            <li><?php echo get_the_date('',$p['ID'])?></li>
                                        </ul>
                                        <p><?php echo substr(get_the_excerpt($p['ID']),0,108).' ...'; ?></p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                <?php } wp_reset_query();?>
            </div>
        </div>
    </div>
</section>
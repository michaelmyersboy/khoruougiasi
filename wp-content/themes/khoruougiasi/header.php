<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="google-site-verification" content="BEz5Ptumooi6xgv-U05P-WbMmk7uqU7qz4tC2p7mfj0" />
    <title><?php echo   get_bloginfo(); ?></title>
    <link rel="icon" href="<?php echo get_template_directory_uri() . "/favicon.ico";?> ">
    <?php wp_head() ?>
</head>
<body <?php body_class(); ?>>
  <div class="preloader"><i class="fa fa-spinner"></i></div>
<div class="menu-rs">
    <div class="menu-wrap">
        <div class="r-mv">
            <span></span>
            <span></span>
        </div>
        <?php
        wp_nav_menu(array(
            'theme_location'=>'header',
            'menu_class'=>'menu-mb',
            'container'=>'',
            'walker' => new Theme_Header_Menu_Walker()
        ));
        ?>
    </div>
</div>
<header class="header-fixed">
    <div class="main-header">
        <div class="container">
            <div class="row">
                <div class="col-xs-6 col-sm-2">
                    <?php
                    $custom_logo_id = get_theme_mod( 'custom_logo' );
                    $logo = wp_get_attachment_image_src( $custom_logo_id , 'full' );
                    if ( has_custom_logo() ) {
                        echo '<a href="'.get_site_url().'" class="logo"><img src="'. esc_url( $logo[0] ) .'"></a>';
                    } else {
                        echo '<h1>'. get_bloginfo( 'name' ) .'</h1>';
                    }
                    ?>
                </div>
                <div class="col-xs-4 col-sm-8 hidden-xs">
                    <?php
                        wp_nav_menu(array(
                            'theme_location'=>'header',
                            'container'=>'nav',
                            'container_class'=>'menu-nav pull-right menu-{menu slug}-container',
                            'container_id'=>'holder_mn',
                            'walker' => new Theme_Header_Menu_Walker()
                        ));
                    ?>
                </div>
                <div class="col-xs-6 col-sm-2 text-right">
                    <ul class="list list-inline pull-right m-t-5">
                        <li>
                            <i class="fa icon-search f-18 icon-30 text-center fa-search"></i>
                        </li>
                        <li class="pull-right">
                            <div class="cart dropdown">
                                <a href="#" class="cart-customlocation cart-item dropdown-toggle" id="dropdownMenu2" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                    <span><?php echo WC()->cart->get_cart_contents_count()?></span>
                                    <i class="fa fa-shopping-bag"></i>
                                </a>
                                <ul class="dropdown-menu" aria-labelledby="dropdownMenu2">
                                    <?php //dynamic_sidebar( 'cart' ); ?>
                                    <?php
                                    global $woocommerce;
                                    $cart_stt=WC()->cart->get_cart_item_quantities();

                                    if(!$cart_stt || count($cart_stt)==0) echo "<li>Giỏ hàng rỗng</li>";
                                    else{
                                        $items = $woocommerce->cart->get_cart();
                                        foreach($items as $item => $values) {

                                            $_product =  wc_get_product( $values['data']->get_id());
                                            ?>
                                            <li>
                                                <div class="media">
                                                    <div class="media-left">
                                                        <a href="<?php echo $_product->get_permalink();?>">
                                                            <?php echo $_product->get_image( get_the_id(), 'thumnail', array( 'class' =>'media-object','alt'=>'image'))?>
                                                        </a>
                                                    </div>
                                                    <div class="media-body">
                                                        <h4 class="product-name">
                                                            <a href="<?php echo $_product->get_permalink();?>"><?php echo $_product->get_title(); ?></a>
                                                        </h4>
                                                        <p><?php echo wc_price(get_post_meta($values['product_id'] , '_price', true));?>
                                                            <b>x <?php echo $values['quantity']?></b>
                                                            <a href="<?php echo wc_get_cart_remove_url($item); ?>" class="remove remove_from_cart_button" data-cart_item_key="<?php echo $item;?>" >
                                                                <i class="fa fa-remove"></i>
                                                            </a>
                                                        </p>
                                                    </div>
                                                </div>
                                            </li>
                                        <?php

                                        }
                                    }
                                    ?>
                                    <li class="table-div">
                                        <ul class="table-content">
                                            <li class="row m-0">
                                                <div class="col col-xs-6">
                                                    <strong>Total:</strong>
                                                </div>
                                                <div class="col col-xs-6 text-right f-bold bag_cart"><?php echo wc_price(WC()->cart->cart_contents_total);?></div>
                                            </li>
                                        </ul>
                                    </li>
                                    <li>
                                        <p>
                                            <a href="<?php echo $woocommerce->cart->get_checkout_url();?>" style="float: left;margin-right: 5px;" class="ht-btn bg-540b23">Checkout</a>
                                            <a href="<?php echo $woocommerce->cart->get_cart_url();?>" style="float: left;" class="ht-btn bg-005960">Cart</a>
                                        </p>
                                    </li>
                                </ul>
                            </div>
                        </li>
                        <li class="menu-btn">
                            <i class="fa fa-bars f-18 icon-30 text-right"></i>
                        </li>
                    </ul>
                </div>
            </div>
            <div class="search-box">
                <form action="/" method="get">
                    <input type="text" class="form-item" placeholder="Enter you keyword..." name="s" id="search" value="<?php the_search_query(); ?>" />
                </form>
            </div>
        </div>
    </div>
</header>

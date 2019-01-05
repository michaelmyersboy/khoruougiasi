<?php
//add scripts to header


function addScriptsToHead()
{
    wp_enqueue_script( 'jqueryJs',get_template_directory_uri() . "/js/jquery-2.2.4.min.js", array ( 'jquery' ), 1.1, true);
    wp_enqueue_style('jquery', get_template_directory_uri() . "/css/jquery-ui.css", array(), '1.1', 'all');
    wp_enqueue_style('bootstrap', get_template_directory_uri() . "/css/bootstrap.min.css", array(), '1.1', 'all');
    wp_enqueue_style('owl-carousel', get_template_directory_uri() . "/css/owl.carousel.css", array(), '1.1', 'all');
    wp_enqueue_style('owl-theme', get_template_directory_uri() . "/css/owl.theme.css", array(), '1.1', 'all');
    wp_enqueue_style('owl-transitions', get_template_directory_uri() . "/css/owl.transitions.css", array(), '1.1', 'all');
    wp_enqueue_style('magnific-popup', get_template_directory_uri() . "/css/magnific-popup.css", array(), '1.1', 'all');
    wp_enqueue_style('font-awesome', get_template_directory_uri() . "/css/font-awesome.min.css", array(), '1.1', 'all');
    wp_enqueue_style('animate', get_template_directory_uri() . "/css/animate.css", array(), '1.1', 'all');
    wp_enqueue_style('css', get_template_directory_uri() . "/css/css.css", array(), '1.1', 'all');
    wp_enqueue_style('style1', get_template_directory_uri() . "/css/style.css", array(), '1.1', 'all');
    wp_enqueue_style('style', get_stylesheet_uri());
}
add_action('wp_head', 'addScriptsToHead');
//add script to footer
function addScriptToFooter()
{
    wp_enqueue_script( 'jquery-ui',get_template_directory_uri() . "/js/jquery-ui.js", array ( 'jquery' ), 1.1, true);
    wp_enqueue_script( 'bootstrap',get_template_directory_uri() . "/js/bootstrap.min.js", array ( 'jquery' ), 1.1, true);
    wp_enqueue_script( 'owl-carousel',get_template_directory_uri() . "/js/owl.carousel.js", array ( 'jquery' ), 1.1, true);
    wp_enqueue_script( 'magnific-popup',get_template_directory_uri() . "/js/jquery.magnific-popup.min.js", array ( 'jquery' ), 1.1, true);
    wp_enqueue_script( 'classie',get_template_directory_uri() . "/js/classie.js", array ( 'jquery' ), 1.1, true);
    wp_enqueue_script( 'script',get_template_directory_uri() . "/js/script.js", array ( 'jquery' ), 1.1, true);
}
add_action('wp_footer', 'addScriptToFooter');
//add menu
function themeSetup() {
    register_nav_menus( array(
        'header' => 'Header menu'
    ) );
    add_theme_support( 'custom-logo' );
    add_theme_support( 'woocommerce' );
}
add_action( 'after_setup_theme', 'themeSetup' );
//add logo
function customLogoSetup() {
    $defaults = array(
        'height'      => 103,
        'width'       => 50,
        'flex-height' => true,
        'flex-width'  => true,
        'header-text' => array( 'site-title', 'site-description' ),
    );
    add_theme_support( 'custom-logo', $defaults );
}
add_action( 'after_setup_theme', 'customLogoSetup' );

//customer Menu Header
require get_parent_theme_file_path( '/inc/Theme_Header_Menu_Walker.php' );
//customer Widget
function widgetsInit() {
    register_sidebar( array(
        'name'          => 'Footer',
        'id'            => 'widget_footer',
        'before_widget' => '<li id="%1$s" class="widget %2$s">',
        'after_widget'  => '</li>',
        'before_title'  => '<h2 class="widgettitle">',
        'after_title'   => '</h2>'
    ) );
    register_sidebar( array(
        'name'          => 'Left SlideBar Category Product',
        'id'            => 'widget_product_list',
        'before_widget' => '<li id="%1$s" class="widget %2$s">',
        'after_widget'  => '</li>',
        'before_title'  => '<h2 class="widgettitle">',
        'after_title'   => '</h2>'
    ) );
}
add_action( 'widgets_init', 'widgetsInit' );
add_action( 'widgets_init', function(){
    register_widget( 'Footer_Html_Widget' );
});

require get_parent_theme_file_path( '/inc/Footer_Html_Widget.php' );
//woocommerce
require get_parent_theme_file_path( '/inc/Woocommerce_Custom.php' );
include get_template_directory() . '/inc/class-wc-widget-price-custom-filter.php';

add_action("widgets_init", "load_custom_widgets");
function load_custom_widgets() {
unregister_widget("WC_Widget_Price_Filter");
register_widget("WC_Widget_Price_Custom_Filter");
}
add_filter ('get_archives_link',
function ($link_html, $url, $text, $format, $before, $after) {

  $link_html = "<li><a href='$url'>"
             . "$text"
             . '</a><span class="pull-right color-8 f-normal">42</span></li>';

    return $link_html;
}, 10, 6);
function wpb_move_comment_field_to_bottom( $fields ) {
$comment_field = $fields['comment'];
unset( $fields['comment'] );
$fields['comment'] = $comment_field;
return $fields;
}

add_filter( 'comment_form_fields', 'wpb_move_comment_field_to_bottom' );

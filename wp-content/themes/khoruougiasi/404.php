<?php
/**
 * The template for displaying 404 pages (not found)
 *
 * @link https://codex.wordpress.org/Creating_an_Error_404_Page
 *
 * @package WordPress
 * @subpackage Twenty_Seventeen
 * @since 1.0
 * @version 1.0
 */

 get_header(); ?>
 <section class="bg-fbf9f2 p-t-80">
 	<div class="container">
 		<div class="content text-center p-t-100 p-b-100 border-double">
 			<h2 class="f-80 f-xs-40 p-t-0 selected">ERROR 404 !</h2>
 			<p class="line-mix star-group">
 				<i class="fa fa-star"></i>
 				<i class="fa fa-star"></i>
 				<i class="fa fa-star"></i>
 			</p>
 			<p>Look like this page doesn't esixt, click <a href="<?php echo get_site_url(); ?>">here</a> to return home page.</p>
 		</div>
 	</div>
 </section>
 <?php get_footer(); ?>

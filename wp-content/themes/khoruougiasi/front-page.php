<?php get_header()?>
<div class="main-content front-page">
    <?php    
    $fields = get_field_objects();
    var_dump( $fields );
    if( have_rows('layout_default') ):
             while ( have_rows('layout_default') ) : the_row();
                if( get_row_layout() == 'section_1' ){
                    include "fronpage/section1.php";
                }
                 if( get_row_layout() == 'section_2' ){
                     include "fronpage/section2.php";
                 }
                 if( get_row_layout() == 'section_3' ){
                     include "fronpage/section3.php";
                 }
                 if( get_row_layout() == 'section_4' ){
                     include "fronpage/section4.php";
                 }
                 if( get_row_layout() == 'section_5' ){
                     include "fronpage/section5.php";
                 }
                 if( get_row_layout() == 'section_6' ){
                     include "fronpage/section6.php";
                 }
                 if( get_row_layout() == 'section_7' ){
                     include "fronpage/section7.php";
                 }
                 if( get_row_layout() == 'section_8' ){
                     include "fronpage/section8.php";
                 }
             endwhile;
    endif;
    ?>
</div>
<?php get_footer() ?>

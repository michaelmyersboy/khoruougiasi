<?php
/**
 * Created by PhpStorm.
 * User: sinhcautb
 * Date: 29/12/2018
 * Time: 10:30
 */

class  Footer_Html_Widget extends  WP_Widget{
    public function __construct()
    {
        $widget_options = array(
            'classname' => 'footer_html_widget',
            'description' => 'This is an Footer Html Widget',
        );
        parent::__construct("footer_html_widget", "Footer Html Widget", $widget_options);
    }
    public function widget($args, $instance)
    {
        $title = apply_filters( 'widget_title', $instance[ 'title' ] );
        $content =  $instance[ 'content' ];
        $option =  ! empty( $instance['option'] ) ? $instance['option'] : 0;
        $html ='';

        switch ($option){
            case  0:
                $html=$this->widgetMenu($title,$content);
                break;
            case 1:
                $html=$this->widgetImage($title,$content);
                break;
            case 2:
                $html=$this->widgetEmail($title,$content);
        }
        if(strpos($html,"<"."?php")!==false){
            ob_start();
            eval("?".">".$html);
            $html=ob_get_contents();
            ob_end_clean();
        }
     echo $html;
    }
    public function form( $instance ) {
        $title = ! empty( $instance['title'] ) ? $instance['title'] : '';
        $content = ! empty( $instance['content'] ) ? $instance['content'] : '';
        $option =  ! empty( $instance['option'] ) ? $instance['option'] : 0;
        ?>
        <p>
            <label for="<?php echo $this->get_field_id( 'option' ); ?>">Options:</label>
            <select class="widefat" id="<?php echo $this->get_field_id( 'option' ); ?>" name="<?php echo $this->get_field_name( 'option' ); ?>" onchange="selectWidgetFooter(this,'<?php echo $this->get_field_id( "title" ); ?>')">
                <?php
                $select=array(
                    0=>'Default',
                    1=>'Image',
                    2=>'Email'
                );
                foreach ($select as $key => $value) {
                    if($option == $key){
                        echo "<option value='".$key."' selected>".$value."</option>";
                    }
                    else {
                        echo "<option value='".$key."'>".$value."</option>";
                    }
                }
                ?>
            </select>
        </p>
        <p>
            <label for="<?php echo $this->get_field_id( 'title' ); ?>">Title:</label>
            <input class="widefat" type="text" id="<?php echo $this->get_field_id( 'title' ); ?>" name="<?php echo $this->get_field_name( 'title' ); ?>" value="<?php echo esc_attr( $title ); ?>" />
        </p>
        <p>
            <label for="<?php echo $this->get_field_id( 'content' ); ?>">Content:</label>
            <textarea class="widefat" rows="8" id="<?php echo $this->get_field_id( 'content' ); ?>" name="<?php echo $this->get_field_name( 'content' ); ?>" ><?php echo esc_attr( $content ); ?></textarea>
        </p>
        <script type="text/javascript">
            function selectWidgetFooter(event,id) {
                var value= Number(event.value);
                if(value === 1){
                    $("#"+id).css('display','none');
                    $("label[for='"+id+"']").css('display','none');
                }
                else {
                    $("#"+id).css('display','block');
                    $("label[for='"+id+"']").css('display','block');
                }
            }
        </script>
        <?php

    }
    public function update( $new_instance, $old_instance ) {
        $instance = $old_instance;
        $instance[ 'title' ] = strip_tags( $new_instance[ 'title' ] );
        $instance[ 'content' ] = $new_instance[ 'content' ];
        $instance[ 'option' ] = strip_tags( $new_instance[ 'option' ] );
        return $instance;
    }
    private function widgetMenu($title,$content) {
        $html= '<div class="col-sm-2 m-t-xs-30">';
        $html.= '<h4>'.$title.'</h4>';
        $html.=  html_entity_decode($content);
        $html.= '</div>';
        return $html;
    }
    private function widgetImage($title,$content) {
        $html=  '<div class="col-sm-2 m-t-xs-30">';
        $html.=   html_entity_decode($content);
        $html.=  '</div>';
        return $html;
    }
    private function widgetEmail($title,$content) {
        $html= '<div class="col-sm-4 newletter">';
        $html.=  '<h4>'.$title.'</h4>';
        $html.=   html_entity_decode($content);
        $html.=  '</div>';
        return $html;
    }
}

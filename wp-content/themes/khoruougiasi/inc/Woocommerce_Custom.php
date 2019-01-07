<?php

function feature_product_custom( $atts ) {
    $slugs=($atts['slug']!=null)?explode(',',$atts['slug']):array();
    echo '<div class="ht-tabs ht-tabs-product">';
    echo '<ul class="nav nav-tabs" >';
    for($i=0;$i<count($slugs);$i++){
        $cat=get_term_by('slug', $slugs[$i], 'product_cat');
        if(!empty($cat)) {
            if ($i == 0) {
                echo '<li  class="active"><a href="#tab-' . $slugs[$i] . '" aria-controls="tab-' . $slugs[$i] . '" role="tab" data-toggle="tab" >' . $cat->name . '</a></li>';
            } else {
                echo '<li ><a href="#tab-' . $slugs[$i] . '" aria-controls="tab-' . $slugs[$i] . '" role="tab" data-toggle="tab">' . $cat->name . '</a></li>';
            }
        }

    }
    echo '</ul>';
    echo '<div class="tab-content">';
    for($i=0;$i<count($slugs);$i++){
        $args = array( 'post_type' => 'product','posts_per_page' =>6, 'product_cat' => $slugs[$i]);
        $loop = new WP_Query( $args );
        if ( $loop->have_posts() ) {
            if($i==0) {
                echo '<div role="tabpanel" class="tab-pane active" id="tab-' . $slugs[$i] . '"><div class="row">';
            }
            else{
                echo '<div role="tabpanel" class="tab-pane" id="tab-' . $slugs[$i] . '"><div class="row">';
            }
            while ( $loop->have_posts() ) : $loop->the_post();
                wc_get_template_part( 'content', 'product' );
                //echo "cau";
            endwhile;
            echo '</div></div>';
        } else {
            echo __( 'No products found' );
        }
        wp_reset_postdata();

    }
    echo '</div>';
}
add_shortcode( 'feature_product_custom', 'feature_product_custom' );
add_filter( 'woocommerce_add_to_cart_fragments', 'woocommerce_header_add_to_cart_fragment' );
function woocommerce_header_add_to_cart_fragment( $fragments ) {
    global $woocommerce;

    ob_start();

    ?>
    <a href="#" class="cart-customlocation cart-item dropdown-toggle" id="dropdownMenu2" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
        <span><?php echo  $woocommerce->cart->cart_contents_count?></span>
        <i class="fa fa-shopping-bag"></i>
    </a>
    <?php
    $fragments['a.cart-customlocation'] = ob_get_clean();
    return $fragments;
}
remove_action('woocommerce_cart_collaterals','woocommerce_cross_sell_display');
remove_action('woocommerce_before_shop_loop','woocommerce_result_count',20);
remove_action('woocommerce_single_product_summary','woocommerce_template_single_rating',10);
remove_action('woocommerce_single_product_summary','woocommerce_template_single_meta',40);
remove_action( 'woocommerce_single_product_summary', 'woocommerce_template_single_price', 10 );
remove_action( 'woocommerce_single_product_summary', 'woocommerce_template_single_excerpt', 20 );
remove_action( 'woocommerce_single_product_summary', 'woocommerce_template_single_title', 5 );
remove_action( 'woocommerce_single_product_summary', 'woocommerce_template_single_add_to_cart', 30 );
add_action( 'woocommerce_single_product_summary', 'woocommerce_template_single_price', 20 );
add_filter('woocommerce_currency_symbol', 'change_existing_currency_symbol', 10, 2);
function woocommerce_template_single_add_to_cart_custom() {
    global $product;
    echo "<li class='product_details_qty'>";
    do_action( 'woocommerce_' . $product->get_type() . '_add_to_cart' );
    echo "</li>";
}
add_action( 'woocommerce_single_product_summary', 'woocommerce_template_single_add_to_cart_custom', 30 );
function change_existing_currency_symbol( $currency_symbol, $currency ) {
 switch( $currency ) {
 case 'VND': $currency_symbol = 'VND'; break;
 }
 return $currency_symbol;
}

//billing
function woocommerce_form_field_custom( $key, $args, $value = null ) {
  $defaults = array(
          'type'              => 'text',
          'label'             => '',
          'description'       => '',
          'placeholder'       => '',
          'maxlength'         => false,
          'required'          => false,
          'autocomplete'      => false,
          'id'                => $key,
          'class'             => array(),
          'label_class'       => array(),
          'input_class'       => array(),
          'return'            => false,
          'options'           => array(),
          'custom_attributes' => array(),
          'validate'          => array(),
          'default'           => '',
          'autofocus'         => '',
          'priority'          => '',
      );

      $args = wp_parse_args( $args, $defaults );
      $args = apply_filters( 'woocommerce_form_field_args', $args, $key, $value );

      if ( $args['required'] ) {
          $args['class'][] = 'validate-required';
          $required        = ' <abbr class="required" title="' . esc_attr__( 'required', 'woocommerce' ) . '">*</abbr>';
      } else {
          $required = '';
      }

      if ( is_string( $args['label_class'] ) ) {
          $args['label_class'] = array( $args['label_class'] );
      }

      if ( is_null( $value ) ) {
          $value = $args['default'];
      }

      // Custom attribute handling.
      $custom_attributes         = array();
      $args['custom_attributes'] = array_filter( (array) $args['custom_attributes'], 'strlen' );

      if ( $args['maxlength'] ) {
          $args['custom_attributes']['maxlength'] = absint( $args['maxlength'] );
      }

      if ( ! empty( $args['autocomplete'] ) ) {
          $args['custom_attributes']['autocomplete'] = $args['autocomplete'];
      }

      if ( true === $args['autofocus'] ) {
          $args['custom_attributes']['autofocus'] = 'autofocus';
      }

      if ( ! empty( $args['custom_attributes'] ) && is_array( $args['custom_attributes'] ) ) {
          foreach ( $args['custom_attributes'] as $attribute => $attribute_value ) {
              $custom_attributes[] = esc_attr( $attribute ) . '="' . esc_attr( $attribute_value ) . '"';
          }
      }

      if ( ! empty( $args['validate'] ) ) {
          foreach ( $args['validate'] as $validate ) {
              $args['class'][] = 'validate-' . $validate;
          }
      }

      $field           = '';
      $label_id        = $args['id'];
      $sort            = $args['priority'] ? $args['priority'] : '';
      $field_container = '<div class="form-row %1$s form-group" id="%2$s" data-priority="' . esc_attr( $sort ) . '">%3$s</div>';

      switch ( $args['type'] ) {
          case 'country':
              $countries = 'shipping_country' === $key ? WC()->countries->get_shipping_countries() : WC()->countries->get_allowed_countries();

              if ( 1 === count( $countries ) ) {

                  $field .= '<strong>' . current( array_values( $countries ) ) . '</strong>';

                  $field .= '<input type="hidden" name="' . esc_attr( $key ) . '" id="' . esc_attr( $args['id'] ) . '" value="' . current( array_keys( $countries ) ) . '" ' . implode( ' ', $custom_attributes ) . ' class="country_to_state" readonly="readonly" />';

              } else {

                  $field = '<div class="col-sm-8"><select name="' . esc_attr( $key ) . '" id="' . esc_attr( $args['id'] ) . '" class="country_to_state country_select ' . esc_attr( implode( ' ', $args['input_class'] ) ) . '" ' . implode( ' ', $custom_attributes ) . '><option value="">' . esc_html__( 'Select a country&hellip;', 'woocommerce' ) . '</option>';

                  foreach ( $countries as $ckey => $cvalue ) {
                      $field .= '<option value="' . esc_attr( $ckey ) . '" ' . selected( $value, $ckey, false ) . '>' . $cvalue . '</option>';
                  }

                  $field .= '</select>';

                  $field .= '<noscript><button type="submit" name="woocommerce_checkout_update_totals" value="' . esc_attr__( 'Update country', 'woocommerce' ) . '">' . esc_html__( 'Update country', 'woocommerce' ) . '</button></noscript></div>';

              }

              break;
          case 'state':
              /* Get country this state field is representing */
              $for_country = isset( $args['country'] ) ? $args['country'] : WC()->checkout->get_value( 'billing_state' === $key ? 'billing_country' : 'shipping_country' );
              $states      = WC()->countries->get_states( $for_country );

              if ( is_array( $states ) && empty( $states ) ) {

                  $field_container = '<div class="form-row %1$s form-group" id="%2$s" style="display: none">%3$s</div>';

                  $field .= '<input type="hidden" class="hidden" name="' . esc_attr( $key ) . '" id="' . esc_attr( $args['id'] ) . '" value="" ' . implode( ' ', $custom_attributes ) . ' placeholder="' . esc_attr( $args['placeholder'] ) . '" readonly="readonly" />';

              } elseif ( ! is_null( $for_country ) && is_array( $states ) ) {

                  $field .= '<select name="' . esc_attr( $key ) . '" id="' . esc_attr( $args['id'] ) . '" class="state_select '
                        . esc_attr( implode( ' ', $args['input_class'] ) ) . '" ' . implode( ' ', $custom_attributes )
                        . ' data-placeholder="' . esc_attr( $args['placeholder'] ) . '"> <option value="">' . esc_html__( 'Select a state&hellip;', 'woocommerce' ) . '</option>';

                  foreach ( $states as $ckey => $cvalue ) {
                      $field .= '<option value="' . esc_attr( $ckey ) . '" ' . selected( $value, $ckey, false ) . '>' . $cvalue . '</option>';
                  }

                  $field .= '</select>';

              } else {

                  $field .= '<input type="text" class="input-text ' . esc_attr( implode( ' ', $args['input_class'] ) ) . '" value="' . esc_attr( $value ) . '"  placeholder="' . esc_attr( $args['placeholder'] ) . '" name="' . esc_attr( $key ) . '" id="' . esc_attr( $args['id'] ) . '" ' . implode( ' ', $custom_attributes ) . ' />';

              }

              break;
          case 'textarea':
              $field .= '<textarea name="' . esc_attr( $key ) . '" class="input-text ' . esc_attr( implode( ' ', $args['input_class'] ) ) . '" id="' . esc_attr( $args['id'] ) . '" placeholder="' . esc_attr( $args['placeholder'] ) . '" ' . ( empty( $args['custom_attributes']['rows'] ) ? ' rows="2"' : '' ) . ( empty( $args['custom_attributes']['cols'] ) ? ' cols="5"' : '' ) . implode( ' ', $custom_attributes ) . '>' . esc_textarea( $value ) . '</textarea>';

              break;
          case 'checkbox':
              $field = '<label class="checkbox ' . implode( ' ', $args['label_class'] ) . '" ' . implode( ' ', $custom_attributes ) . '>
                      <input type="' . esc_attr( $args['type'] ) . '" class="input-checkbox ' . esc_attr( implode( ' ', $args['input_class'] ) ) . '" name="' . esc_attr( $key ) . '" id="' . esc_attr( $args['id'] ) . '" value="1" ' . checked( $value, 1, false ) . ' /> ' . $args['label'] . $required . '</label>';

              break;
          case 'password':
          case 'text':
          case 'email':
          case 'tel':
          case 'number':
              $field .= '<div class="col-sm-8"><input type="' . esc_attr( $args['type'] ) . '" class="form-control form-item input-text ' . esc_attr( implode( ' ', $args['input_class'] ) ) . '" name="' . esc_attr( $key ) . '" id="' . esc_attr( $args['id'] ) . '" placeholder="'
              . esc_attr( $args['placeholder'] ) . '"  value="' . esc_attr( $value ) . '" ' . implode( ' ', $custom_attributes ) . ' /></div>';

              break;
          case 'select':
              $field   = '';
              $options = '';

              if ( ! empty( $args['options'] ) ) {
                  foreach ( $args['options'] as $option_key => $option_text ) {
                      if ( '' === $option_key ) {
                          // If we have a blank option, select2 needs a placeholder.
                          if ( empty( $args['placeholder'] ) ) {
                              $args['placeholder'] = $option_text ? $option_text : __( 'Choose an option', 'woocommerce' );
                          }
                          $custom_attributes[] = 'data-allow_clear="true"';
                      }
                      $options .= '<option value="' . esc_attr( $option_key ) . '" ' . selected( $value, $option_key, false ) . '>' . esc_attr( $option_text ) . '</option>';
                  }

                  $field .= '<select name="' . esc_attr( $key ) . '" id="' . esc_attr( $args['id'] )
                        . '" class="select ' . esc_attr( implode( ' ', $args['input_class'] ) ) . '" '
                        . implode( ' ', $custom_attributes ) . ' data-placeholder="' . esc_attr( $args['placeholder'] ) . '">' . $options . '</select>';
              }

              break;
          case 'radio':
              $label_id = current( array_keys( $args['options'] ) );

              if ( ! empty( $args['options'] ) ) {
                  foreach ( $args['options'] as $option_key => $option_text ) {
                      $field .= '<input type="radio" class="input-radio ' . esc_attr( implode( ' ', $args['input_class'] ) ) . '" value="' . esc_attr( $option_key ) . '" name="' . esc_attr( $key ) . '" ' . implode( ' ', $custom_attributes ) . ' id="' . esc_attr( $args['id'] ) . '_' . esc_attr( $option_key ) . '"' . checked( $value, $option_key, false ) . ' />';
                      $field .= '<label for="' . esc_attr( $args['id'] ) . '_' . esc_attr( $option_key ) . '" class="radio ' . implode( ' ', $args['label_class'] ) . '">' . $option_text . '</label>';
                  }
              }

              break;
      }

      if ( ! empty( $field ) ) {
          $field_html = '';

          if ( $args['label'] && 'checkbox' !== $args['type'] ) {
            if(count($args['label_class']) > 0 && in_array("screen-reader-text", $args['label_class'])){
              $field_html .= '<label for="' . esc_attr( $label_id ) . '" class="col-sm-4 control-label ">' . $args['label'] . $required . '</label>';
            }
            else {
              $field_html .= '<label for="' . esc_attr( $label_id ) . '" class="col-sm-4 control-label ' . esc_attr( implode( ' ', $args['label_class'] ) ) . '">' . $args['label'] . $required . '</label>';
            }

          }

          $field_html .= $field;

          if ( $args['description'] ) {
              $field_html .= '<span class="description">' . esc_html( $args['description'] ) . '</span>';
          }

          $container_class = esc_attr( implode( ' ', $args['class'] ) );
          $container_id    = esc_attr( $args['id'] ) . '_field';
          $field           = sprintf( $field_container, $container_class, $container_id, $field_html );
      }

      $field = apply_filters( 'woocommerce_form_field_custom_' . $args['type'], $field, $key, $args, $value );

      if ( $args['return'] ) {
          return $field;
      } else {
          echo $field; // WPCS: XSS ok.
      }
  }
  function wpb_custom_billing_fields( $fields = array() ) {
  	unset($fields['billing_address_2']);
  	return $fields;
  }
  add_filter('woocommerce_billing_fields','wpb_custom_billing_fields');

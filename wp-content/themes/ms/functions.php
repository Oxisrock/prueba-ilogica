<?php

add_theme_support( 'post-thumbnails' );

function apk_load_styles_scripts() {
//CSS
wp_register_style('theme_style', get_stylesheet_uri(), '', '1.0', 'all');// para registrar el css
wp_enqueue_style('theme_style');
//JS

wp_enqueue_script( 'bootstrap4', 'https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js', array ( 'jquery' ), 1.1, true);
wp_enqueue_script( 'script2', 'https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js', array ( 'jquery' ), 1.1, true);
wp_enqueue_script( 'slick', get_template_directory_uri() . '/assets/js/slick.min.js', array ( 'jquery' ), 1.1, true);
wp_enqueue_script( 'slick-custom', get_template_directory_uri() . '/assets/js/slick-custom.js', array ( 'jquery' ), 1.1, true);
wp_enqueue_script( 'custom', get_template_directory_uri() . '/assets/js/custom.js', array ( 'jquery' ), 1.1, true);

}

function shapeSpace_include_custom_jquery() {

	wp_deregister_script('jquery');
	wp_enqueue_script('jquery', 'https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js', array(), null, true);

}

add_action('wp_enqueue_scripts', 'shapeSpace_include_custom_jquery');

add_action('wp_enqueue_scripts', 'apk_load_styles_scripts');

if ( ! function_exists('slider') ) {

    // Register Custom Post Type
    function slider() {
    
        $labels = array(
            'name'                  => _x( 'sliders', 'Post Type General Name', 'text_domain' ),
            'singular_name'         => _x( 'slider', 'Post Type Singular Name', 'text_domain' ),
            'menu_name'             => __( 'sliders', 'text_domain' ),
            'name_admin_bar'        => __( 'sliders', 'text_domain' ),
            'archives'              => __( 'archivos de slider', 'text_domain' ),
            'attributes'            => __( 'atributos de slider', 'text_domain' ),
            'parent_item_colon'     => __( 'Objeto de slider', 'text_domain' ),
            'all_items'             => __( 'Todos los slider', 'text_domain' ),
            'add_new_item'          => __( 'añadir slider', 'text_domain' ),
            'add_new'               => __( 'Añadir', 'text_domain' ),
            'new_item'              => __( 'Nuevo', 'text_domain' ),
            'edit_item'             => __( 'Editar', 'text_domain' ),
            'update_item'           => __( 'Actualizar', 'text_domain' ),
            'view_item'             => __( 'Ver', 'text_domain' ),
            'view_items'            => __( 'Ver Todos', 'text_domain' ),
            'search_items'          => __( 'Buscar', 'text_domain' ),
            'not_found'             => __( 'No encontro ningun slider', 'text_domain' ),
            'not_found_in_trash'    => __( 'No hay ningun slider borrado', 'text_domain' ),
            'featured_image'        => __( 'Imagen de slider', 'text_domain' ),
            'set_featured_image'    => __( 'Cambiar Imagen', 'text_domain' ),
            'remove_featured_image' => __( 'Borrar imagen', 'text_domain' ),
            'use_featured_image'    => __( 'Usar como imagen destacada', 'text_domain' ),
            'insert_into_item'      => __( 'Insertar en slider', 'text_domain' ),
            'uploaded_to_this_item' => __( 'Actualizar slider', 'text_domain' ),
            'items_list'            => __( 'Lista de sliders', 'text_domain' ),
            'items_list_navigation' => __( 'Lista de navegacion de slider', 'text_domain' ),
            'filter_items_list'     => __( 'Filtrar Lista de sliders', 'text_domain' ),
        );
        $args = array(
            'label'                 => __( 'slider', 'text_domain' ),
            'description'           => __( 'sliders', 'text_domain' ),
            'labels'                => $labels,
            'supports'              => array( 'title','editor', 'author', 'thumbnail'),
            'taxonomies'            => array( 'post_tag' ),
            'hierarchical'          => false,
            'public'                => true,
            'show_ui'               => true,
            'show_in_menu'          => true,
            'menu_position'         => 5,
            'menu_icon'             => 'dashicons-welcome-view-site',
            'show_in_admin_bar'     => true,
            'show_in_nav_menus'     => true,
            'can_export'            => true,
            'has_archive'           => true,
            'exclude_from_search'   => false,
            'publicly_queryable'    => true,
            'capability_type'       => 'page',
        );
        register_post_type( 'slider', $args );
    
    }
    add_action( 'init', 'slider', 0 );
    
    }
    
    function cptui_register_my_cpts_actividades() {

        /**
         * Post Type: actividades.
         */
    
        $labels = [
            "name" => __( "actividades", "custom-post-type-ui" ),
            "singular_name" => __( "actividad", "custom-post-type-ui" ),
            "menu_name" => __( "My actividades", "custom-post-type-ui" ),
            "all_items" => __( "All actividades", "custom-post-type-ui" ),
            "add_new" => __( "Add new", "custom-post-type-ui" ),
            "add_new_item" => __( "Add new actividades", "custom-post-type-ui" ),
            "edit_item" => __( "Edit actividades", "custom-post-type-ui" ),
            "new_item" => __( "New actividades", "custom-post-type-ui" ),
            "view_item" => __( "View actividades", "custom-post-type-ui" ),
            "view_items" => __( "View actividades", "custom-post-type-ui" ),
            "search_items" => __( "Search actividades", "custom-post-type-ui" ),
            "not_found" => __( "No actividades found", "custom-post-type-ui" ),
            "not_found_in_trash" => __( "No actividades found in trash", "custom-post-type-ui" ),
            "parent" => __( "Parent actividades:", "custom-post-type-ui" ),
            "featured_image" => __( "Featured image for this actividades", "custom-post-type-ui" ),
            "set_featured_image" => __( "Set featured image for this actividades", "custom-post-type-ui" ),
            "remove_featured_image" => __( "Remove featured image for this actividades", "custom-post-type-ui" ),
            "use_featured_image" => __( "Use as featured image for this actividades", "custom-post-type-ui" ),
            "archives" => __( "actividades archives", "custom-post-type-ui" ),
            "insert_into_item" => __( "Insert into actividades", "custom-post-type-ui" ),
            "uploaded_to_this_item" => __( "Upload to this actividades", "custom-post-type-ui" ),
            "filter_items_list" => __( "Filter actividades list", "custom-post-type-ui" ),
            "items_list_navigation" => __( "actividades list navigation", "custom-post-type-ui" ),
            "items_list" => __( "actividades list", "custom-post-type-ui" ),
            "attributes" => __( "actividades attributes", "custom-post-type-ui" ),
            "name_admin_bar" => __( "actividades", "custom-post-type-ui" ),
            "item_published" => __( "actividades published", "custom-post-type-ui" ),
            "item_published_privately" => __( "actividades published privately.", "custom-post-type-ui" ),
            "item_reverted_to_draft" => __( "actividades reverted to draft.", "custom-post-type-ui" ),
            "item_scheduled" => __( "actividades scheduled", "custom-post-type-ui" ),
            "item_updated" => __( "actividades updated.", "custom-post-type-ui" ),
            "parent_item_colon" => __( "Parent actividades:", "custom-post-type-ui" ),
        ];
    
        $args = [
            "label" => __( "actividades", "custom-post-type-ui" ),
            "labels" => $labels,
            "description" => "",
            "public" => true,
            "publicly_queryable" => true,
            "show_ui" => true,
            "show_in_rest" => true,
            "rest_base" => "",
            "rest_controller_class" => "WP_REST_Posts_Controller",
            "has_archive" => "actividades",
            "show_in_menu" => true,
            "show_in_nav_menus" => true,
            "delete_with_user" => false,
            "exclude_from_search" => false,
            "capability_type" => "post",
            "map_meta_cap" => true,
            "hierarchical" => false,
            "rewrite" => [ "slug" => "actividades", "with_front" => true ],
            "query_var" => true,
            "supports" => [ "title", "editor", "thumbnail", 'excerpt' ],
        ];
    
        register_post_type( "actividades", $args );
    }
    
    add_action( 'init', 'cptui_register_my_cpts_actividades' );

    function cptui_register_my_taxes_category_activity() {

        /**
         * Taxonomy: Categorias.
         */
    
        $labels = [
            "name" => __( "Categorias", "custom-post-type-ui" ),
            "singular_name" => __( "Categoria", "custom-post-type-ui" ),
        ];
    
        $args = [
            "label" => __( "Categorias", "custom-post-type-ui" ),
            "labels" => $labels,
            "public" => true,
            "publicly_queryable" => true,
            "hierarchical" => true,
            "show_ui" => true,
            "show_in_menu" => true,
            "show_in_nav_menus" => true,
            "query_var" => true,
            "rewrite" => [ 'slug' => 'category_activity', 'with_front' => true, ],
            "show_admin_column" => false,
            "show_in_rest" => true,
            "rest_base" => "category_activity",
            "rest_controller_class" => "WP_REST_Terms_Controller",
            "show_in_quick_edit" => false,
            ];
        register_taxonomy( "category_activity", [ "actividades" ], $args );
    }
    add_action( 'init', 'cptui_register_my_taxes_category_activity' );  
    //modificando menu de wordpress para clases de bootstrapp
    function wpb_custom_new_menu() {
        register_nav_menu('my-custom-menu',__( 'Menu Principal' ));
      }
      add_action( 'init', 'wpb_custom_new_menu' );

    function add_menuclass($ulclass) {
        return preg_replace('/<a /', '<a class="nav-link"', $ulclass);
     }
     add_filter('wp_nav_menu','add_menuclass');
     function add_additional_class_on_li($classes, $item, $args) {
        if(isset($args->add_li_class)) {
            $classes[] = $args->add_li_class;
        }
        return $classes;
    }
    add_filter('nav_menu_css_class' , 'special_nav_class' , 10 , 2);

    function special_nav_class ($classes, $item) {
    if (in_array('current-menu-item', $classes) ){
        $classes[] = 'active ';
    }
    return $classes;
    }

    add_filter('nav_menu_css_class', 'add_additional_class_on_li', 1, 3);
  
    function apk_register_footer() {
        register_sidebar(array(
          'name' => __('Footer left','apk'),
          'id' => 'main_footer',
          'description' => __('Este es el sidebar del footer','apk'),
          'before_widget' => '<div id="%1$s" class="block pb-4 pt-4 %2$s">',
          'after_widget' => '</div>',
          'before_title' => '<h3 class="widget-title">',
          'after_title' => '</h3>'
        ));
      }
    add_action('widgets_init', 'apk_register_footer');
      
    function apk_register_footer2() {
        register_sidebar(array(
          'name' => __('Footer Home','apk'),
          'id' => 'main_footer_home',
          'description' => __('Este es el home del footer','apk'),
          'before_widget' => '<div id="%1$s" class="block2 pb-4 pt-4 %2$s">',
          'after_widget' => '</div>',
          'before_title' => '<h3 class="widget-title">',
          'after_title' => '</h3>'
        ));
    }
      
    add_action('widgets_init', 'apk_register_footer2');

    function excerpt($limit) {
        $excerpt = explode(' ', get_the_excerpt(), $limit);
        if (count($excerpt)>=$limit) {
          array_pop($excerpt);
          $excerpt = implode(" ",$excerpt).'...';
        } else {
          $excerpt = implode(" ",$excerpt);
        }	
        $excerpt = preg_replace('`[[^]]*]`','',$excerpt);
        return $excerpt;
    }
       
    function content($limit) {
        $content = explode(' ', get_the_content(), $limit);
        if (count($content)>=$limit) {
          array_pop($content);
          $content = implode(" ",$content).'...';
        } else {
          $content = implode(" ",$content);
        }	
        
        $content = preg_replace('/[.+]/','', $content);
        
        $content = apply_filters('the_content', $content); 
        
        $content = str_replace(']]>', ']]>', $content);
        
        return $content;
    }

    function reading_time() {
        $content = get_post_field( 'post_content', $post->ID );
        $word_count = str_word_count( strip_tags( $content ) );
        $readingtime = ceil($word_count / 200);
        if ($readingtime == 1) {
            $timer = " Minuto";
        } else {
            $timer = " Minutos";
        }
        
        $totalreadingtime = $readingtime . $timer;
        
        return $totalreadingtime;
    }
    

    //Include  ACF
    // Define path and URL to the ACF plugin.
    define( 'MY_ACF_PATH', get_stylesheet_directory() . '/includes/acf/' );
    define( 'MY_ACF_URL', get_stylesheet_directory_uri() . '/includes/acf/' );

    // Include the ACF plugin.
    include_once( MY_ACF_PATH . 'acf.php' );

    // Customize the url setting to fix incorrect asset URLs.
    add_filter('acf/settings/url', 'my_acf_settings_url');
    function my_acf_settings_url( $url ) {
        return MY_ACF_URL;
    }

    // (Optional) Hide the ACF admin menu item.
    add_filter('acf/settings/show_admin', 'my_acf_settings_show_admin');
    function my_acf_settings_show_admin( $show_admin ) {
        return true;
    }
    if( function_exists('acf_add_options_page') ) {
	
        acf_add_options_page(array(
            'page_title' 	=> 'Theme General Settings',
            'menu_title'	=> 'Theme Settings',
            'menu_slug' 	=> 'theme-general-settings',
            'capability'	=> 'edit_posts',
            'redirect'		=> false
        ));
        
        acf_add_options_sub_page(array(
            'page_title' 	=> 'Theme Header Settings',
            'menu_title'	=> 'Header',
            'parent_slug'	=> 'theme-general-settings',
        ));
        
        acf_add_options_sub_page(array(
            'page_title' 	=> 'Theme Footer Settings',
            'menu_title'	=> 'Footer',
            'parent_slug'	=> 'theme-general-settings',
        ));
        
    }

    add_filter('acf/settings/save_json', 'my_acf_json_save_point');
 
    function my_acf_json_save_point( $path ) {
        
        // update path
        $path = get_stylesheet_directory() . '/includes/acf-json';
        
        
        // return
        return $path;
        
    }



?>

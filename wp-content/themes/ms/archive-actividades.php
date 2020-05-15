<!-- Archivo de cabecera global de Wordpress -->
<?php get_header(); ?>
<?php if (have_posts()) : the_post(); ?>
<!-- title -->
<?php get_template_part('partials/activity/title'); ?>
<!-- title -->
<!-- tabs -->
<?php get_template_part('partials/activity/tabs'); ?>
<!-- tabs -->
<?php endif;?>
<!-- Archivo de pié global de Wordpress -->
<?php get_footer(); ?>

<!-- Archivo de cabecera global de Wordpress -->
<?php get_header(); ?>
<?php if (have_posts()) : the_post(); ?>
<!-- title -->
<?php get_template_part('partials/about/title'); ?>
<!-- title -->
<!-- content -->
<?php get_template_part('partials/about/content'); ?>
<!-- content -->
<!-- subsection -->
<?php get_template_part('partials/about/subsection'); ?>
<!-- subsection -->
<!-- tabs -->
<?php get_template_part('partials/about/tabs'); ?>
<!-- tabs -->
<!-- form-contact -->
<?php get_template_part('partials/about/form-contact'); ?>
<!-- form-contact -->
<?php endif;?>
<!-- Archivo de pié global de Wordpress -->
<?php get_footer(); ?>

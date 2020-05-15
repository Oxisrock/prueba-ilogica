 <!-- Archivo de cabecera global de Wordpress -->
<?php get_header(); ?>
<?php if (have_posts()) : the_post(); ?>
<!-- title -->
<?php get_template_part('partials/activity/single/title'); ?>
<!-- title -->
<!-- content -->
<?php get_template_part('partials/activity/single/content'); ?>
<!-- content -->
<!-- Relationals -->
<?php get_template_part('partials/activity/single/relationals'); ?>
<!-- Relationals -->
<?php endif;?>
<!-- Archivo de pié global de Wordpress -->
<?php get_footer(); ?>

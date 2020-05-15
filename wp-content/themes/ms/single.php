<!-- Archivo de cabecera global de Wordpress -->
<?php get_header(); ?>

<?php if ( post_password_required() ) {
	echo get_the_password_form(); // WPCS: XSS ok.
	return;
}
?>
<!-- slider -->
<?php get_template_part('partials/blog/content-blog'); ?>
<!-- slider -->
<?php get_footer(); ?>

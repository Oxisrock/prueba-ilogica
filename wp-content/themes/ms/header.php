<!DOCTYPE html>
<html lang="<?php bloginfo('language'); ?>" style="margin-top: 0px !important;">
<head>
  <meta charset="utf-8">
  <title><?php bloginfo('name'); ?></title>
  <meta content="width=device-width, initial-scale=1.0" name="viewport">
  <meta content="////Esto va a depender del cliente////" name="keywords">
  <meta content="<?php bloginfo('description'); ?>" name="description">
  <?php wp_head(); ?>
  <?php if (is_single()) : ?>
    <!-- Meta Tags Shared -->
    <meta property="og:url" content="<?php the_permalink(); ?>" />
    <meta property="og:type" content="article" />
    <meta property="og:title" content="<?php the_title(); ?>" />
    <meta property="og:description" content="<?php the_excerpt(); ?>" />
    <meta property="og:image" content="<?php the_post_thumbnail_url(); ?>" />
    <meta name="twitter:card" content="summary" />

  <?php endif; ?>
</head>

<body class="">
  <!--Change the background class to alter background image, options are: benches, boots, buildings, city, metro -->
<header class="header">
  <nav class="navbar navbar-expand-sm justify-content-end navbar-fixed-top  <?= $menu = (is_front_page()) ? 'navbar-transparent' : 'navbar-white' ;?> ">
    <div class="container">
      <a class="navbar-brand" href="<?php bloginfo('url'); ?>"><img src="<?= $logo = (is_front_page()) ? get_field('logo_white','option') : get_field('logo_black','option');?>" alt="" srcset=""></a>
      <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent">
          <span class="navbar-toggler-icon"><i class="fas fa-bars"></i></span>
      </button>
      <div class="collapse navbar-collapse flex-grow-0" id="navbarSupportedContent">
          <?php
                wp_nav_menu( [
                  'theme_location' => 'my-custom-menu', 
                  'items_wrap' => '<ul class="navbar-nav text-right">%3$s</ul>',
                  'add_li_class'  => 'nav-item'
                  ]); 
          ?>
      </div>
    </div>
  </nav>
</header>
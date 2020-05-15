<!-- slider -->
<section class="home-slider">
  <div class="container-full">
    <div id="home-slide">
      <?php $argsBanner = array(
        'post_type' => 'slider',
        'showposts' => 6,

      );
      $Banners = new WP_Query($argsBanner); ?>
      <?php if ($Banners->have_posts()) : while($Banners->have_posts() ) : $Banners->the_post(); ?>
        <div class="imagen-slick" style="background-image:url(<?=the_post_thumbnail_url();?>);">
          <div class="texto-slick ">
            <h2><?php the_title(); ?></h2>
            <p><?php the_excerpt(); ?></p>
            <a href="<?php the_permalink(); ?>" class="btn btn-default btn-pink">Lorem ipsum</a>
          </div>
        </div>
      <?php endwhile; endif;  ?>
    </div>
  </div>
</section>
<!-- slider -->

</header>
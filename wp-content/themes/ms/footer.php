<!--Bancos y Envios-->
<!--Bancos y Envios-->
<!-- ======== @Region: #footer ======== -->
<footer id="footer" class="pt-4 pb-4">
  <div class="container">
    <div class="row">
      <div class="col-12">
        <div class="row">
          <div class="col-md-6">
            <img src="<?= get_field('logo_footer','option');?> " class="img-fluid" alt="">
          </div>
          <div class="col-md-6">
          <nav class="navbar navbar-expand-sm justify-content-end">
            <ul class="rss navbar-nav text-right">
              <li class="nav-item"><a class="nav-link"  href="<?= get_field('facebook','option'); ?>"><i class="fab fa-facebook-f"></i></a></li>
              <li class="nav-item"><a class="nav-link"  href="<?= get_field('linkedin','option'); ?>"><i class="fab fa-linkedin-in"></i></a></li>
              <li class="nav-item"><a class="nav-link"  href="<?= get_field('twitter','option'); ?>"><i class="fab fa-twitter"></i></a></li>
              <li class="nav-item"><a class="nav-link"  href="<?= get_field('instagram','option'); ?>"><i class="fab fa-instagram"></i></a></li>
              <li class="nav-item"><a class="nav-link"  href="<?= get_field('youtube','option'); ?>"><i class="fab fa-youtube"></i></a></li>
            </ul>
          </nav>
          </div>
        </div>
      </div>
    </div>
  </div>
  <hr>
  <div class="container">
    <div class="row">
        <div class="col-md-3 col-6">
          <?php
          if (is_active_sidebar('main_footer')) {
            dynamic_sidebar('main_footer');
          }else { ?>
            
            <?php  }?>
        </div>
        <div class="col-md-3 col-6">
        <?php
          if (is_active_sidebar('main_footer_home')) {
            dynamic_sidebar('main_footer_home');
          }else { ?>
            
            <?php  }?>
        </div>
      </div>
    </div>
  </div>
</footer>

<?php wp_footer(); ?>

</body>
</html>

<section class="background-activity-content">
    <div class="grid-container">
        <div class="container-shared">
            <div class="shared">
                <h2 class="shared-title">Compartir</h2>
                <ul class="nav flex nav-shared">
                    <li class="nav-item"><a href="https://www.facebook.com/sharer/sharer.php?u=<?= the_permalink(); ?>" class="nav-link"><i class="fab fa-facebook-f"></i> Facebook</a></li>
                    <li class="nav-item"><a href="https://twitter.com/intent/tweet?url=<?= the_permalink(); ?>&text=<?= the_title(); ?>&via=<?= the_author_meta( 'twitter' ); ?>" class="nav-link"><i class="fab fa-twitter"></i> Twitter</a></li>
                    <li class="nav-item"><a href="https://api.whatsapp.com/send?text=<?= the_permalink(); ?>" data-action="share/whatsapp/share" class="nav-link"><i class="fab fa-whatsapp"></i> Whatsapp</a></li>
                </ul>
            </div>
        </div>
        <div class="container_image_activity">
            <div class="img-activity">
                <img src="<?php the_post_thumbnail_url('large'); ?>" class="img-fluid" alt="">
            </div>
            <div class="date-container">
                <span><?php the_date(); ?> . <?= reading_time(); ?></span> 
                <div class="border-middle">

                </div>
            </div>
        </div>
    </div>
    <div class="grid-content">
        <div class="item">

        </div>
        <div class="item content">
            <?php the_content(); ?>
        </div>
        <div class="item">
            
        </div>
    </div>
</section>
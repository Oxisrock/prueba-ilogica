<section class="subsection pb-4 pt-4">
    <div class="container">
       <div class="row">
            <div class="col-12">
                <div class="post-relations">
                    <h2>Lee tambien </h2>
                </div>
                <div class="tabs-activity">
                    <div class="row">
                        <?php $cat_id =  get_the_terms($post->ID,'category_activity')[0]; ?>
                        <?php 
                            $query = new WP_Query( $args =[
                                'post_type'             => 'actividades',
                                'post_status'           => 'publish',
                                'ignore_sticky_posts'   => 1,
                                'posts_per_page'        => 3,
                                'tax_query'             =>[[
                                    'taxonomy'      => 'category_activity',
                                    'field'         => 'term_id', // can be 'term_id', 'slug' or 'name'
                                    'terms'         => $cat_id,
                                ], ], ]
                            );
                        ?>
                        <?php if ( $query->have_posts() ): while( $query->have_posts() ): $query->the_post();?>
                            <div class="col-md-4 p-2">
                                <div class="card">
                                    <img class="card-img-top" src="<?php the_post_thumbnail_url('medium'); ?>" alt="Card image cap">
                                    <div class="card-body">
                                        <span><?php the_date(); ?> . <?= get_the_terms($query->ID,'category_activity')[0]->name; ?></span>
                                        <hr>
                                        <h3><?php the_title(); ?></h3>
                                        <div class="card-text"><?= excerpt(20); ?></div>
                                        <a class="link-card" href="<?php the_permalink(); ?>">Leer Mas <i class="fas fa-arrow-right"></i></a>
                                    </div>
                                </div>
                            </div>

                            <?php wp_reset_postdata(); ?>
                        <?php  endwhile; endif; ?>
                    </div>
                </div>
            </div>
       </div>
    </div>
</section>
<?php $categories = get_categories('taxonomy=category_activity&type=actividades'); ?>
<?php $cont = count($categories); ?>
<?php $conte = $cont; ?>
<section class="tabs tabs-activity pb-4 pt-4">
    <div class="container">
        <div class="row">
            <ul class="nav nav-pills mb-3" id="pills-tab" role="tablist">
                <?php foreach($categories as $cat) : ?>
                    <li class="nav-item">
                        <a class="nav-link <?= $retVal = ($cont == $conte ) ? 'active' : '' ; ?>" id="pills-home-tab" data-toggle="pill" href="#pills-<?=$cat->name;?>" role="tab" aria-controls="pills-home" aria-selected="true"><?=$cat->name;?></a>
                    </li>
                    <?php $cont--; ?>
                <?php endforeach; ?>
            </ul>
        </div>
        <div class="row">
        <?php $cont = count($categories); ?>
            <div class="tab-content" id="pills-tabContent">
                <?php foreach($categories as $cat) : ?>
                        <div class="tab-pane fade <?= $retVal = ($cont == $conte ) ? 'active show' : '' ; ?>" id="pills-<?=$cat->name;?>" role="tabpanel" aria-labelledby="pills-home-tab">
                            <div class="row">
                            <?php 
                                $query = new WP_Query( $args =[
                                    'post_type'             => 'actividades',
                                    'post_status'           => 'publish',
                                    'ignore_sticky_posts'   => 1,
                                    'posts_per_page'        => 9,
                                    'tax_query'             =>[[
                                        'taxonomy'      => 'category_activity',
                                        'field'         => 'term_id', // can be 'term_id', 'slug' or 'name'
                                        'terms'         => $cat->term_id,
                                    ], ], ]
                                );
                            ?>
                            <?php if ( $query->have_posts() ): while( $query->have_posts() ): $query->the_post();?>

                                <div class="col-md-4">
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
                        <?php $cont--; ?>
                <?php endforeach; ?>            
            </div>
        </div>
    </div>
</section>
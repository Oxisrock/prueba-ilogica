<?php $title = get_field('title_three','option'); ?>
<section class="previo pt-4 pb-4">
    <div class="container">
        <div class="row">
            <div class="col-12">
                <div class="tree-text">
                    <h2><?= $title; ?></h2>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-12">
                <div class="aliados mt-4 mb-4">
                    <?php if( have_rows('logo','option') ): while ( have_rows('logo','option') ) : the_row();?>
                            <div class="item mt-4 mb-4">
                                <div class="logo">
                                    <img src="<?=  the_sub_field('image'); ?>" class="img-fluid" alt="">
                                </div>
                            </div>

                    <?php endwhile; ?>
                    <?php
                    else :

                        // no rows found

                    endif;

                    ?>
                </div>
            </div>
        </div>
    </div>
</section>
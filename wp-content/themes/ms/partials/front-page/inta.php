<?php $title = get_field('title_fourth','option'); ?>
<section class="inta pt-4 pb-4">
    <div class="container">
        <div class="row">
            <div class="col-md-8">
                <div class="inta-text">
                    <h2><?=$title;?></h2>
                    <p><?= get_field('content_fourth','option'); ?></p>
                    <a href="<?= get_field('url_button_fourth','option'); ?>" class="btn btn-default btn-pink"><?= get_field('text_button_fourth','option'); ?> <i class="fas fa-arrow-right"></i></a>
                </div>
            </div>
            <div class="col-md-4">
                <div class="inta-text">
                    <h2><?= get_field('title_second_column','option'); ?></h2>
                    <ul>
                        <?php

                        // check if the repeater field has rows of data
                        if( have_rows('list','option') ):

                            // loop through the rows of data
                            while ( have_rows('list','option') ) : the_row(); ?>

                            <li><?= the_sub_field('text_list','option'); ?></li>

                        <?php endwhile; endif; ?>
                    </ul>
                </div>
            </div>
        </div>
    </div>
</section>
<section class="tabs tabs-team pb-4 pt-4">
    <div class="container">
        <div class="row">
            <ul class="nav nav-pills mb-3" id="pills-tab" role="tablist">
                <li class="nav-item">
                    <a class="nav-link active" id="pills-home-tab" data-toggle="pill" href="#pills-home" role="tab" aria-controls="pills-home" aria-selected="true"><?=get_field('tab_title');?></a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" id="pills-profile-tab" data-toggle="pill" href="#pills-profile" role="tab" aria-controls="pills-profile" aria-selected="false"><?=get_field('tab_title_2');?></a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" id="pills-contact-tab" data-toggle="pill" href="#pills-contact" role="tab" aria-controls="pills-contact" aria-selected="false"><?=get_field('tab_title_3');?></a>
                </li>
            </ul>
        </div>
        <div class="row">
            <div class="tab-content" id="pills-tabContent">
                <div class="tab-pane fade show active" id="pills-home" role="tabpanel" aria-labelledby="pills-home-tab">
                    <div class="row">
                        <?php

                            // check if the repeater field has rows of data
                            if( have_rows('team') ):

                                // loop through the rows of data
                                while ( have_rows('team') ) : the_row();?>
                                 <div class="col-6 col-md-3">
                                    <div class="card">
                                        <img class="card-img-top" src="<?php the_sub_field('image_profile'); ?>" alt="Card image cap">
                                        <div class="card-body">
                                            <p class="text-center m-0"><strong><?php the_sub_field('name_profile'); ?></strong></p>
                                            <p class="text-center m-0"><?php the_sub_field('job'); ?></p>
                                        </div>
                                    </div>
                                </div>
                            <?php   
                            
                            endwhile;

                            else :

                                // no rows found

                            endif;  

                        ?>
                    </div>
                </div>
                <div class="tab-pane fade" id="pills-profile" role="tabpanel" aria-labelledby="pills-profile-tab">
                    <div class="row">
                        <?php
                        
                            // check if the repeater field has rows of data
                            if( have_rows('team_2') ):

                                // loop through the rows of data
                                while ( have_rows('team_2') ) : the_row();?>
                                <div class="col-6 col-md-3">
                                    <div class="card">
                                        <img class="card-img-top" src="<?php the_sub_field('image_profile'); ?>" alt="Card image cap">
                                        <div class="card-body">
                                            <p class="text-center m-0"><strong><?php the_sub_field('name_profile'); ?></strong></p>
                                            <p class="text-center m-0"><?php the_sub_field('job'); ?></p>
                                        </div>
                                    </div>
                                </div>
                            <?php   

                            endwhile;

                            else :

                                // no rows found

                            endif;  

                        ?>
                    </div>
                </div>
                <div class="tab-pane fade" id="pills-contact" role="tabpanel" aria-labelledby="pills-contact-tab">
                    <div class="row">
                        <?php

                        // check if the repeater field has rows of data
                        if( have_rows('team_3') ):

                            // loop through the rows of data
                            while ( have_rows('team_3') ) : the_row();?>
                            <div class="col-6 col-md-3">
                                <div class="card">
                                    <img class="card-img-top" src="<?php the_sub_field('image_profile'); ?>" alt="Card image cap">
                                    <div class="card-body">
                                        <p class="text-center m-0"><strong><?php the_sub_field('name_profile'); ?></strong></p>
                                        <p class="text-center m-0"><?php the_sub_field('job'); ?></p>
                                    </div>
                                </div>
                            </div>
                        <?php   

                        endwhile;

                        else :

                            // no rows found

                        endif;  

                        ?>
                        </div>
                    </div>
                </div>
        </div>
    </div>
</section>
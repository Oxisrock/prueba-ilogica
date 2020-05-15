<?php 
$title = get_field('title', 'option'); 
$card = get_field('card', 'option');
$card_second = get_field('card2', 'option');
$card_tree = get_field('card3', 'option');
?>
<section class="tree pt-4 pb-4">
    <div class="container">
        <div class="row">
            <div class="col-12">
                <div class="tree-text">
                    <h2><?=$title?></h2>
                </div>
            </div>
            <div class="col-12">
                <div class="cards">
                    <div class="row card-responsive">
                        <div class="col-md-4">
                            <div class="card">
                                <img class="card-img-top" src="<?= $card['image_card']; ?>" alt="Card image cap">
                                <div class="card-body">
                                    <p class="card-text"><?= $card['text_card']; ?></p>
                                    <a href="<?= $card['link_button']; ?>" class="btn btn-default btn-pink"><?= $card['button_text']; ?> <i class="fas fa-arrow-right"></i></a>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-4">
                            <div class="card">
                                <img class="card-img-top" src="<?= $card_second['image_card']; ?>" alt="Card image cap">
                                <div class="card-body">
                                    <p class="card-text"><?= $card_second['text_card']; ?></p>
                                    <a href="<?= $card_second['link_button']; ?>" class="btn btn-default btn-blue"><?= $card_second['button_text']; ?> <i class="fas fa-arrow-right"></i></a>
                                </div>
                            </div>
                        </div>
                       
                        <div class="col-md-4">
                            <div class="card">
                                <img class="card-img-top" src="<?= $card_tree['image_card']; ?>" alt="Card image cap">
                                <div class="card-body">
                                    <p class="card-text"><?= $card_tree['text_card']; ?></p>
                                    <a href="<?= $card_tree['link_button']; ?>" class="btn btn-default btn-orange"><?= $card_tree['button_text']; ?> <i class="fas fa-arrow-right"></i></a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
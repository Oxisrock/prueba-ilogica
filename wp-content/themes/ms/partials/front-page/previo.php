<?php $previo = get_field('previo', 'option'); ?>
<?php $previo_image = get_field('image_previo', 'option');?>
<section class="previo pt-4 pb-4">
    <div class="container">
        <div class="row">
            <div class="col-md-6">
                <div class="previo-text">
                    <h2><?= $previo['title']; ?></h2>
                    <?= $previo['content']; ?>
                    <a href="<?= $previo['button_link'] ?>" class="btn btn-default btn-pink"><?=$previo['button'];?> <i class="fas fa-arrow-right"></i></a>
                </div>
            </div>
            <div class="col-md-6 d-none">
                <div class="row">
                    <div class="col-6">
                        <div class="image">
                            <img src="<?= $previo_image['image']; ?>" class="img-fluid" alt="">
                        </div>
                    </div>
                    <div class="col-6">
                        <div class="image2">
                            <img src="<?= $previo_image['image2']; ?>"  class="img-fluid" alt="">
                        </div>
                        <div class="image3">
                            <img src="<?= $previo_image['image3']; ?>"  class="img-fluid" alt="">
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<section id="contact" class="contact">
    <div class="container-full">
        <div class="row">
            <div class="col-md-4">
                <div class="contact-blue">
                    <div class="envelope-logo">
                        <img src="<?= get_template_directory_uri(); ?>/assets/img/group-12.png" class="img-fluid">
                    </div>
                    <div class="text-contact text-center">
                        <h2 class="contacto">contacto</h2>
                        <p><?= the_field('text_contact'); ?></p>
                    </div>
                </div>
            </div>
            <div class="col-md-8">
                <div class="form-contact">
                    <?= the_field('form_contact'); ?>
                </div>
            </div>
        </div>
    </div>
</section>
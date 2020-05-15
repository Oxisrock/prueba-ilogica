  $(document).ready(function () {
    $('#home-slide').slick({
      slidesToShow: 1,
      slidesToScroll: 1,
      autoplay: false,
      autoplaySpeed: 4000,
      dots: true,
      speed: 1500,
      // Caso de Emergencia
      // prevArrow: $('#slick-prev1'),
      // nextArrow: $('#slick-next2')
      // Caso de Emergencia
    });
    $('.aliados').slick({
      slidesToShow: 4,
      slidesToScroll: 4,
      autoplay: false,
      autoplaySpeed: 4000,
      //dots: true,
      speed: 1500,
      // Caso de Emergencia
      prevArrow: $('#slick-prev1'),
      nextArrow: $('#slick-next2'),
      responsive: [
        {
          breakpoint: 480,
          settings: {
            slidesToShow: 1,
            slidesToScroll: 1,
            arrows: false,
            lazyLoad: 'ondemand',
            
          }
        }
        // You can unslick at a given breakpoint now by adding:
        // settings: "unslick"
        // instead of a settings object
      ]
      // Caso de Emergencia
    });
    $('.card-responsive').slick({
      autoplay: false,
      autoplaySpeed: 4000,
      //dots: true,
      speed: 1500,
      // Caso de Emergencia
      prevArrow: $('#slick-prev1'),
      nextArrow: $('#slick-next2'),
      responsive: [
        {
          breakpoint: 9999,
          settings: "unslick"
        },
        {
          breakpoint: 480,
          settings: {
            slidesToShow: 1,
            slidesToScroll: 1,
            arrows: false,
            lazyLoad: 'ondemand',
            
          }
        }
        // You can unslick at a given breakpoint now by adding:
        // settings: "unslick"
        // instead of a settings object
      ]
      // Caso de Emergencia
    });
  });

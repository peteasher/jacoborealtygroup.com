(function () {
  var app = {
    initAos: function () {
      setTimeout(function () {
        AOS.init();
      }, 1000);
    },

    initNavigation: function () {
      var $nav = jQuery("#nav, #nav2");
      if ($nav.length > 0) $nav.navTabDoubleTap();
    },

    initDetectScroll: function () {
      if (jQuery(window).width() > 991 && jQuery(window).scrollTop() > 56) {
        jQuery("header.header").addClass("show-fixed");
      } else {
        jQuery("header.header").removeClass("show-fixed");
      }
    },

    initSplitHeader: function () {
      /* Split Nav */
      jQuery(".header #nav").splitNav({
        logo: ".header-logo",
        navClasses: "header-item menu",
        splitCount: 3,
        splitCountEqual: false,
      });

      jQuery(".header-logo").addClass("no-padding");
    },

    initSlideshow: function () {
      //code here
    },

    initQuickSearch: function () {
      //code here
    },

    initWelcome: function () {
      //code here
    },

    initTeam: function () {
      //code here

      var sectionSlick = ".team-slick";
      $(sectionSlick).slick({
        slidesToShow: 3,
        slideToScroll: 1,
        infinite: true,
        dots: false,
        autoplay: false,
        autoplaySpeed: 7000,
        speed: 1000,
        arrows: true,
        prevArrow: ".hp-team .prev",
        nextArrow: ".hp-team .next",
        rows: 1,
        responsive: [
          { breakpoint: 992, settings: { slidesToShow: 2 } },
          { breakpoint: 768, settings: { slidesToShow: 1 } },
        ],
      });
      var isSliding = false;
      jQuery(sectionSlick).on("beforeChange", function () {
        isSliding = true;
      });
      jQuery(sectionSlick).on("afterChange", function () {
        isSliding = false;
      });
      jQuery(".hp-team img").click(function (e) {
        if (isSliding) {
          e.stopImmediatePropagation();
          e.stopPropagation();
          e.preventDefault();
          return;
        }
      });
    },

    initProperties: function () {
      //code here

      var sectionSlick = ".properties-slick";
      $(sectionSlick).slick({
        slidesToShow: 3,
        slideToScroll: 1,
        infinite: true,
        dots: false,
        autoplay: false,
        autoplaySpeed: 7000,
        speed: 1000,
        arrows: true,
        prevArrow: ".hp-properties .prev",
        nextArrow: ".hp-properties .next",
        rows: 1,
        responsive: [
          { breakpoint: 992, settings: { slidesToShow: 2 } },
          { breakpoint: 768, settings: { slidesToShow: 1 } },
        ],
      });
      var isSliding = false;
      jQuery(sectionSlick).on("beforeChange", function () {
        isSliding = true;
      });
      jQuery(sectionSlick).on("afterChange", function () {
        isSliding = false;
      });
      jQuery(".hp-properties img").click(function (e) {
        if (isSliding) {
          e.stopImmediatePropagation();
          e.stopPropagation();
          e.preventDefault();
          return;
        }
      });
    },

    initCommunities: function () {
      //code here
    },

    initVideos: function () {
      //code here

      var sectionSlick = ".videos-slick";
      $(sectionSlick).slick({
        slidesToShow: 1,
        slideToScroll: 1,
        infinite: true,
        dots: false,
        autoplay: false,
        autoplaySpeed: 7000,
        speed: 1000,
        arrows: true,
        prevArrow: ".hp-videos .prev",
        nextArrow: ".hp-videos .next",
        rows: 1,
        responsive: [
          { breakpoint: 992, settings: { slidesToShow: 1 } },
          { breakpoint: 768, settings: { slidesToShow: 1 } },
        ],
      });
      var isSliding = false;
      jQuery(sectionSlick).on("beforeChange", function () {
        isSliding = true;
      });
      jQuery(sectionSlick).on("afterChange", function () {
        isSliding = false;
      });
      jQuery(".hp-videos img").click(function (e) {
        if (isSliding) {
          e.stopImmediatePropagation();
          e.stopPropagation();
          e.preventDefault();
          return;
        }
      });
    },

    initTestimonials: function () {
      //code here

      var sectionSlick = ".testimonials-slick";
      $(sectionSlick).slick({
        slidesToShow: 1,
        slideToScroll: 1,
        infinite: true,
        dots: false,
        autoplay: false,
        autoplaySpeed: 7000,
        speed: 1000,
        arrows: true,
        prevArrow: ".hp-testimonials .prev",
        nextArrow: ".hp-testimonials .next",
        rows: 1,
        responsive: [
          { breakpoint: 992, settings: { slidesToShow: 1 } },
          { breakpoint: 768, settings: { slidesToShow: 1 } },
        ],
      });
      var isSliding = false;
      jQuery(sectionSlick).on("beforeChange", function () {
        isSliding = true;
      });
      jQuery(sectionSlick).on("afterChange", function () {
        isSliding = false;
      });
      jQuery(".hp-testimonials img").click(function (e) {
        if (isSliding) {
          e.stopImmediatePropagation();
          e.stopPropagation();
          e.preventDefault();
          return;
        }
      });
    },

    initSocial: function () {
      //code here
    },

    initContact: function () {
      //code here
    },
  };

  jQuery(document).ready(function () {
    app.initAos();
    app.initNavigation();

    app.initSplitHeader();

    app.initSlideshow();

    app.initQuickSearch();

    app.initWelcome();

    app.initTeam();

    app.initProperties();

    app.initCommunities();

    app.initVideos();

    app.initTestimonials();

    app.initSocial();

    app.initContact();
  });

  jQuery(window).on("scroll", function () {
    app.initDetectScroll();
  });

  jQuery(window).on("load", function () {});

  jQuery(window).on("resize", function () {});
})();

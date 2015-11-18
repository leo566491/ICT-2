(function ($) {
    "use strict";

    $(window).load(function () {
        $("#loader").fadeOut("slow");
    });

    $(document).ready(function () {

        // ====================================================================

        // Header scroll function

        $(window).scroll(function () {
            var scroll = $(window).scrollTop();
            if (scroll > 50) {
                $("#header-background").slideDown(300);
            } else {
                $("#header-background").slideUp(300);
            }
        });

        // ====================================================================

        // Flex Menu

        $('.menu').flexMenu({
            breakpoint: 3000,
            responsivePattern: 'off-canvas',
            animationSpeed: 300
        });

        $(".fm-button").click(function () {
            if ($("header").css('left') == '0px') {
                $("header").stop().animate({
                    left: '240px'
                }, 300);
            }
            ;
            if ($("header").css('left') == '240px') {
                $("header").stop().animate({
                    left: '0px'
                }, 300);
            }
            ;
        });

        // ====================================================================

        // Searchbox

        if ($(document).width() > 480) {

            $("#searchbox").css({
                'opacity': '0',
                'position': 'relative',
                'top': '0',
                'width': '0'
            });

            $("#search a").click(function () {

                if ($("#searchbox").css('opacity') == '0') {
                    $("#searchbox").stop().animate({
                        opacity: '1',
                        position: 'relative',
                        top: '0',
                        width: '200px'
                    }, 300);
                }
                ;

                if ($("#searchbox").css('opacity') == '1') {
                    $("#searchbox").stop().animate({
                        opacity: '0',
                        position: 'relative',
                        top: '0',
                        width: '0px'
                    }, 300);
                }
                ;

            });

        }

        // Searchbox for smartphones
        else {

            $("#searchbox").css({
                'opacity': '0',
                'position': 'absolute',
                'top': '-62px',
                'width': '100%'
            });

            $("#search a").click(function () {

                if ($("#searchbox").css('opacity') == '0') {
                    $("#searchbox").stop().animate({
                        position: 'absolute',
                        top: '50px',
                        opacity: '1',
                        width: '100%'
                    }, 300);
                }
                ;

                if ($("#searchbox").css('opacity') == '1') {
                    $("#searchbox").stop().animate({
                        position: 'absolute',
                        top: '-62px',
                        opacity: '0',
                        width: '100%'
                    }, 300);
                }
                ;

            });

        }

        $(window).resize(function () {

            if ($(document).width() > 480) {

                $("#searchbox").css({
                    'opacity': '0',
                    'position': 'relative',
                    'top': '0',
                    'width': '0'
                });

                $("#search a").click(function () {

                    if ($("#searchbox").css('opacity') == '0') {
                        $("#searchbox").stop().animate({
                            opacity: '1',
                            position: 'relative',
                            top: '0',
                            width: '200px'
                        }, 300);
                    }
                    ;

                    if ($("#searchbox").css('opacity') == '1') {
                        $("#searchbox").stop().animate({
                            opacity: '0',
                            position: 'relative',
                            top: '0',
                            width: '0px'
                        }, 300);
                    }
                    ;

                });

            }

            // Searchbox for smartphones
            else {

                $("#searchbox").css({
                    'opacity': '0',
                    'position': 'absolute',
                    'top': '-62px',
                    'width': '100%'
                });

                $("#search a").click(function () {

                    if ($("#searchbox").css('opacity') == '0') {
                        $("#searchbox").stop().animate({
                            position: 'absolute',
                            top: '50px',
                            opacity: '1',
                            width: '100%'
                        }, 300);
                    }
                    ;

                    if ($("#searchbox").css('opacity') == '1') {
                        $("#searchbox").stop().animate({
                            position: 'absolute',
                            top: '-62px',
                            opacity: '0',
                            width: '100%'
                        }, 300);
                    }
                    ;

                });

            }

        });

        // ====================================================================

        // Slider

        $('#slider').css({
            'height': (($(window).height() - 0)) + 'px'
        });
        $(window).resize(function () {
            $('#slider').css({
                'height': (($(window).height() - 0)) + 'px'
            });
        });

        var Page = (function () {

            var $navArrows = $('#nav-arrows'),
                    $nav = $('#nav-dots > span'),
                    slitslider = $('#slider').slitslider({
                onBeforeChange: function (slide, pos) {

                    $nav.removeClass('nav-dot-current');
                    $nav.eq(pos).addClass('nav-dot-current');

                }
            }),
                    init = function () {

                        initEvents();

                    },
                    initEvents = function () {

                        // add navigation events
                        $navArrows.children(':last').on('click', function () {

                            slitslider.next();
                            return false;

                        });

                        $navArrows.children(':first').on('click', function () {

                            slitslider.previous();
                            return false;

                        });

                        $nav.each(function (i) {

                            $(this).on('click', function (event) {

                                var $dot = $(this);

                                if (!slitslider.isActive()) {

                                    $nav.removeClass('nav-dot-current');
                                    $dot.addClass('nav-dot-current');

                                }

                                slitslider.jump(i + 1);
                                return false;

                            });

                        });

                    };

            return {
                init: init
            };

        })();

        Page.init();

        // ====================================================================

        // Jobs

        $("#more-jobs").click(function () {
            $(this).toggleClass('on');
            $('.hidden-job').toggle(0);
        });

        // ====================================================================

        // Carousels

        $("#blog .owl-carousel").owlCarousel({
            margin: 20,
            loop: true,
            dots: false,
            nav: true,
            navText: ['<i class="fa fa-arrow-left fa-2x"></i>', '<i class="fa fa-arrow-right fa-2x"></i>'],
            responsive: {
                0: {
                    items: 1
                },
                767: {
                    items: 2
                }
            }
        });

        $("#testimonials .owl-carousel").owlCarousel({
            items: 1,
            loop: true,
            margin: 50,
            dots: false,
            autoplay: true,
            autoplaySpeed: 1500,
            nav: false
        });

        $("#clients .owl-carousel").owlCarousel({
            items: 5,
            margin: 50,
            loop: true,
            dots: false,
            nav: true,
            navText: ['<i class="fa fa-arrow-left fa-2x"></i>', '<i class="fa fa-arrow-right fa-2x"></i>'],
            responsive: {
                0: {
                    items: 1
                },
                481: {
                    items: 2
                },
                767: {
                    items: 3
                },
                992: {
                    items: 4
                },
                1200: {
                    items: 6
                }
            }
        });

        $("#team .owl-carousel").owlCarousel({
            items: 4,
            margin: 30,
            loop: true,
            dots: false,
            nav: true,
            navText: ['<i class="fa fa-arrow-left fa-2x"></i>', '<i class="fa fa-arrow-right fa-2x"></i>'],
            responsive: {
                0: {
                    items: 1
                },
                481: {
                    items: 2
                },
                767: {
                    items: 3
                },
                992: {
                    items: 4
                }
            }
        });

        // ====================================================================

        // Counterup

        $('.number').counterUp({
            delay: 10, // the delay time in ms
            time: 1000 // the speed time in ms
        });

        // ====================================================================

        // Form Elements + Form Sliders

        $('#years').noUiSlider({
            start: [3],
            connect: "lower",
            step: 1,
            range: {
                'min': 0,
                'max': 15
            },
            format: wNumb({
                decimals: 0
            })
        });

        $('#select-all').click(function (event) {
            if (this.checked) {
                // Iterate each checkbox
                $(':checkbox').each(function () {
                    this.checked = true;
                });
            } else {
                $(':checkbox').each(function () {
                    this.checked = false;
                });
            }
        });

        $("#years").Link('lower').to($("#years-field"));

        $('#salary').noUiSlider({
            start: [3000, 7000],
            connect: true,
            step: 1000,
            range: {
                'min': 0,
                'max': 20000
            },
            format: wNumb({
                decimals: 0,
                thousand: '.',
                prefix: '$'
            })
        });

        $("#salary").Link('lower').to($("#salary-field-lower"));
        $("#salary").Link('upper').to($("#salary-field-upper"));


        // ====================================================================

        // Bootstrap Wysiwyg

        $('.editor1').wysiwyg({
            toolbarSelector: '[data-role=editor1-toolbar]'
        });
        $('.editor2').wysiwyg({
            toolbarSelector: '[data-role=editor2-toolbar]'
        });
        $('.editor3').wysiwyg({
            toolbarSelector: '[data-role=editor3-toolbar]'
        });
        $('.editor4').wysiwyg({
            toolbarSelector: '[data-role=editor4-toolbar]'
        });
        $('.editor5').wysiwyg({
            toolbarSelector: '[data-role=editor5-toolbar]'
        });
        $('.dropdown-menu input').click(function () {
            return false;
        }).change(function () {
            $(this).parent('.dropdown-menu').siblings('.dropdown-toggle').dropdown('toggle');
        }).keydown('esc', function () {
            this.value = '';
            $(this).change();
        });

        // ====================================================================

        // Flickr Feed

        $('#flickr').jflickrfeed({
            limit: 9,
            qstrings: {
                id: '89775615@N00'
            },
            itemTemplate: '<li>' +
                    '<a href="{{image_b}}" class="fancybox" rel="gallery"><img src="{{image_s}}" alt="{{title}}" /></a>' +
                    '</li>'
        });

        // ====================================================================

        // Typed.js Plugin Uses To Type Words Automatically

        $(function () {
            $(".aboutCompany").typed({
                strings: ["We have been the pioneer Online Job Site in Asia Pacific since 2000 and today we operate in eight countries. We are a public listed company on the Main Board of Bursa Malaysia (JOBST) and have won many accolades, awards and recognitions such as Top 100 Companies KPMG’s Shareholder Value Award, Malaysia’s Top 30 Most Valuable Brands and 200 Best Companies Under a Billion by Forbes Asia, among others."],
                typeSpeed: 0
            });
            $(".postAJob").typed({
                strings: ["<h1>Post a Job</h1><h4>Find a Right Candidate</h4>"],
                typeSpeed: 40
            });
            $(".postAResume").typed({
                strings: ["<h1>Post a Resume</h1><h4>Find your perfect job</h4>"],
                typeSpeed: 40
            });
            $(".acc-com-type").typed({
                strings: ["<h1>Control Panel</h1><h4>Add, edit company information</h4>"],
                typeSpeed: 40
            });
            $(".acc-per-type").typed({
                strings: ["<h1>Control Panel</h1><h4>Add, edit your personal information</h4>"],
                typeSpeed: 40
            });
            $(".candidates-type").typed({
                strings: ["<h1>Candidates</h1><h4>Find your perfect match</h4>"],
                typeSpeed: 40
            });
            $(".jobs-type").typed({
                strings: ["<h1>Find a Job</h1><h4>There is no better place to start</h4>"],
                typeSpeed: 40
            });
            $(".testimonials-type").typed({
                strings: ["<h1>Testimonials</h1><h4>Kind words from happy members</h4>"],
                typeSpeed: 40
            });
        });

        // ====================================================================

        // Birthday Picker

        $.dobPicker({
            daySelector: '#dobday',
            /* Required */
            monthSelector: '#dobmonth',
            /* Required */
            yearSelector: '#dobyear',
            /* Required */
            dayDefault: 'Day',
            /* Optional */
            monthDefault: 'Month',
            /* Optional */
            yearDefault: 'Year',
            /* Optional */
            minimumAge: 10,
            /* Optional */
            maximumAge: 70 /* Optional */
        });

        // ====================================================================

        // Tokenfield Tag

        $('#tokenfield').tokenfield({
            autocomplete: {
                source: ['HTML', 'CSS', 'Photoshop', 'Office', 'Presentation', 'Front End Development', 'Management', 'Back End Development', 'Public Speaking'],
                delay: 100,
                beautify: true
            },
            showAutocompleteOnFocus: true
        })

        // Tokenfield Tag Check Duplicate

        $('#tokenfield').on('tokenfield:createtoken', function (event) {
            var existingTokens = $(this).tokenfield('getTokens');
            $.each(existingTokens, function (index, token) {
                if (token.value === event.attrs.value)
                    event.preventDefault();
            });
        });

        // ====================================================================

        // Fancybox

        $('.fancybox').fancybox({
            openEffect: 'none'
        });

        // ====================================================================

        // Register & Login

        $(".link-login").click(function () {
            $("#login").fadeIn(300);
            $("body").addClass("no-scroll");
        });

        $("#login .close").click(function () {
            $("#login").fadeOut(300);
            $("body").removeClass("no-scroll");
        });

        $(".link-register").click(function () {
            $("#register").fadeIn(300);
            $("body").addClass("no-scroll");
        });

        $("#register .close").click(function () {
            $("#register").fadeOut(300);
            $("body").removeClass("no-scroll");
        });

        // ====================================================================

        // Accordion

        function toggleChevron(e) {
            $(e.target)
                    .prev('.panel-heading')
                    .find("i.indicator")
                    .toggleClass('glyphicon-chevron-down glyphicon-chevron-up');
        }
        $('#accordion').on('hidden.bs.collapse', toggleChevron);
        $('#accordion').on('shown.bs.collapse', toggleChevron);

        // ====================================================================

        // Adding rows in forms

        // 1. Adding social networks

        var NewSocialNetwork = '<div class="row social-network"><div class="col-sm-6"><div class="form-group" id="resume-social-network-group"><label for="resume-social-network">Choose Social Network</label><select  class="form-control" id="resume-social-network"><option>Choose social network</option><option>Facebook</option><option>Twitter</option><option>Google+</option></select></div></div><div class="col-sm-6"><div class="form-group" id="resume-social-network-url-group"><label for="resume-social-network-url">URL</label><input type="text" class="form-control" id="resume-social-network-url" placeholder="http://"></div></div></div><div class="row"><div class="col-sm-12"><hr class="dashed"></div></div>'

        $("#add-social-network").click(function () {
            $(this).parent().parent().parent().before(NewSocialNetwork);
        });

        // 2. Adding experience

        var NewExperience = '<div class="row experience"><div class="col-sm-6"><div class="form-group" id="resume-employer-group"><label for="resume-employer">Employer</label><input type="text" class="form-control" id="resume-employer" placeholder="Company name"></div></div><div class="col-sm-6"><div class="form-group" id="resume-experience-dates-group"><label for="resume-experience-dates">Start/End Date</label><input type="text" class="form-control" id="resume-experience-dates" placeholder="e.g. April 2010 - June 2013"></div></div></div><div class="row"><div class="col-sm-6"><div class="form-group" id="resume-job-title-group"><label for="resume-job-title">Job Title</label><input type="text" class="form-control" id="resume-job-title" placeholder="e.g. Web Designer"></div></div><div class="col-sm-6"><div class="form-group" id="resume-responsibilities-group"><label for="resume-responsibilities">Responsibilities (Optional)</label><input type="text" class="form-control" id="resume-responsibilities" placeholder="e.g. Developing new websites"></div></div></div><div class="row"><div class="col-sm-12"><hr class="dashed"></div></div>'

        $("#add-experience").click(function () {
            $(this).parent().parent().parent().before(NewExperience);
        });

        // 3. Adding education

        var NewEducation = '<div class="row education"><div class="col-sm-6"><div class="form-group" id="resume-school-group"><label for="resume-school">School Name</label><input type="text" class="form-control" id="resume-school" placeholder="School name, city and country"></div></div><div class="col-sm-6"><div class="form-group" id="resume-education-dates-group"><label for="resume-education-dates">Start/End Date</label><input type="text" class="form-control" id="resume-education-dates" placeholder="e.g. April 2010 - June 2013"></div></div></div><div class="row"><div class="col-sm-6"><div class="form-group" id="resume-qualifications-group"><label for="resume-qualifications">Qualifications</label><input type="text" class="form-control" id="resume-qualifications" placeholder="e.g. Master Engineer"></div></div><div class="col-sm-6"><div class="form-group" id="resume-notes-group"><label for="resume-notes">Notes (Optional)</label><input type="text" class="form-control" id="resume-notes" placeholder="Any achievements"></div></div></div><div class="row"><div class="col-sm-12"><hr class="dashed"></div></div>'

        $("#add-education").click(function () {
            $(this).parent().parent().parent().before(NewEducation);
        });

        // ====================================================================

        // Scroll Reveal

        window.sr = new scrollReveal({
            reset: true,
            move: '50px',
            mobile: false
        });

        // ====================================================================

    })

})(jQuery);
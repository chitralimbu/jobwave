jQuery(document).ready(function ($) {
    ("use strict");

    $(".banner-slider")
        .slick({
            infinite: true,
            slidesToShow: 1,
            slidesToScroll: 1,
            autoplay: true,
            autoplaySpeed: 6000,
            fade: true,
            speed: 500,
            cssEase: "ease-in-out",
        })
        .slickAnimation();

    // For the header scroll
    $(window).scroll(function () {
        if ($(this).scrollTop() > 1) {
            $(".site-header").addClass("sticky");
        } else {
            $(".site-header").removeClass("sticky");
        }
    });

    // feature slider
    $(".jobs-slider").slick({
        infinite: false,
        slidesToShow: 3,
        slidesToScroll: 1,
        prevArrow: $(".jobs .arrow-prev"),
        nextArrow: $(".jobs .arrow-next"),
        responsive: [
            {
                breakpoint: 1024,
                settings: {
                    slidesToShow: 2,
                    slidesToScroll: 1,
                }
            },
            {
                breakpoint: 600,
                settings: {
                    slidesToShow: 1,
                    slidesToScroll: 1
                }
            }
        ]
    });

    // testimonials slider
    $(".testimonials-slider .slider-content").slick({
        infinite: false,
        slidesToShow: 1,
        slidesToScroll: 1,
        prevArrow: $(".testimonials .arrow-prev"),
        nextArrow: $(".testimonials .arrow-next"),
    });

    // testimonials slider
    $(".blogs-slider").slick({
        infinite: false,
        slidesToShow: 3,
        slidesToScroll: 1,
        prevArrow: $(".blogs .arrow-prev"),
        nextArrow: $(".blogs .arrow-next"),
        responsive: [
            {
                breakpoint: 1024,
                settings: {
                    slidesToShow: 2,
                    slidesToScroll: 1,
                }
            },
            {
                breakpoint: 600,
                settings: {
                    slidesToShow: 1,
                    slidesToScroll: 1
                }
            }
        ]
    });

    // Nice Select JS
    $(".niceSelect").niceSelect();

    // chart js
    if ($("#shareChart")[0]) {

        const ctx = $("#shareChart").get(0).getContext("2d");
        // share chart gradient
        let shareGradient = ctx.createLinearGradient(0, 0, 0, 400);
        shareGradient.addColorStop(0, "#31ABDF");
        shareGradient.addColorStop(1, "rgba(49, 171, 223, 0) ");
        // share prices array
        const shareMarketPrice = [0, 150000, 100000, 380000, 250000, 550000, 200000, 350000];

        // labels array
        const labels = ["1990", "1995", "2000", "2005", "2010", "2015", "2020", "2025"];

        // data
        const data = {
            labels,
            datasets: [
                {
                    data: shareMarketPrice,
                    label: "",
                    fill: true,
                    backgroundColor: shareGradient,
                    borderColor: "#31ABDF",
                    pointStyle: "circle",
                    pointRadius: 10,
                    pointHoverRadius: 15,
                },
            ],
        };

        // share chart options
        const shareChartOptions = {
            responsive: true,
            plugins: {
                legend: {
                    display: false,
                },
            },
            tooltips: {
                enabled: false,
            },
            elements: {
                line: {
                    tension: 0.45,
                },
            },
            scales: {
                // xAxes: [
                //     {
                //         gridLines: {
                //             display: false,
                //         },
                //     },
                // ],
                // yAxes: [
                //     {
                //         gridLines: {
                //             display: false,
                //         },
                //     },
                // ],
                x: {
                    title: {
                        display: true,
                        text: "YEAR",
                    },
                    grid: {
                        display: true,
                        drawOnChartArea: false,
                        drawTicks: true,
                        tickWidth: 11,
                        tickLength: 11,
                        color: "#3FAFDF",

                    },
                },
                y: {
                    title: {
                        display: true,
                        text: "SHARE VALUE",
                    },
                    ticks: {
                        // forces step size to be 50 units
                        stepSize: 100000,
                    },
                    min: 0,
                    grid: {
                        display: false,
                        drawOnChartArea: true,
                        drawTicks: true,
                        lineWidth: 5,
                        tickBorderDash: 5,
                    },
                    border: {
                        display: true,
                    },
                    // color: "#9BD0F5",
                },
            },
        };

        // share chart config
        const config = {
            type: "line",
            data,
            options: shareChartOptions,
        };
        const shareChart = new Chart(ctx, config);
    }


});

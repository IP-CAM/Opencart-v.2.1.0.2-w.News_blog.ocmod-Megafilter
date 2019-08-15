$(function () {
    $('.slider-iner').slick({
        arrows: false,
        dots: true
    });
    $('.advantages-iner').slick(
        {
            nextArrow: '<button type="button" class="slick-next"></button>',
            prevArrow: '<button type="button" class="slick-prev"></button>',
            slidesToShow: 6,
            arrows: false,
            dots: false,
            responsive: [
                {
                    breakpoint: 992,
                    settings: {
                        arrows: false,
                        dots: false,
                        slidesToShow: 3,
                        slidesToScroll: 3,
                    }
                },
                {
                    breakpoint: 767,
                    settings: {
                        slidesToShow: 2,
                        slidesToScroll: 2
                    }
                },
                {
                    breakpoint: 480,
                    settings: {
                        slidesToShow: 1,
                        slidesToScroll: 1
                    }
                }
            ]
        }
    );
    $('.prod-iner').slick({
        nextArrow: '<button type="button" class="slick-next"></button>',
        prevArrow: '<button type="button" class="slick-prev"></button>',
        slidesToShow: 4,
        dots: true,
        responsive: [
            {
                breakpoint: 992,
                settings: {
                    slidesToShow: 3,
                    slidesToScroll: 3,
                }
            },
            {
                breakpoint: 767,
                settings: {
                    slidesToShow: 2,
                    slidesToScroll: 2
                }
            },
            {
                breakpoint: 480,
                settings: {
                    slidesToShow: 1,
                    slidesToScroll: 1
                }
            }
            // You can unslick at a given breakpoint now by adding:
            // settings: "unslick"
            // instead of a settings object
        ]
    });

    $('.kart-left_slider').slick({
        arrows: false,
        dots: false,
        slidesToShow: 5,

    });
});

function menu() {
    let el = document.querySelector(".js_logo_btn");
    console.log(el);
    el.addEventListener('click', open);

    function open(ev) {

        console.log("open");

        document.body.classList.add("overlay");

        document.body.classList.add("active");
        document.querySelector(".hiden_menu").classList.add("active");
        var close_menu = document.body;
        console.log(close_menu);
        close_menu.addEventListener('click', close);

    }

    function close(ev) {
        console.log("close");
        console.log(ev.target);
        if (ev.target.matches(".close_btn")) {
            console.log("if true");
            document.querySelector(".hiden_menu").classList.remove("active");
            document.body.classList.remove("overlay");
            document.body.classList.remove("active");
        }

    }
}

function tab() {
    var btns = document.querySelector(".prod-togle");
    var col_tabs = document.querySelectorAll(".prod-items");
    var col_btns = document.querySelectorAll('.togle');
    console.log("work");
    btns.addEventListener('click', change);

    function change(ev) {


        if (ev.target.matches(".togle")) {
            if (ev.target.matches(".active")) {
            } else {
                for (var i = 0; i <= col_btns.length; i++) {
                    if (col_btns[i].classList.contains("active")) {
                        col_btns[i].classList.remove("active");
                        col_tabs[i].classList.remove("active");
                    }
                    if (col_btns[i] == ev.target) {
                        col_btns[i].classList.add("active");
                        col_tabs[i].classList.add("active");
                    }
                }
            }
        } else {
        }

    }


}

function open_li() {
    console.log("open_li");
    var el = document.querySelector(".hiden_menu_iner");
    console.log(el);
    el.addEventListener('click', open_iner);
    var el_footer = document.querySelector(".footer_top .items");

    console.log(el_footer);
    el_footer.addEventListener('click',open_iner_footer);
    function open_iner_footer(ev) {
        console.log("work_footer");
        console.log(ev.target);
        if (ev.target.matches(".title")) {
            ev = ev.target.nextElementSibling;
            console.log(ev);
            if (ev.matches(".active")) {
                ev.previousElementSibling.classList.remove("active");
                ev.classList.remove("active");
            } else {
                ev.previousElementSibling.classList.add("active");
                ev.classList.add("active");
            }

        }
    }
    function open_iner(ev) {
        console.log("work");
        console.log(ev.target);
        if (ev.target.matches(".item")) {
            ev = ev.target.nextElementSibling;
            console.log(ev);
            if (ev.matches(".active")) {
                ev.previousElementSibling.classList.remove("active");
                ev.classList.remove("active");
            } else {
                ev.previousElementSibling.classList.add("active");
                ev.classList.add("active");
            }

        }
    }

}

function open_select() {
    console.log("os");
    var ev = document.querySelector(".select");
    ev.addEventListener("click", function (el) {
        if (el.target.classList.contains("currency")) {
            if (el.target.classList.contains("active")) {
                el.target.classList.remove("active");
                el.target.nextElementSibling.classList.remove("active");

            } else {
                el.target.classList.add("active");
                el.target.nextElementSibling.classList.add("active");
            }
        } else if (el.target.classList.contains("lang")) {
            if (el.target.classList.contains("active")) {
                el.target.classList.remove("active");
                el.target.nextElementSibling.classList.remove("active");

            } else {
                el.target.classList.add("active");
                el.target.nextElementSibling.classList.add("active");
            }
        }
    })
}

function header_menu_media() {
    var el = document.querySelector(".js_header_bottom_menu_btn");
    el.addEventListener("click", function (ev) {

        if (ev.target.parentElement.nextElementSibling.classList.contains("active")) {
            ev.target.classList.remove("active");
            ev.target.parentElement.nextElementSibling.classList.remove("active")
        } else {
            ev.target.classList.add("active");
            ev.target.parentElement.nextElementSibling.classList.add("active");

        }
    });
    var inner_el = document.querySelector(".hidden_menu_inner");
    inner_el.addEventListener("click", function (event) {
        if (event.target.classList.contains("men") || event.target.classList.contains("women") || event.target.classList.contains("kid")) {
            if (event.target.nextElementSibling.classList.contains("active")) {
                event.target.classList.remove("active");
                event.target.nextElementSibling.classList.remove("active");
            } else {
                event.target.classList.add("active");
                event.target.nextElementSibling.classList.add("active");
            }
        }


    })
}

function all() {
    header_menu_media();
    menu();
    tab();
    open_li();
    open_select();



}

document.addEventListener("DOMContentLoaded", all);
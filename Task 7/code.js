/*
    File: assets/plugins.js
*/
e.prototype.postSlide = function(e) {
    var t = this;
    if (!t.unslicked && (t.$slider.trigger("afterChange", [t, e]),
            t.animating = !1,
            t.slideCount > t.options.slidesToShow && t.setPosition(),
            t.swipeLeft = null,
            t.options.autoplay && t.autoPlay(),
            t.options.accessibility === !0 && (t.initADA(),
                t.options.focusOnChange))) {
        var o = i(t.$slides.get(t.currentSlide));
        o.attr("tabindex", 0).focus()
    }
    /* My code */
    setTimeout(() => {
        var slide = t.$slides.get(t.currentSlide);
        slide.querySelector("h2").style.opacity = 1;
    }, 1000);
    /* END My code */
}
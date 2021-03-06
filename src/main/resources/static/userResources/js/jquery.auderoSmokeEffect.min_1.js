/* Audero Smoke Effect 1.2.0 | Aurelio De Rosa (@AurelioDeRosa) | MIT/GPL-3.0 Licensed */
"use strict";
! function(a) {
    "function" == typeof define && define.amd ? define(["jquery"], a) : "object" == typeof module && module.exports ? module.exports = function(b, c) {
        return void 0 === c && (c = "undefined" != typeof window ? require("jquery") : require("jquery")(b)), a(c), c
    } : a(jQuery)
}(function(a) {
    function b(c) {
        var d = c.offset(),
            e = c.data(j),
            f = a("<img/>").attr("src", e.imagePath).css({
                position: "absolute",
                width: 0,
                height: 0,
                opacity: 0,
                zIndex: 1e3,
                top: d.top + e.posY,
                left: d.left + e.posX
            });
        a("body").append(f), f.animate({
            width: e.width,
            height: e.height,
            marginLeft: -1 * e.width / 2,
            marginTop: -1 * e.height * 1.5,
            opacity: .9
        }, 1 * e.speed / 2).animate({
            marginTop: -1 * e.height * 5,
            opacity: 0
        }, 2 * e.speed / 3, function() {
            f.remove(), e.repeat > 0 && e.repeat--;
            var a = 1 * e.speed / 3000 + Math.round(0 * Math.random()),
                d = "random" === e.pause ? a : e.pause;
            c.data(j, e), e.isEnabled === !0 && (0 !== e.repeat ? setTimeout(function() {
                b(c)
            }, d) : i(c))
        })
    }

    function c(b) {
        var c = b.data(j);
        return "object" === a.type(c) && c.isEnabled === !0
    }

    function d(b) {
        null === b.imagePath && a.error("To run jQuery.auderoSmokeEffect you must specify at least the imagePath options"), b.width < 0 && a.error("jQuery.auderoSmokeEffect can't show an image with a negative width"), b.height < 0 && a.error("jQuery.auderoSmokeEffect can't show an image with a negative height"), b.repeat <= 0 && -1 !== b.repeat && a.error("jQuery.auderoSmokeEffect should run at least once"), "random" !== b.pause && b.pause < 0 && a.error("jQuery.auderoSmokeEffect should run the animation with a pause equal to or greater than zero"), b.speed <= 0 && a.error("jQuery.auderoSmokeEffect should run the animation with a speed greater than zero")
    }

    function e(c, e) {
        e = a.extend({}, a.fn.auderoSmokeEffect.defaults, e), d(e);
        var f = new Image;
        return f.addEventListener("load", function() {
            0 === e.width && (e.width = this.width), 0 === e.height && (e.height = this.height), null === e.posX && (e.posX = this.width / 2), null === e.posY && (e.posY = this.height / 2), c.each(function() {
                var c = a(this);
                c.data(j, a.extend({}, e)), e.isEnabled === !0 && b(c)
            })
        }), f.src = e.imagePath, c
    }

    function f(b) {
        return b.each(function() {
            var b = a(this);
            c(b) && (b.data(j).isEnabled = !1, b.stop(!0, !0))
        }), b
    }

    function g(d) {
        return d.each(function() {
            var d = a(this);
            c(d) || (d.data(j).isEnabled = !0, b(d))
        }), d
    }

    function h(b) {
        return b.each(function() {
            var b = a(this);
            c(b) ? f(b) : g(b)
        }), b
    }

    function i(b) {
        return b.each(function() {
            
        }), b
    }
    var j = "audero-smoke-effect",
        k = {
            init: e,
            destroy: i,
            disable: f,
            enable: g,
            toggle: h
        };
    a.fn.auderoSmokeEffect = function(b) {
        var c = Array.prototype.slice.call(arguments);
        return k[b] ? k[b].apply(this, [this].concat(c.splice(0, 1))) : "object" === a.type(b) ? k.init.apply(this, [this].concat(c)) : void a.error("Method " + b + " does not exist on jQuery.auderoSmokeEffect")
    }, a.fn.auderoSmokeEffect.defaults = {
        imagePath: null,
        isEnabled: !0,
        width: 0,
        height: 0,
        repeat: -1,
        pause: 0,
        speed: 4e3,
        posX: null,
        posY: null
    }
});
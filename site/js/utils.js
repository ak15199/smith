function rot13(str) {
    "use strict";
    
    return (String(str)).replace(/[a-zA-Z]/gi, function (s) {
        return String.fromCharCode(s.charCodeAt(0) + (s.toLowerCase() < 'n' ? 13 : -13));
    });
}

// 
// Perform ROT-13 on sensitive information to display
// to humans
//
function page_decode() {
    "use strict";

    $(".rot13").each(function () {
        $(this).text(rot13($(this).text()));
        $(this).attr("href", rot13($(this).attr("href")));
    });
}

//
// Add stying to image wrappers
//
function annotate_imgs() {
    "use strict";

    $("p > img").each(function() {
        $(this).parent().addClass("img-wrapper");

        // This prevents the defocus event from firing
        // on page load
        $(this).parent().mouseenter(function() {
            $(this).addClass("img-hovered")
        });
    });
}

$(document).ready(function () {
    "use strict";

    page_decode();
    annotate_imgs();
});

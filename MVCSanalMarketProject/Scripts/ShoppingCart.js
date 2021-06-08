$(document).ready(function () {
    $("ul#AcilirMenu li.acilir1").hover(function () {
        document.getElementById("Panel1").style.display = 'none';
        if (document.getElementById("Panel1").style.display != 'none') {
            $("div#Panel1").fadeOut("slow");
        }
        else {
            $("div#Panel1").fadeIn("slow");
        }
    }, function () {
        $("div#Panel1").fadeOut("slow");
        document.getElementById("Panel1").style.display = 'none';
    });
});
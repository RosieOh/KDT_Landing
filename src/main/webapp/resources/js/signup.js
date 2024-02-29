$(document).ready(function(){
    $("#ban_btn").click(function(){
        $(".sign_form_back").css("display", "block")
    })
    $("#close_btn").click(function(){
        $(".sign_form_back").css("display", "none")
    })
})

$(document).ready(function() {
    $(window).scroll(function () {
        if ($(this).scrollTop() > 250) {
            $('#gotop').show();
        } else {
            $('#gotop').hide();
        }
    });
});
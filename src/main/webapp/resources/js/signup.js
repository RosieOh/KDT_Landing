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

$(document).ready(function(){
$(".agree_wrap").off("click").on("click",function(){
    $(this).find(".scroll_wrap").slideToggle();

    if($(this).find(".toggle").hasClass("open")){
        $(this).find(".toggle").text("▼ 내용보기").removeClass("open");
    } else {
        $(this).find(".toggle").text("▲ 닫기").addClass("open");
    }
});

})
$(document).ready(function(){

    if ($("#sign_chek:checked").length == 0) {
    alert("개인정보 수집·이용 및 제공에 동의해주세요.");
    $("#"+typeGubunID).on("click",function(){
    $.fsave_layer_Submit(typeGubunID);
});
    $("#lgrmt12").focus();
    return;
}
})

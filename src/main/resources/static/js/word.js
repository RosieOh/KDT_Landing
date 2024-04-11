// 자기소개서 글자수 감지
$(".textarea").keyup(function (e) {
    var content = $(this).val();
    var charCount = content.length;

    // 글자수 세기
    $("#paperCount1 span").text(charCount);

    // 250자 미만이면
    if (charCount < 250) {
        // 경고창 표시
        alert("250자 이상 입력해주세요.");
    }

    // 1000자 이상이면
    if (charCount > 1000) {
        // 1000자로 제한하고
        $(this).val(content.substring(0, 1000));
        // 경고창 표시
        alert("1000자를 초과하여 더 이상 입력할 수 없습니다.");
    }
});
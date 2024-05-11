
package com.kdt.landing.domain.home;

import com.kdt.landing.domain.member.dto.MemberJoinDTO;
import com.kdt.landing.domain.member.repository.MemberRepository;
import com.kdt.landing.domain.member.service.MemberService;
import com.kdt.landing.global.oauth2.domain.PrincipalDetails;
import com.kdt.landing.global.oauth2.service.PrincipalDetailService;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;

import java.security.Principal;
import java.time.LocalDateTime;


@Slf4j
@Controller
@RequiredArgsConstructor
public class HomeController {
    private final MemberRepository memberRepository;
    private final MemberService memberService;



    @GetMapping("/")
    public String home(Principal principal,Model model) {
        memberService.createAdminMember(); // 관리자 회원 생성 메서드 호출
        return "index";
    }

    @GetMapping("/subSign_big")
    public String subSign_big(Model model) {
        return "main/sign/subSign_big";
    }

    @GetMapping("/subSign_full")
    public String subSign_full() { return "main/sign/subSign_full";  }

    @GetMapping("/subSign_pm")
    public String subSign_pm() {
        return "main/sign/subSign_pm";
    }


    @GetMapping("/java")
    public String fullStack(Model model) {
        return "sub/fullstack";
    }

    @GetMapping("/data")
    public String subBigData(Model model) {
        return "sub/bigdata";
    }

    @GetMapping("/pm")
    public String subPm(Model model) {
        return "sub/pm";
    }

    @GetMapping("login")
    public String Login(Model model){
        return "member/login";
    }

    @GetMapping("join")
    public String joinForm(Model model) {
        return "member/join";
    }

    @PostMapping("joinPro")
    public String join(Model model, MemberJoinDTO memberJoinDTO) {
        memberJoinDTO.setLoginAt(LocalDateTime.now());
        memberService.memberInsert(memberJoinDTO);
        model.addAttribute("msg", "천재IT교육센터에 오신 것을 환영합니다!");
        model.addAttribute("url", "/");
        return "member/alert";
    }

    @PostMapping("idCheckPro")
    public ResponseEntity idCheck(@RequestBody MemberJoinDTO memberJoinDTO) throws Exception {
        String email = memberJoinDTO.getEmail();
        boolean result = memberService.idCheck(email);
        return new ResponseEntity<>(result, HttpStatus.OK);
    }
}
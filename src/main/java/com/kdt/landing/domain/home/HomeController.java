
package com.kdt.landing.domain.home;

import com.kdt.landing.domain.member.repository.MemberRepository;
import com.kdt.landing.domain.member.service.MemberService;
import com.kdt.landing.global.oauth2.service.PrincipalDetailService;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import java.security.Principal;


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
    public String subSign_full(Model model, Principal principal, PrincipalDetailService principalDetailService) {
        log.info("principal --------" + principal);
        log.info("principal.getName() --------" + principal.getName());
        log.info("principalDetailService --------" + principalDetailService.toString());
        return "main/sign/subSign_full";
    }

    @GetMapping("/subSign_pm")
    public String subSign_pm(Model model) {
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
}
package com.kdt.landing.domain.member.controller;

import com.kdt.landing.domain.member.dto.MemberJoinDTO;
import com.kdt.landing.domain.member.entity.Member;
import com.kdt.landing.domain.member.repository.MemberRepository;
import com.kdt.landing.domain.member.service.MemberService;
import jakarta.validation.Valid;
import lombok.RequiredArgsConstructor;
import lombok.extern.log4j.Log4j2;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;

import java.security.Principal;
import java.util.Objects;

@Log4j2
@Controller
@RequiredArgsConstructor
public class MemberController {

    private final MemberService memberService;
    private final MemberRepository memberRepository;

    private final BCryptPasswordEncoder passwordEncoder;


    @GetMapping("/member/login")
    public String login(Model model, Principal principal) {
        model.addAttribute("memberJoinDTO", new MemberJoinDTO());
        return "member/login";
    }

    @GetMapping("/member/loginFail")
    public String loginFail(Model model) {
        model.addAttribute("msg", "로그인 실패! 다시 시도해 주세요!");
        model.addAttribute("url", "login");
        return "member/login";
    }

    @GetMapping("/member/join")
    public String join(Model model) {
        model.addAttribute("memberJoinDTO", new MemberJoinDTO());
        return "member/join";
    }

    @PostMapping("/member/joinPro")
    public String joinPOST(@Valid MemberJoinDTO memberJoinDTO, BindingResult bindingResult, Model model) {
        log.info("==============================================================================");
        log.info(memberJoinDTO);
//        String id = String.valueOf(memberJoinDTO.getId());
        String email = memberJoinDTO.getEmail();
        log.info("==============================================================================");
//        log.info("나와라!! " + id);
        Member existEmail = memberService.existByEmail(email);
        log.info("==============================================================================");
        log.info("나와라!! " + existEmail);

        if (existEmail != null) {
            bindingResult
                    .rejectValue("email", "error.email", "사용이 불가한 이메일입니다.");
        }

        if (!Objects.equals(memberJoinDTO.getPasswordConfirm(), memberJoinDTO.getPw())) {
            bindingResult.rejectValue("passwordConfirm", "error.passwordConfirm", "비밀번호와 비밀번호 확인이 다릅니다.");
        }

        if (bindingResult.hasErrors()) {
            System.out.println("error" + bindingResult.hasErrors());
            System.out.println("e" + bindingResult.getFieldError().getDefaultMessage());
            model.addAttribute("error", bindingResult.hasErrors());
            model.addAttribute("memberJoinDTO", memberJoinDTO);
            return "member/login";
        }

        memberService.join(memberJoinDTO);
        return "redirect:login";
    }

    @PostMapping("/idCheck")
    @ResponseBody
    public boolean idCheckAjax(@RequestBody Member member) {
        log.info("**************** name :"+member.getEmail());
        boolean result = false;
        Member member1 = memberService.existByEmail(member.getEmail());
        if(member1 != null) {
            result = false;
        } else {
            result = true;
        }
        return result;
    }

    @PostMapping("/emailCheck")
    @ResponseBody
    public boolean emailCheckAjax(@RequestParam("email") String email) {
        Member member = memberService.existByEmail(email);
        if(member!=null) {
            return false;
        } else {
            return true;
        }
    }


}
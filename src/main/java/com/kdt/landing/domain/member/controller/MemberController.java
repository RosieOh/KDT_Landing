package com.kdt.landing.domain.member.controller;

import com.kdt.landing.domain.member.dto.MemberJoinDTO;
import com.kdt.landing.domain.member.entity.Member;
import com.kdt.landing.domain.member.service.MemberService;
import com.kdt.landing.global.cosntant.Status;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.transaction.Transactional;
import lombok.RequiredArgsConstructor;
import lombok.extern.log4j.Log4j2;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.security.web.authentication.logout.SecurityContextLogoutHandler;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import java.security.Principal;

@Log4j2
@Controller
@RequiredArgsConstructor
@RequestMapping("/member/")
public class MemberController {

    private final MemberService memberService;
    private final BCryptPasswordEncoder passwordEncoder;

    @GetMapping("login")
    public String Login(Model model){
        return "member/login";
    }

    @GetMapping("active")
    public String active(Model model, HttpServletRequest request, HttpServletResponse response) {
        Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
        if(authentication != null) {
            new SecurityContextLogoutHandler().logout(request, response, authentication);
        }
        return "member/active";
    }

    @GetMapping("status")
    public String status(Model model, Principal principal) {

        String email = principal.getName();
        int pass = memberService.loginPro(email);
        if (pass == 1) {
            model.addAttribute("msg", "환영합니다! 로그인 되었습니다!");
            model.addAttribute("url", "/");
            return "member/alert";
        } else if(pass == 2) {
            model.addAttribute("msg", "해당 계정은 휴면계정입니다. 휴면을 해제해주세요.");
            model.addAttribute("url","/active");
            return "member/alert";
        } else if (pass == 3) {
            model.addAttribute("msg", "해당 계정은 탈퇴한 계정입니다.");
            model.addAttribute("url","/logout");
            return "member/alert";
        } else {
            model.addAttribute("msg", "로그인 정보가 맞지 않습니다.");
            model.addAttribute("url", "/member/login");
            return "member/alert";
        }
    }

    @GetMapping("join")
    public String joinForm(Model model) {
        return "member/join";
    }

    @PostMapping("joinPro")
    public String join(Model model, MemberJoinDTO memberJoinDTO) {
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

    @GetMapping("remove")
    public String remove(String email, Model model) {
        MemberJoinDTO memberJoinDTO = memberService.getEmail(email);
        memberJoinDTO.setStatus(Status.OUT);
        memberService.memberUpdate(memberJoinDTO);
        model.addAttribute("msg", "지금까지 감사합니다.");
        model.addAttribute("url", "/logout");
        return "/alert";
    }

    @PostMapping("changePw")
    public String changePassword(Model model, String pw, String email) {
        MemberJoinDTO memberJoinDTO = memberService.getEmail(email);
        memberJoinDTO.setPw(pw);
        memberService.memberChangePw(memberJoinDTO);
        model.addAttribute("url", 2);
        return "/alert";
    }

    // 카카오 로그인 시 정보 입력
    @GetMapping("addInfo")
    public String updateInfo(@RequestParam("id") Long id, Model model, Principal principal) {
        if(principal != null){
            MemberJoinDTO memberJoinDTO1 = memberService.getById(id);
            model.addAttribute("msg", memberJoinDTO1);
            return "member/update";
        } else {
            return "redirect:/";
        }
    }

    @PostMapping("addInfoPro")
    public String updateInfoPro(Model model, MemberJoinDTO memberJoinDTO, Principal principal) {
        log.info("principal ㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡ" + principal);
        log.info("principal.getName() ㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡ" + principal.getName());
//        String email = memberService.getEmail(principal.getName());
        memberService.memberUpdate(memberJoinDTO);
        model.addAttribute("msg", "회원 정보가 업데이트되었습니다.");
        model.addAttribute("msg", "회원 정보 업데이트에 실패하였습니다.");
        return "redirect:/";
    }

    // 카카오 로그인 시 정보 입력
    @Transactional
    @GetMapping("myPage")
    public String myPageInfo(@RequestParam("id") Long id, Model model) {
        MemberJoinDTO memberJoinDTO1 = memberService.getById(id);
        model.addAttribute("msg", memberJoinDTO1);
        return "member/mypage";
    }

    @Transactional
    @PostMapping("myPagePro")
    public String myPageInfoPro(Model model, MemberJoinDTO memberJoinDTO) {
        try {
            memberService.memberUpdate(memberJoinDTO);
            model.addAttribute("msg", "회원 정보가 업데이트되었습니다.");
        } catch (Exception e) {
            model.addAttribute("msg", "회원 정보 업데이트에 실패하였습니다.");
        }
        return "redirect:/";
    }
}
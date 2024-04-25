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
import java.time.LocalDateTime;

@Log4j2
@Controller
@RequiredArgsConstructor
@RequestMapping("/member/")
public class MemberController {

    private final MemberService memberService;
    private final BCryptPasswordEncoder passwordEncoder;

    @GetMapping("status")
    public String status(Model model, Principal principal) {
        String email = principal.getName();
        memberService.loginUpdate(email);
        model.addAttribute("msg", "환영합니다! 로그인 되었습니다!");
        model.addAttribute("url", "/");
        return "member/alert";
    }

    // 카카오 로그인 시 정보 입력
    @GetMapping("addInfo")
    public String updateInfo(Principal principal, Model model) {
        MemberJoinDTO memberJoinDTO = memberService.getEmail(principal.getName());
        if(memberJoinDTO.getLoginAt() == null){
            model.addAttribute("memberJoinDTO", memberJoinDTO);
            return "member/update";
        } else {
            memberService.loginUpdate(principal.getName());
            return "index";
        }
    }

    @PostMapping("addInfoPro")
    public String updateInfoPro(Model model, MemberJoinDTO memberJoinDTO) {
        memberJoinDTO.setLoginAt(LocalDateTime.now());
        memberService.memberUpdate(memberJoinDTO);
        return "redirect:/";
    }

}
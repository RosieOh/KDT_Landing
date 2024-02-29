package com.kdt.landing.domain.member.service;

import com.kdt.landing.domain.member.dto.MemberJoinDTO;
import com.kdt.landing.domain.member.entity.Member;
import org.springframework.security.crypto.password.PasswordEncoder;

public interface MemberService {
    void createAdminMember();

    static class MidExistException extends Exception {}
    Member existByEmail(String email);
    void join(MemberJoinDTO memberJoinDTO) ;

    void changePw(Member member);

    public PasswordEncoder passwordEncoder();

    boolean findEmail(String email);




}
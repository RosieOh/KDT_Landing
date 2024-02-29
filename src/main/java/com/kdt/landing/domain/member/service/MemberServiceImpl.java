package com.kdt.landing.domain.member.service;

import com.kdt.landing.domain.member.dto.MemberJoinDTO;
import com.kdt.landing.domain.member.entity.Member;
import com.kdt.landing.domain.member.repository.MemberRepository;
import com.kdt.landing.global.cosntant.Role;
import lombok.RequiredArgsConstructor;
import lombok.extern.log4j.Log4j2;
import org.modelmapper.ModelMapper;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;

import java.util.Collections;

@Log4j2
@Service
@RequiredArgsConstructor
public class MemberServiceImpl implements MemberService{

    private final ModelMapper modelMapper;

    private final MemberRepository memberRepository;

    private final PasswordEncoder passwordEncoder;

    @Override
    public void join(MemberJoinDTO memberJoinDTO) {
        log.info("MemberServiceㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡ" + memberJoinDTO);
        // Member 엔티티를 생성할 때 ID는 자동으로 생성되도록 변경

        memberJoinDTO.setPw(passwordEncoder.encode(memberJoinDTO.getPw()));
        memberJoinDTO.setRole(Role.STUDENT); // 기본 역할 설정
        Member newMember = modelMapper.map(memberJoinDTO, Member.class);
        log.info("ㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡ" + newMember);
        memberRepository.save(newMember);
    }

    @Override
    public void createAdminMember() {
        // 이미 존재하는 회원인지 확인
        if (!memberRepository.existsByEmail("admin@naver.com")) {
            // 관리자 계정 생성 및 초기 설정
            Member admin = Member.builder()
                    .pw(passwordEncoder.encode("1234"))
                    .name("Admin")
                    .nickname("관리자")
                    .email("admin@naver.com")
                    .active(1)
//                    .roleSet(Collections.singleton(Role.ADMIN))
                    .role(Role.ADMIN)
                    .build();

            memberRepository.save(admin);

            log.info("Admin 계정이 생성되었습니다.");
        } else {
            log.info("Admin 계정이 이미 존재합니다.");
        }
    }

    @Override
    public Member existByEmail(String email) {
        return memberRepository.existsMemberByEmail(email);
    }

    @Override
    public void changePw(Member member) {
        // 회원 비밀번호 변경
        Member existingMember = memberRepository.findById(member.getId())
                .orElseThrow(() -> new IllegalArgumentException("해당하는 회원을 찾을 수 없습니다."));
        existingMember.changePassword(passwordEncoder.encode(member.getPw()));
        memberRepository.save(existingMember);
    }

    @Override
    public PasswordEncoder passwordEncoder() {
        return this.passwordEncoder;
    }

    @Override
    public boolean findEmail(String email) {
        boolean pass = true;
        int cnt = 0;
        Member member = memberRepository.existsMemberByEmail(email);
        return false;
    }
}

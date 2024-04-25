package com.kdt.landing.global.oauth2.service;

import com.kdt.landing.domain.member.entity.Member;
import lombok.Getter;
import lombok.ToString;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.oauth2.core.user.OAuth2User;

import java.nio.file.attribute.UserPrincipal;
import java.util.Collection;
import java.util.Map;

@Getter
@ToString
public class PrincipalAuth implements UserPrincipal, OAuth2User {

    private Member member;
    private Map<String, Object> attributes;


    @Override
    public Map<String, Object> getAttributes() {
        return null;
    }

    @Override
    public Collection<? extends GrantedAuthority> getAuthorities() {
        return null;
    }

    @Override
    public String getName() {
        String email = attributes.get("account_email").toString();
        System.out.println("emailㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡ" + email);
        return email;
    }

}

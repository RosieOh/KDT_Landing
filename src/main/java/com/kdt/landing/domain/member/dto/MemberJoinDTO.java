package com.kdt.landing.domain.member.dto;

import com.kdt.landing.global.cosntant.Role;
import jakarta.persistence.*;
import jakarta.validation.constraints.Email;
import jakarta.validation.constraints.NotBlank;
import jakarta.validation.constraints.NotNull;
import lombok.Getter;
import lombok.Setter;
import lombok.ToString;
import org.hibernate.annotations.ColumnDefault;

@Getter
@Setter
@ToString
public class MemberJoinDTO {

<<<<<<< HEAD
//    private Long id;
=======
    private Long id;
>>>>>>> 948ed3d6b7135271b5bc92ce5693c0a636e372cc

    @NotBlank(message = "**")
    private String pw;

    @NotBlank(message = "**")
    private String name;

    @NotBlank(message = "**")
    @Email(message = "이메일 형식으로 입력해주세요.")
    private String email;

    @NotBlank(message = "**")
    private String code;

    @NotBlank(message = "**")
    private String nickname;

    @Enumerated(EnumType.STRING)
    private Role role;

    private String nowPassword;
    private String passwordConfirm;
}
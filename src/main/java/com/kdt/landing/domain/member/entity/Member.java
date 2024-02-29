package com.kdt.landing.domain.member.entity;

import com.kdt.landing.global.cosntant.BaseEntity;
import com.kdt.landing.global.cosntant.Role;
import jakarta.persistence.*;
import lombok.*;


import java.util.HashSet;
import java.util.Set;

@Entity
@Getter
@Setter
@Builder
@NoArgsConstructor
@AllArgsConstructor
<<<<<<< HEAD
@ToString(exclude = "roleSet")
=======
@ToString
//@ToString(exclude = "roleSet")
>>>>>>> 948ed3d6b7135271b5bc92ce5693c0a636e372cc
public class Member extends BaseEntity {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

<<<<<<< HEAD
    private String pw;

    @Column(nullable = false)
=======
    @Column(nullable = true)
    private String pw;

    @Column(nullable = true)
>>>>>>> 948ed3d6b7135271b5bc92ce5693c0a636e372cc
    private String name;

    @Column(nullable = true)
    private String nickname;

<<<<<<< HEAD
    @Column(unique = true, nullable = false)
=======
    @Column(unique = true, nullable = true)
>>>>>>> 948ed3d6b7135271b5bc92ce5693c0a636e372cc
    private String email;

    private int active;

<<<<<<< HEAD
    @ElementCollection(fetch = FetchType.LAZY)
    @Builder.Default
    private Set<Role> roleSet = new HashSet<>();

    @Enumerated(EnumType.STRING)
    @Builder.Default
    private Role role = Role.STUDENT; // 디폴트로 USER 권한을 갖도록 초기화
=======
    @Enumerated(EnumType.STRING)
    private Role role;

//    @ElementCollection(fetch = FetchType.LAZY)
//    @Builder.Default
//    private Set<Role> roleSet = new HashSet<>();
//
//    @Enumerated(EnumType.STRING)
//    @Builder.Default
//    private Role role = Role.STUDENT; // 디폴트로 USER 권한을 갖도록 초기화
>>>>>>> 948ed3d6b7135271b5bc92ce5693c0a636e372cc

    @Builder
    public Member(Long id, String pw, String name, String nickname, String email) {
        this.id = id;
        this.pw = pw;
        this.name = name;
        this.nickname = nickname;
        this.email = email;
    }

    public void changePassword(String pw) {
        this.pw = pw;
    }

    public void changeEmail(String email) {
        this.email = email;
    }

<<<<<<< HEAD
    public void addRole(Role role) {
        this.roleSet.add(role);
    }

    public void clearRoles() {
        this.roleSet.clear();
    }
=======
//    public void addRole(Role role) {
//        this.roleSet.add(role);
//    }
//
//    public void clearRoles() {
//        this.roleSet.clear();
//    }
>>>>>>> 948ed3d6b7135271b5bc92ce5693c0a636e372cc
}
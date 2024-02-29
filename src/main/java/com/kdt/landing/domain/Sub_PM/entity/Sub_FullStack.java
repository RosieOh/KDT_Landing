package com.kdt.landing.domain.Sub_PM.entity;

import com.kdt.landing.global.cosntant.BaseEntity;
import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Entity
@Setter
@Getter
@AllArgsConstructor
@NoArgsConstructor
public class Sub_FullStack extends BaseEntity {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long no;

    @Column(nullable = false)
    private String name;                              //신청자 이름

    @Column(nullable = false)
    private String age;                              //신청자 나이

    @Column(nullable = false)
    private String tel;                              //신청자 연락처

    @Column(nullable = false)
    private String email;                            //신청자 이메일

    @Column(nullable = false)
    private String recomment;                        //추천 전형

    @Column(nullable = false)
    private String degree;                           //최종학력

    @Column(nullable = false)
    private String graduation_degree;               //학교 및 전공명

    @Column(nullable = false)
    private String studen_card;                     // 내일배움카드 여부

    @Column(nullable = false)
    private String workup;                          // 국민취업제도 참여 경험

    @Column(nullable = false)
    private boolean kdt_process;                    // KDT 과정 수강이력

    @Column(nullable = false)
    private String coding_experience;               // 코딩 경험 여부

    @Column(nullable = false)
    private String paper1;                          // 자기소개서 1

    @Column(nullable = false)
    private String paper2;                          // 자기소개서 2

    @Column(nullable = false)
    private String paper3;                          // 자기소개서 3

    @Column(nullable = false)
    private String route;                           // 인입 경로


}

package com.kdt.landing.domain.Eduapply.entity;

import com.kdt.landing.global.cosntant.BaseEntity;
import com.kdt.landing.global.cosntant.Category;
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
public class EduApply extends BaseEntity {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long no;

    @Column(nullable = false)
    private String name;                    //신청자 이름

    @Column(nullable = false)
    private String age;                     //신청자 나이

    @Column(nullable = false)
    private String tel;                     //신청자 연락처

    @Column(nullable = false)
    private String email;                   //신청자 이메일

    @Column(nullable = false)
    private String comment;                 //요청사항

    @Enumerated(EnumType.STRING)
    private Category category;              //신청자 과목



}

package com.kdt.landing.domain.Eduapply.dto;

import com.kdt.landing.global.cosntant.Category;
import jakarta.persistence.Column;
import jakarta.persistence.EnumType;
import jakarta.persistence.Enumerated;
import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

import java.time.LocalDateTime;

@Setter
@Getter
@ToString
public class EduApplyDTO {

    private Long no;

    @Column(length = 100)
    private String name;

    @Column(length = 100)
    private String age;

    @Column(length = 100)
    private String tel;

    @Column(length = 100)
    private String email;

    @Column(length = 100)
    private String comment;

    @Enumerated(EnumType.STRING)
    private Category category;

    private LocalDateTime regDate;
    private LocalDateTime modDate;


}

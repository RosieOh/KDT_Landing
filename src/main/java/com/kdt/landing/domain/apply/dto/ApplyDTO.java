package com.kdt.landing.domain.apply.dto;

import com.kdt.landing.global.cosntant.Subject;
import jakarta.persistence.*;
import lombok.*;

import java.time.LocalDateTime;

@Setter
@Getter
@ToString
public class ApplyDTO {

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
    private Subject subject;

    private LocalDateTime regDate;
    private LocalDateTime modDate;


}

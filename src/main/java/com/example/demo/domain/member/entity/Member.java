package com.example.demo.domain.member.entity;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class Member {
    private Long id;
    private String email;
    private String password;
    private String name;
    private String phone;
    private String profile;

    public Member(String email, String password, String name, String phone, String profile) {
        this.email = email;
        this.password = password;
        this.name = name;
        this.phone = phone;
        this.profile = profile;
    }

}

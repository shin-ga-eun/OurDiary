package com.example.demo.domain.member.dto;

import lombok.Getter;
import lombok.Setter;

@Setter
@Getter
public class GetMemberDto {
    private String email;
    private String password;
    private String name;
    private String phone;
    private String profile;


}

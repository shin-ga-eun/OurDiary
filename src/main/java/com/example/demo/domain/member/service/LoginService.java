package com.example.demo.domain.member.service;

import com.example.demo.domain.member.dao.MemberDao;
import com.example.demo.domain.member.dto.LoginDto;
import com.example.demo.domain.member.entity.Member;
import org.springframework.beans.factory.annotation.Autowired;

public class LoginService {
    @Autowired
    private MemberDao memberDao;

    public Member login (LoginDto loginDto){
        Member member = memberDao.selectByEmail(loginDto.getEmail());
        return member;
    }
}

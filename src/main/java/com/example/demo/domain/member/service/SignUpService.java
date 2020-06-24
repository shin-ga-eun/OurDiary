package com.example.demo.domain.member.service;

import com.example.demo.domain.member.dao.MemberDao;
import com.example.demo.domain.member.dto.SignUpDto;
import com.example.demo.domain.member.entity.Member;
import com.sun.org.apache.xpath.internal.operations.Bool;
import org.springframework.beans.factory.annotation.Autowired;

public class SignUpService {
    @Autowired
    private MemberDao memberDao;

    public Boolean IsAlreadyMember (SignUpDto signUpDto){
        Boolean IsAlreadyMember = false;
        Member member = memberDao.selectByEmail(signUpDto.getEmail());

        if(member != null){
            IsAlreadyMember = true;
        }

        return IsAlreadyMember;
    }

    public void insert (SignUpDto signUpDto){
        memberDao.insert(signUpDto);
    }
}

package com.example.demo.domain.member.service;

import com.example.demo.domain.member.dao.MemberDao;
import com.example.demo.domain.member.dto.SignUpDto;
import com.example.demo.domain.member.dto.UpdateMemberDto;
import com.example.demo.domain.member.entity.Member;
import org.springframework.beans.factory.annotation.Autowired;

public class UpdateMemberService {
    @Autowired
    private MemberDao memberDao;

    public Boolean CorrectPassword (String email, UpdateMemberDto updateMemberDto){
        Boolean CorrectPassword = false;
        Member member = memberDao.selectByEmail(email);

        if(member.getPassword().equals(updateMemberDto.getPassword())){
            CorrectPassword = true;
        }

        return CorrectPassword;
    }

    public void update (UpdateMemberDto updateMemberDto){
        memberDao.update(updateMemberDto);
    }
}

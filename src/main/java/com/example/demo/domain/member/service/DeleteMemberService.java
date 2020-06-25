package com.example.demo.domain.member.service;

import com.example.demo.domain.member.dao.MemberDao;
import com.example.demo.domain.member.dto.UpdateMemberDto;
import com.example.demo.domain.member.entity.Member;
import org.springframework.beans.factory.annotation.Autowired;

public class DeleteMemberService {
    @Autowired
    private MemberDao memberDao;

    public Boolean CorrectPassword (String email, String password){
        Boolean CorrectPassword = false;
        Member member = memberDao.selectByEmail(email);

        if(member.getPassword().equals(password)){
            CorrectPassword = true;
        }

        return CorrectPassword;
    }


    public void delete (String email){
        memberDao.delete(email);
    }

}

package com.example.demo.domain.member.service;

import com.example.demo.domain.member.dao.MemberDao;
import com.example.demo.domain.member.dto.GetMemberDto;
import com.example.demo.domain.member.entity.Member;
import org.springframework.beans.factory.annotation.Autowired;

public class GetMemberService {
    @Autowired
    private MemberDao memberDao;

    public GetMemberDto info(String email) {
        Member member = memberDao.selectByEmail(email);
        GetMemberDto getMemberDto = new GetMemberDto();

        getMemberDto.setEmail(member.getEmail());
        getMemberDto.setPassword(member.getPassword());
        getMemberDto.setName(member.getName());
        getMemberDto.setPhone(member.getPhone());
        getMemberDto.setProfile(member.getProfile());

        return getMemberDto;
    }
}

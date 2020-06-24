package com.example.demo.domain.member.controller;

import com.example.demo.domain.member.dao.MemberDao;
import com.example.demo.domain.member.entity.Member;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import java.util.List;

@Controller
public class MainController {
    @Autowired
    private MemberDao memberDao;

    @GetMapping(value="list")
    public String list(Model model){
        List<Member> memberList = memberDao.selectAll();
        model.addAttribute("members", memberList);
        return "list";
    }
}

package com.example.demo.domain.diary.controller;

import com.example.demo.domain.diary.dao.DiaryDao;
import com.example.demo.domain.member.entity.Member;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller

public class MainHomeController {
    @Autowired
    private DiaryDao diaryDao;

    @GetMapping("/mainhome")
    public String mainhome(Model model) {
//        List<Member> memberList = memberDao.selectAll();
        return "mainhome";
    }

    @GetMapping("/logout")
    public String logout(Model model) {
        return "logout";
    }

}
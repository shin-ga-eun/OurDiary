package com.example.demo.domain.member.controller;

import com.example.demo.domain.member.dao.MemberDao;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class SignUpController {
    @Autowired
    private MemberDao memberDao;

    @RequestMapping("/signUp")
    public String signUp(Model model) {


        return "signUp";
    }

}

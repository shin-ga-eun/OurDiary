package com.example.demo.domain.member.controller;

import com.example.demo.domain.member.dto.SignUpDto;
import com.example.demo.domain.member.service.SignUpService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

@Controller
public class SignUpController {
    @Autowired
    private SignUpService signUpService;

    @GetMapping("/signUp")
    public String signUpForm() {
        return "signUp";
    }

    @PostMapping("/signUpCheck")
    public String signUp(Model model, SignUpDto signUpDto) {
        Boolean IsAlreadyMember = signUpService.IsAlreadyMember(signUpDto);

        if(signUpDto.getEmail().equals("") || signUpDto.getPassword().equals("") || signUpDto.getName().equals("")){
            model.addAttribute("SIGNUP_OK", "null");
        }
        else if (IsAlreadyMember) {
            model.addAttribute("SIGNUP_OK", "IsAlreadyMember");
        }
        else {
            signUpService.insert(signUpDto);
            model.addAttribute("SIGNUP_OK", "success");
        }

        return "signUpCheck";
    }

}

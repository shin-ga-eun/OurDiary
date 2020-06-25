package com.example.demo.domain.diary.controller;

import com.example.demo.domain.diary.dao.DiaryDao;
import com.example.demo.domain.diary.dto.GetDiaryDto;
import com.example.demo.domain.diary.dto.SearchDiaryDto;
import com.example.demo.domain.diary.service.GetDiaryService;
import com.example.demo.domain.member.entity.Member;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttribute;

import java.util.List;

@Controller
public class MainHomeController {
    @Autowired
    GetDiaryService getDiaryService;

    @GetMapping("/mainhome")
    public String mainhome(@SessionAttribute("sessionEmail") String email, Model model) {
        List<GetDiaryDto> list = getDiaryService.getAllByWriter(email);

        if(list != null) {
            for (int i = 0; i < list.size(); i++) {
                System.out.println(list.get(i).getDate());
            }
            model.addAttribute("diaryList", list);
        }
        else {
            System.out.println("no diary");
        }

        return "mainhome";
    }

    @GetMapping("/logout")
    public String logout(Model model) {
        return "logout";
    }

}

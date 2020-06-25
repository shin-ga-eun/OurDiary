package com.example.demo.domain.diary.controller;

import com.example.demo.domain.diary.dao.DiaryDao;
import com.example.demo.domain.diary.dto.WriteDiaryDto;
import com.example.demo.domain.diary.service.WriteDiaryService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

@Controller
public class DiaryController {
    @Autowired
    WriteDiaryService writeDiaryService;

    @GetMapping("/diary")
    public String diary_form (){
        return "diary";
    }

    @PostMapping("/diary")
    public String diary_input (Model model, WriteDiaryDto writeDiaryDto){
        Boolean IsAlreadyDiary = writeDiaryService.IsAlreadyDiary(writeDiaryDto);

        if(IsAlreadyDiary) {
            model.addAttribute("WRITE_OK", "IsAlreadyDiary");
        }
        else {
            writeDiaryService.insert(writeDiaryDto);
            model.addAttribute("WRITE_OK", "success");
        }

        return "writeDiaryCheck";
    }


}

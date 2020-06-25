package com.example.demo.domain.diary.controller;

import com.example.demo.domain.diary.dao.DiaryDao;
import com.example.demo.domain.diary.dto.GetDiaryDto;
import com.example.demo.domain.diary.dto.UpdateDiaryDto;
import com.example.demo.domain.diary.dto.WriteDiaryDto;
import com.example.demo.domain.diary.service.DeleteDiaryService;
import com.example.demo.domain.diary.service.GetDiaryService;
import com.example.demo.domain.diary.service.UpdateDiaryService;
import com.example.demo.domain.diary.service.WriteDiaryService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

@Controller
public class DiaryController {
    @Autowired
    WriteDiaryService writeDiaryService;
    @Autowired
    GetDiaryService getDiaryService;
    @Autowired
    UpdateDiaryService updateDiaryService;
    @Autowired
    DeleteDiaryService deleteDiaryService;

    @GetMapping("/diary")
    public String diary_form (){
        return "diary";
    }

    @GetMapping("/diary/detail")
    public String diary_detail (@RequestParam(value="id", required=true) Long id, Model model){
        GetDiaryDto diary = getDiaryService.getDiaryDetail(id);
        model.addAttribute("diaryId", ""+id);
        model.addAttribute("diary", diary);

        return "diaryDetail";
    }

    @GetMapping("/diary/detail/info")
    public String diary_detail_update (@RequestParam(value="id", required = true) Long id, Model model){
        GetDiaryDto diary = getDiaryService.getDiaryDetail(id);
        model.addAttribute("diaryId", ""+id);
        model.addAttribute("diary", diary);

        return "diaryUpdate";
    }

    @PostMapping("/diaryCheck")
    public String diary_detail_update_check (@RequestParam(value="id", required = true) Long id, Model model, UpdateDiaryDto updateDiaryDto){
        updateDiaryService.update(id, updateDiaryDto);
        model.addAttribute("UPDATE_OK", "success");

        return "diaryUpdateCheck";
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

    //삭제하기
    @GetMapping("/diary/detail/delete")
    public String delete_diary(@RequestParam("id") Long id, Model model) {
        deleteDiaryService.delete(id);
        model.addAttribute("DELETE_OK","success");
        return "diaryDeleteCheck";
    }


}

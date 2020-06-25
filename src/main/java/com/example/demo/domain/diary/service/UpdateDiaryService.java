package com.example.demo.domain.diary.service;

import com.example.demo.domain.diary.dao.DiaryDao;
import com.example.demo.domain.diary.dto.UpdateDiaryDto;
import org.springframework.beans.factory.annotation.Autowired;

public class UpdateDiaryService {
    @Autowired
    DiaryDao diaryDao;

    public void update (Long id, UpdateDiaryDto updateDiaryDto){
        diaryDao.update(id, updateDiaryDto);
    }
}


package com.example.demo.domain.diary.service;

import com.example.demo.domain.diary.dao.DiaryDao;
import org.springframework.beans.factory.annotation.Autowired;

public class DeleteDiaryService {
    @Autowired
    DiaryDao diaryDao;

    public void delete (Long id){
        diaryDao.delete(id);
    }

}

package com.example.demo.domain.diary.service;

import com.example.demo.domain.diary.dao.DiaryDao;
import com.example.demo.domain.diary.dto.GetDiaryDto;
import com.example.demo.domain.diary.dto.WriteDiaryDto;
import com.example.demo.domain.diary.entity.Diary;
import org.springframework.beans.factory.annotation.Autowired;

import java.time.LocalDate;

public class WriteDiaryService {
    @Autowired
    DiaryDao diaryDao;

    public Boolean IsAlreadyDiary (WriteDiaryDto writeDiaryDto){
        Boolean IsAlreadyDiary = false;
        LocalDate regDate = diaryDao.stringToLocalDate(writeDiaryDto.getDate());
        GetDiaryDto getDiaryDto = diaryDao.selectByWriterAndDate(writeDiaryDto.getWriter(), regDate);

        if(getDiaryDto != null){
            IsAlreadyDiary = true;
        }
        return IsAlreadyDiary;
    }

    public void insert (WriteDiaryDto writeDiaryDto){
        diaryDao.insert(writeDiaryDto);
    }
}

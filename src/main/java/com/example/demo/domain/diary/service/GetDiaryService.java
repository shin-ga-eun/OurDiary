package com.example.demo.domain.diary.service;

import com.example.demo.domain.diary.dao.DiaryDao;
import com.example.demo.domain.diary.dto.GetDiaryDto;
import org.springframework.beans.factory.annotation.Autowired;

import java.util.List;

public class GetDiaryService {
    @Autowired
    DiaryDao diaryDao;

    public GetDiaryDto getDiaryDetail (Long id){
        return diaryDao.selectById(id);
    }

    public List<GetDiaryDto> getAllByWriter (String writer){
        return diaryDao.selectAllByWriter(writer);
    }

    public List<GetDiaryDto> getAllByWriterAndKeyword (String writer, String keyword){ return diaryDao.selectAllByWriterAndKeyword(writer, keyword); }

}

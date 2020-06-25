package com.example.demo.domain.diary.dto;

import lombok.Getter;
import lombok.Setter;

import java.time.LocalDate;
import java.util.Date;

@Getter
@Setter
public class GetDiaryDto {
    private Long id;
    private String date;
    private String title;
    private String content;
    private String weather;
    private String create_at;
    private String modify_at;

}

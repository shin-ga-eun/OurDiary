package com.example.demo.domain.diary.dto;

import lombok.Getter;
import lombok.Setter;

import java.time.LocalDate;
import java.util.Date;

@Getter
@Setter
public class GetDiaryDto {
    private LocalDate date;
    private String title;
    private String content;
    private String weather;
    private Date create_at;
    private Date modify_at;
}

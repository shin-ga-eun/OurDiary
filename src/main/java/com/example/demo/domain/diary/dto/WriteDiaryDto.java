package com.example.demo.domain.diary.dto;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class WriteDiaryDto {
    private String writer;
    private String date;
    private String title;
    private String content;
    private String weather;
}

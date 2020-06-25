package com.example.demo.domain.diary.entity;

import lombok.Getter;
import lombok.Setter;

import java.util.Date;

@Getter
@Setter
public class Diary {
    private long id;
    private String writer;
    private Date date;
    private String title;
    private String content;
    private String weather;
    private Date create_at;
    private Date modify_at;

    public Diary(String writer, Date date, String title, String content, String weather, Date create_at, Date modify_at) {
        this.writer = writer;
        this.date = date;
        this.title = title;
        this.content = content;
        this.weather = weather;
        this.create_at = create_at;
        this.modify_at = modify_at;
    }
}

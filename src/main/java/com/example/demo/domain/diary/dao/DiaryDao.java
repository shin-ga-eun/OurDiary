package com.example.demo.domain.diary.dao;

import org.springframework.jdbc.core.JdbcTemplate;

import javax.sql.DataSource;

public class DiaryDao {
    private JdbcTemplate jdbcTemplate;
    public DiaryDao(DataSource dataSource){
        this.jdbcTemplate = new JdbcTemplate(dataSource);
    }



}

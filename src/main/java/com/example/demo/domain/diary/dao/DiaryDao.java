package com.example.demo.domain.diary.dao;

import com.example.demo.domain.diary.dto.GetDiaryDto;
import com.example.demo.domain.diary.dto.SearchDiaryDto;
import com.example.demo.domain.diary.dto.WriteDiaryDto;
import com.example.demo.domain.diary.entity.Diary;
import org.springframework.data.relational.core.sql.In;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;

import javax.sql.DataSource;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.time.LocalDate;
import java.util.Date;
import java.util.List;
import java.util.StringTokenizer;

public class DiaryDao {
    private JdbcTemplate jdbcTemplate;
    public DiaryDao(DataSource dataSource){
        this.jdbcTemplate = new JdbcTemplate(dataSource);
    }

    //select a diary by id
    public GetDiaryDto selectById (Long id){
        GetDiaryDto getDiaryDto = new GetDiaryDto();

        List<GetDiaryDto> results = jdbcTemplate.query("select * from diary where id=? order by date asc",
                new RowMapper<GetDiaryDto>() {
                    @Override
                    public GetDiaryDto mapRow(ResultSet rs, int rowNum) throws SQLException {
                        getDiaryDto.setDate(rs.getDate("date").toString());
                        getDiaryDto.setTitle(rs.getString("title"));
                        getDiaryDto.setWeather(rs.getString("weather"));
                        getDiaryDto.setContent(rs.getString("content"));
                        getDiaryDto.setCreate_at(rs.getDate("create_at").toString());
                        getDiaryDto.setModify_at(rs.getDate("modify_at").toString());

                        return getDiaryDto;
                    }
                }, id);

        if(results.isEmpty()){
            return null;
        }

        return results.get(0);
    }

    // select a diary by writer and date
    public GetDiaryDto selectByWriterAndDate (String writer, LocalDate date){
        GetDiaryDto getDiaryDto = new GetDiaryDto();

        List<GetDiaryDto> results = jdbcTemplate.query("select * from diary where writer=? and date=? order by date asc",
                new RowMapper<GetDiaryDto>() {
                    @Override
                    public GetDiaryDto mapRow(ResultSet rs, int rowNum) throws SQLException {

                        getDiaryDto.setDate(rs.getDate("date").toString());
                        getDiaryDto.setTitle(rs.getString("title"));
                        getDiaryDto.setWeather(rs.getString("weather"));
                        getDiaryDto.setContent(rs.getString("content"));
                        getDiaryDto.setCreate_at(rs.getDate("create_at").toString());
                        getDiaryDto.setModify_at(rs.getDate("modify_at").toString());

                        return getDiaryDto;
                    }
                }, writer, date);

        if(results.isEmpty()){
            return null;
        }

        return results.get(0);
    }

    //select diary list by writer
    public List<GetDiaryDto> selectAllByWriter(String writer) {
        List<GetDiaryDto> results = jdbcTemplate.query("select id, date, title, content, weather, create_at, modify_at from diary where writer=?",
                new RowMapper<GetDiaryDto>() {
                    @Override
                    public GetDiaryDto mapRow(ResultSet rs, int rowNum) throws SQLException {
                        GetDiaryDto getDiaryDto = new GetDiaryDto();

                        getDiaryDto.setId(rs.getLong("id"));
                        getDiaryDto.setTitle(rs.getString("title"));
                        getDiaryDto.setDate(rs.getDate("date").toString());
                        getDiaryDto.setWeather(rs.getString("weather"));
                        getDiaryDto.setContent(rs.getString("content"));
                        getDiaryDto.setCreate_at(rs.getDate("create_at").toString());
                        getDiaryDto.setModify_at(rs.getDate("modify_at").toString());

                        return getDiaryDto;
                    }
                }, writer);

        return results.isEmpty() ? null : results;
    }


    //select diary list by writer and section (year, month)
    public List<GetDiaryDto> selectAllByWriterAndSection (SearchDiaryDto searchDiaryDto) {
        LocalDate section = stringToLocalDate(searchDiaryDto.getDate());

        List<GetDiaryDto> results = jdbcTemplate.query("select date, title from diary where writer=? and date(date) >= ? and date(date) < ? order by date asc",
                new RowMapper<GetDiaryDto>() {
                    @Override
                    public GetDiaryDto mapRow(ResultSet rs, int rowNum) throws SQLException {
                        GetDiaryDto getDiaryDto = new GetDiaryDto();
                        getDiaryDto.setDate(rs.getDate("date").toString());
                        getDiaryDto.setTitle(rs.getString("title"));
                        return getDiaryDto;
                    }
                }, searchDiaryDto.getWriter(), section, LocalDate.of(section.getYear(),section.getMonthValue()+1,1));

        if(results.isEmpty()){
            return null;
        }

        return results;

    }

    // insert diary
    public Boolean insert (WriteDiaryDto writeDiaryDto){
        Date now = new Date();

        if(selectByWriterAndDate(writeDiaryDto.getWriter(), stringToLocalDate(writeDiaryDto.getDate())) == null){
            jdbcTemplate.update("insert diary (writer,date,title,content,weather, create_at, modify_at) values (?,?,?,?,?,?,?)",
                    writeDiaryDto.getWriter(), writeDiaryDto.getDate(), writeDiaryDto.getTitle(), writeDiaryDto.getContent(), writeDiaryDto.getWeather(), now, now);
            return true;
        }

        return false;

    }

    //String to LocalDate
    public LocalDate stringToLocalDate (String str){
        StringTokenizer st = new StringTokenizer(str, "-");
        int year = Integer.parseInt(st.nextToken());
        int month = Integer.parseInt(st.nextToken());
        int day = Integer.parseInt(st.nextToken());
        LocalDate regDate = LocalDate.of(year,month,day);

        return regDate;
    }


}

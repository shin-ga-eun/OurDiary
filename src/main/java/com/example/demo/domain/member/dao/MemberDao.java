package com.example.demo.domain.member.dao;

import com.example.demo.domain.member.entity.Member;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;

import javax.sql.DataSource;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

public class MemberDao {
    private JdbcTemplate jdbcTemplate;
    public MemberDao(DataSource dataSource){
        this.jdbcTemplate = new JdbcTemplate(dataSource);
    }

    public List<Member> selectAll() {
        System.out.println("MemberDao is running");
        List<Member> results = jdbcTemplate.query("select * from member",
                new RowMapper<Member>() {
                    @Override
                    public Member mapRow(ResultSet rs, int rowNum) throws SQLException {
                        Member member = new Member(
                                rs.getString("email"),
                                rs.getString("password"),
                                rs.getString("name"),
                                rs.getString("phone"),
                                rs.getString("profile"));
                        member.setId(rs.getLong("id"));
                        return member;
                    }
                });
        return results.isEmpty() ? null : results;
    }
}

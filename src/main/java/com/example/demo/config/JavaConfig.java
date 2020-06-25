package com.example.demo.config;

import com.example.demo.domain.diary.dao.DiaryDao;
import com.example.demo.domain.member.dao.MemberDao;
import com.example.demo.domain.member.service.*;
import org.apache.tomcat.jdbc.pool.DataSource;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

@Configuration
public class JavaConfig {
    @Bean(destroyMethod="close")
    public DataSource dataSource() {
        DataSource ds = new DataSource();
        ds.setDriverClassName("com.mysql.cj.jdbc.Driver");
        ds.setUrl("jdbc:mysql://localhost/mydiary?characterEncoding=utf8&serverTimezone=UTC");
        ds.setUsername("root");
        ds.setPassword("1234");
        ds.setMaxActive(10);
        ds.setTestWhileIdle(true);
        ds.setMinEvictableIdleTimeMillis(60000*3);
        ds.setTimeBetweenEvictionRunsMillis(10*1000);
        return ds;
    }

    @Bean
    public MemberDao memberDao(){
        return new MemberDao(dataSource());
    }

    @Bean
    public LoginService loginService(){
        return new LoginService();
    }

    @Bean
    public SignUpService signUpService(){
        return new SignUpService();
    }

    @Bean
    public GetMemberService getMemberService() { return new GetMemberService(); }

    @Bean
    public UpdateMemberService updateMemberService() { return new UpdateMemberService(); }

    @Bean
    public DeleteMemberService memberService() { return new DeleteMemberService(); }

    @Bean
    public DiaryDao diaryDao(){
        return new DiaryDao(dataSource());
    }

}

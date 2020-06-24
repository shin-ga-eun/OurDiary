package com.example.demo.domain.member.entity;


public class Member {
    private Long id;
    private String email;
    private String password;
    private String name;
    private String phone;
    private String profile;

    public Member(String email, String password, String name, String phone, String profile) {
        this.email = email;
        this.password = password;
        this.name = name;
        this.phone = phone;
        this.profile = profile;
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getProfile() {
        return profile;
    }

    public void setProfile(String profile) {
        this.profile = profile;
    }
}

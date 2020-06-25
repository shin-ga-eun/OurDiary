package com.example.demo.domain.member.controller;

import com.example.demo.domain.member.dao.MemberDao;
import com.example.demo.domain.member.dto.GetMemberDto;
import com.example.demo.domain.member.dto.SignUpDto;
import com.example.demo.domain.member.dto.UpdateMemberDto;
import com.example.demo.domain.member.entity.Member;
import com.example.demo.domain.member.service.DeleteMemberService;
import com.example.demo.domain.member.service.GetMemberService;
import com.example.demo.domain.member.service.UpdateMemberService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttribute;

import javax.jws.WebParam;
import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
public class MemberController {
    @Autowired
    private GetMemberService getMemberService;
    @Autowired
    private UpdateMemberService updateMemberService;
    @Autowired
    private DeleteMemberService deleteMemberService;

//    @RequestMapping("/list")
//    public String list(Model model){
//        List<Member> memberList = memberDao.selectAll();
//        model.addAttribute("members", memberList);
//        return "list";
//    }

    //mypage 조회
    @GetMapping("/memberInfo")
    public String info(@SessionAttribute("sessionEmail") String email, Model model) {
        GetMemberDto memberInfo = getMemberService.info(email);
        model.addAttribute("sessionMemberInfo", memberInfo);

        return "mypage";
    }

    //mypage 수정
    @GetMapping("/mypage")
    public String info_update_page(@SessionAttribute("sessionEmail") String email, Model model) {
        GetMemberDto memberInfo = getMemberService.info(email);
        model.addAttribute("sessionMemberInfo", memberInfo);
        return "mypageUpdate";
    }

    @PostMapping("/mypage")
    public String info_update_check(@SessionAttribute("sessionEmail") String email, Model model, UpdateMemberDto updateMemberDto) {
        Boolean CorrectPassword = updateMemberService.CorrectPassword(email, updateMemberDto);

        if (!CorrectPassword) {
            model.addAttribute("UPDATE_OK", "WrongPassword");
        } else {
            updateMemberService.update(updateMemberDto);
            model.addAttribute("UPDATE_OK", "success");
            model.addAttribute("UPDATE_USERNAME", updateMemberDto.getName());
        }

        return "mypageUpdateCheck";
    }

    //탈퇴하기
    @GetMapping("/leave")
    public String leave() {
        return "leave";
    }

    @PostMapping("/leaveCheck")
    public String leave_check(@SessionAttribute("sessionEmail") String email, String password, Model model) {
        Boolean CorrectPassword = deleteMemberService.CorrectPassword(email, password);

        if(!CorrectPassword){
            model.addAttribute("LEAVE_OK", "wrongPassword");
        } else {
            model.addAttribute("LEAVE_OK", "success");
            deleteMemberService.delete(email);

        }
        return "leaveCheck";
    }
}

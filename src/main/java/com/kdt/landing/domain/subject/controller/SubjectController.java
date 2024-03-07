package com.kdt.landing.domain.subject.controller;

import com.kdt.landing.domain.subject.dto.SubjectDTO;
import com.kdt.landing.domain.subject.service.SubjectService;
import lombok.RequiredArgsConstructor;
import lombok.extern.log4j.Log4j2;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Log4j2
@Controller
@RequestMapping("/sub_FullStack")
@RequiredArgsConstructor
public class SubjectController {

    private final SubjectService subFullStackService;

    //리스트
    @GetMapping("/list")
    public String applyList(Model model) throws Exception{
        List<SubjectDTO> subFullStackDTOList = subFullStackService.findAll();
        model.addAttribute("subFullStackDTOList", subFullStackDTOList);
        return "sub_FullStack/list";
    }

    //등록
    @PostMapping("/register")
    public String applyRegister(Model model, SubjectDTO subFullStackDTO)throws Exception{
        subFullStackService.register(subFullStackDTO);
        return "sub_FullStack/list";
    }

    //상태변경
    @PostMapping("/statusModify")
    public String applyStatus(Model model, SubjectDTO subFullStackDTO) throws Exception{
        subFullStackService.modify(subFullStackDTO);
        return "redirect:/";
    }

}
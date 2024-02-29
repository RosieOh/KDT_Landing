package com.kdt.landing.domain.Sub_PM.controller;

import com.kdt.landing.domain.Sub_PM.dto.Sub_FullStackDTO;
import com.kdt.landing.domain.Sub_PM.service.Sub_PMService;
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
@RequestMapping("/sub_PM")
@RequiredArgsConstructor
public class Sub_PMController {

    private final Sub_PMService subFullStackService;

    //리스트
    @GetMapping("/list")
    public String applyList(Model model) throws Exception{
        List<Sub_FullStackDTO> subFullStackDTOList = subFullStackService.findAll();
        model.addAttribute("subFullStackDTOList", subFullStackDTOList);
        return "sub_FullStack/list";
    }

    //등록
    @PostMapping("/register")
    public String applyRegister(Model model, Sub_FullStackDTO subFullStackDTO)throws Exception{
        subFullStackService.register(subFullStackDTO);
        return "sub_FullStack/list";
    }

    //상태변경
    @PostMapping("/statusModify")
    public String applyStatus(Model model, Sub_FullStackDTO subFullStackDTO) throws Exception{
        subFullStackService.modify(subFullStackDTO);
        return "redirect:/";
    }

}
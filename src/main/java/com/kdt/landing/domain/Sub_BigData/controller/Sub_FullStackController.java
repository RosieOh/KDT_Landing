package com.kdt.landing.domain.Sub_BigData.controller;

import com.kdt.landing.domain.Sub_BigData.dto.Sub_BigDataDTO;
import com.kdt.landing.domain.Sub_BigData.service.Sub_BigDataService;
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
public class Sub_FullStackController {

    private final Sub_BigDataService subFullStackService;

    //리스트
    @GetMapping("/list")
    public String applyList(Model model) throws Exception{
        List<Sub_BigDataDTO> subFullStackDTOList = subFullStackService.findAll();
        model.addAttribute("subFullStackDTOList", subFullStackDTOList);
        return "sub_FullStack/list";
    }

    //등록
    @PostMapping("/register")
    public String applyRegister(Model model, Sub_BigDataDTO subFullStackDTO)throws Exception{
        subFullStackService.register(subFullStackDTO);
        return "sub_FullStack/list";
    }

    //상태변경
    @PostMapping("/statusModify")
    public String applyStatus(Model model, Sub_BigDataDTO subFullStackDTO) throws Exception{
        subFullStackService.modify(subFullStackDTO);
        return "redirect:/";
    }

}
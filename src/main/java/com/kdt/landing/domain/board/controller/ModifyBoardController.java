package com.kdt.landing.domain.board.controller;

import com.kdt.landing.domain.board.dto.BoardDTO;
import com.kdt.landing.domain.board.service.BoardService;
import com.kdt.landing.domain.file.dto.FileDTO;
import com.kdt.landing.domain.file.service.FileService;
import com.kdt.landing.domain.member.entity.Member;
import com.kdt.landing.domain.member.repository.MemberRepository;
import com.kdt.landing.domain.member.service.MemberService;
import com.kdt.landing.global.util.MD5Generator;
import jakarta.validation.Valid;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.core.io.FileSystemResource;
import org.springframework.core.io.Resource;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import java.io.File;
import java.nio.file.Files;
import java.security.Principal;
import java.util.List;
import java.util.Optional;

@Slf4j
@Controller
@RequiredArgsConstructor
@RequestMapping("/modifyBoard")
public class ModifyBoardController {

    @Value("${upload.path}")
    private String uploadPath;

    private final MemberService memberService;
    private final MemberRepository memberRepository;
    private final BoardService boardService;
    private final FileService fileService;

    @GetMapping(value = {"/list", "/"})
    public String noticeListAll(Model model, Principal principal) {
        String boardType = "MODIFY";
        List<BoardDTO> boardList = boardService.findByBoardType(boardType);
        model.addAttribute("boardList", boardList);
        String email = principal.getName();
        Optional<Member> optionalMember = memberRepository.findByEmail2(email);
        log.info("=================================optionalMember : " + optionalMember);
        if (optionalMember.isPresent()) {
            Member member = optionalMember.get();
            String name = member.getName();
            model.addAttribute("name", name);
        }
        model.addAttribute("principal", principal);
        return "modifyBoard/list";
    }

    @GetMapping("/read")
    public String  readModifyBoard(Long id, Model model, Principal principal) {
        BoardDTO boardDTO = boardService.findById(id);
        FileDTO fileDTO = fileService.getFile(boardDTO.getFileId());
        String email = principal.getName();
        Optional<Member> optionalMember = memberRepository.findByEmail2(email);
        log.info("=================================optionalMember : " + optionalMember);
        if (optionalMember.isPresent()) {
            Member member = optionalMember.get();
            String name = member.getName();
            model.addAttribute("name", name);
        }
        model.addAttribute("principal", principal);
        model.addAttribute("fileList", fileDTO);
        model.addAttribute("boardList", boardDTO);
        return "modifyBoard/view";
    }


    @GetMapping("/register")
    public String registerForm(Model model, Principal principal) {
        String email = principal.getName();
        Optional<Member> optionalMember = memberRepository.findByEmail2(email);
        log.info("=================================optionalMember : " + optionalMember);
        if (optionalMember.isPresent()) {
            Member member = optionalMember.get();
            String name = member.getName();
            model.addAttribute("name", name);
        }
        return "modifyBoard/register";
    }

    @PostMapping("/register")
    public String noticeRegister(@Valid BoardDTO boardDTO,
                                 BindingResult bindingResult,
                                 RedirectAttributes redirectAttributes,
                                 @RequestParam("file") MultipartFile files) {
        try {
            String originFilename = files.getOriginalFilename();
            String filename = new MD5Generator(originFilename).toString();
            String savePath = System.getProperty("user.dir") + "/files/";
            log.info("어디로 가니?  " + savePath);
            if(!new java.io.File(savePath).exists()) {
                try {
                    new java.io.File(savePath).mkdirs();
                }
                catch (Exception e) {
                    e.printStackTrace();
                }
            }
            String filePath = savePath + filename;

            files.transferTo(new File(filePath));

            FileDTO fileDTO = new FileDTO();
            fileDTO.setOriginFileName(originFilename);
            fileDTO.setFileName(filename);
            fileDTO.setFilePath(filePath);

            Long fileId = fileService.saveFile(fileDTO);
            boardDTO.setFileId(fileId);
            boardDTO.setWriter(boardDTO.getWriter());
            boardService.register(boardDTO);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return "redirect:/modifyBoard/list";
    }

    @GetMapping("/modify")
    public String modifyForm(Long id, Model model, Principal principal) {
        BoardDTO boardDTO = boardService.findById(id);
        model.addAttribute("boardDTO", boardDTO);
        String email = principal.getName();
        Optional<Member> optionalMember = memberRepository.findByEmail2(email);
        log.info("=================================optionalMember : " + optionalMember);
        if (optionalMember.isPresent()) {
            Member member = optionalMember.get();
            String name = member.getName();
            model.addAttribute("name", name);
        }
        return "notice/edit";
    }

    @PostMapping("/modify")
    public String modify(@Valid BoardDTO boardDTO,
                         BindingResult bindingResult,
                         RedirectAttributes redirectAttributes) {
        if(bindingResult.hasErrors()) {
            redirectAttributes.addFlashAttribute("errors", bindingResult.getAllErrors());
            redirectAttributes.addFlashAttribute("id", boardDTO.getId());
        }

        boardService.modify(boardDTO);
        redirectAttributes.addFlashAttribute("result", "modified");
        redirectAttributes.addAttribute("id", boardDTO.getId());
        return "redirect:/modifyBoard/read";
    }

    @RequestMapping(value = "/remove", method = {RequestMethod.GET, RequestMethod.POST})
    public String remove(Long id, RedirectAttributes redirectAttributes) {
        log.info("remove post.. " + id);
        boardService.remove(id);
        redirectAttributes.addFlashAttribute("result", "removed");
        return "redirect:/modifyBoard/list";
    }

    private void removeFiles(List<String> files) {
        for (String fileName:files) {
            Resource resource = new FileSystemResource(uploadPath + File.separator + fileName);
            String resourceName = resource.getFilename();
            try {
                String contentType = Files.probeContentType(resource.getFile().toPath());
                resource.getFile().delete();
                if (contentType.startsWith("image")) {
                    File thumbnailFile = new File(uploadPath + File.separator+"s_"+ fileName);
                    thumbnailFile.delete();
                }
            } catch (Exception e) {
                log.error(e.getMessage());
            }
        }
    }
}

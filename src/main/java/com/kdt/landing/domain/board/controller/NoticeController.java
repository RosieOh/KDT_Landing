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
@RequestMapping("/notice")
public class NoticeController {

    @Value("${upload.path}")
    private String uploadPath;

    private final MemberService memberService;
    private final MemberRepository memberRepository;
    private final BoardService boardService;
    private final FileService fileService;

    @GetMapping(value = {"/list", "/"})
    public String noticeListAll(Model model, Principal principal) {
        String boardType = "NOTICE";
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
        return "notice/list";
    }

    @GetMapping("/read")
    public String readNotice(Long id, Model model, Principal principal) {
        if (id != null) {
            BoardDTO boardDTO = boardService.findById(id);
            if (boardDTO != null) {
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
            } else {
                log.info("fileDTO" + fileService);
            }
        }
        return "notice/view";
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
        return "notice/register";
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
        return "redirect:/notice/list";
    }

//    @GetMapping("/modify")
//    public String modifyForm(Long id, Model model, Principal principal) {
//        BoardDTO boardDTO = boardService.findById(id);
//        model.addAttribute("boardDTO", boardDTO);
//        String email = principal.getName();
//        Optional<Member> optionalMember = memberRepository.findByEmail2(email);
//        log.info("=================================optionalMember : " + optionalMember);
//        // Optional 객체가 비어 있는지 확인하고 처리
//        if (optionalMember.isPresent()) {
//            Member member = optionalMember.get();
//            String name = member.getName();
//            model.addAttribute("name", name);
//        }
//        return "notice/edit";
//    }

    @GetMapping("/modify")
    public String noticeEditForm(Model model, Long id) {
        BoardDTO boardDTO = boardService.getBoard(id);
        model.addAttribute("boardDTO", boardDTO);
        return "notice/edit";
    }

    @PostMapping("/modify")
    public String noticeEdit(BoardDTO boardDTO){
//        boardDTO.setId(id); // BoardDTO에 id 설정
        Long id = boardDTO.getId();
        boardService.modify(boardDTO);
        return "redirect:/notice/read?id="+id;
    }



//    @PostMapping("/modify")
//    public String modify(@Valid BoardDTO boardDTO,
//                         BindingResult bindingResult,
//                         RedirectAttributes redirectAttributes) {
//        if(bindingResult.hasErrors()) {
//            redirectAttributes.addFlashAttribute("errors", bindingResult.getAllErrors());
//            redirectAttributes.addFlashAttribute("id", boardDTO.getId());
//        }
//
//        boardService.modify(boardDTO);
//        redirectAttributes.addFlashAttribute("result", "modified");
//        redirectAttributes.addAttribute("id", boardDTO.getId());
//        return "redirect:/notice/read";
//    }

//    @PostMapping("/modify/{id}")
//    public String modify(@Valid BoardDTO boardDTO,
//                         BindingResult bindingResult,
//                         RedirectAttributes redirectAttributes) {
//        if (boardDTO == null) {
//            // boardDTO가 null이면 처리할 작업 수행
//            // 예를 들어 오류 메시지를 추가하고 다른 경로로 리디렉션할 수 있습니다.
//            return "redirect:/error-page"; // 오류 페이지로 리디렉션
//        }
//
//        if(bindingResult.hasErrors()) {
//            redirectAttributes.addFlashAttribute("errors", bindingResult.getAllErrors());
//            redirectAttributes.addFlashAttribute("id", boardDTO.getId());
//        }
//
//        boardService.modify(boardDTO);
//        redirectAttributes.addFlashAttribute("result", "modified");
//        redirectAttributes.addAttribute("id", boardDTO.getId());
//        return "redirect:/notice/read";
//    }

//    @PostMapping("/modify")
//    public String modify(@PathVariable("id") Long id, BoardDTO boardDTO) {
//        BoardDTO boardDTO1 = boardService.findById(id);
//        boardDTO1.setTitle(boardDTO.getTitle());
//        boardDTO1.setContent(boardDTO.getContent());
//        boardDTO1.setFileId(boardDTO.getFileId());
//        boardService.register(boardDTO1);
//        return "redirect:/notice/list";
//    }

//    @PostMapping("/modify")
//    public String modify(@PathVariable("id") Long id, BoardDTO boardDTO) {
//        BoardDTO boardDTO1 = boardService.findById(id);
//        boardDTO1.setTitle(boardDTO.getTitle());
//        boardDTO1.setContent(boardDTO.getContent());
//        boardDTO1.setFileId(boardDTO.getFileId());
//        boardService.register(boardDTO1);
//        return "redirect:/notice/list";
//    }



    @RequestMapping(value = "/remove", method = {RequestMethod.GET, RequestMethod.POST})
    public String remove(Long id, RedirectAttributes redirectAttributes) {
        log.info("remove post.. " + id);
        boardService.remove(id);
        redirectAttributes.addFlashAttribute("result", "removed");
        return "redirect:/notice/list";
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

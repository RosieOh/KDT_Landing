package com.kdt.landing.domain.Sub_PM.service;

import com.kdt.landing.domain.Sub_PM.dto.Sub_FullStackDTO;
import com.kdt.landing.domain.Sub_PM.entity.Sub_FullStack;
import com.kdt.landing.domain.Sub_PM.repository.Sub_FullStackRepository;
import jakarta.transaction.Transactional;
import lombok.extern.log4j.Log4j2;
import org.modelmapper.ModelMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;
import java.util.stream.Collectors;

@Log4j2
@Service
@Transactional
public class Sub_FullStackServiceImpl implements Sub_FullStackService {

    @Autowired
    private Sub_FullStackRepository subFullStackRepository;

    @Autowired
    private ModelMapper modelMapper;

    @Autowired
    private PasswordEncoder passwordEncoder;

    @Override
    public List<Sub_FullStackDTO> findAll() throws Exception {
        List<Sub_FullStack> subFullStackList = subFullStackRepository.findAll();
        List<Sub_FullStackDTO> subFullStackDTOList = subFullStackList.stream().map(
                        subFullStack -> modelMapper.map(subFullStack, Sub_FullStackDTO.class))
                .collect(Collectors.toList());
        return subFullStackDTOList;
    }

    @Override
    public Sub_FullStackDTO findById(Long no) throws Exception {
        Optional<Sub_FullStack> subFullStack = subFullStackRepository.findById(no);
        Sub_FullStackDTO subFullStackDTO = modelMapper.map(subFullStack, Sub_FullStackDTO.class);
        return subFullStackDTO;
    }

    @Override
    public void register(Sub_FullStackDTO subFullStackDTO) throws Exception {
        String emailEn = passwordEncoder.encode(subFullStackDTO.getEmail());
        String telEn = passwordEncoder.encode(subFullStackDTO.getTel());
        subFullStackDTO.setEmail(emailEn);
        subFullStackDTO.setTel(telEn);
        Sub_FullStack subFullStack = modelMapper.map(subFullStackDTO, Sub_FullStack.class);
        subFullStackRepository.save(subFullStack);
    }

    @Override
    public void modify(Sub_FullStackDTO subFullStackDTO) throws Exception {
        Sub_FullStack subFullStack = modelMapper.map(subFullStackDTO, Sub_FullStack.class);
        subFullStackRepository.save(subFullStack);
    }

    @Override
    public boolean emailCheck(String email) throws Exception {
        return false;
    }

}

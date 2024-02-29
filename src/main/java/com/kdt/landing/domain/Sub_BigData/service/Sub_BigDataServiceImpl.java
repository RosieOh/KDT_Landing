package com.kdt.landing.domain.Sub_BigData.service;

import com.kdt.landing.domain.Sub_BigData.dto.Sub_BigDataDTO;
import com.kdt.landing.domain.Sub_BigData.entity.Sub_BigData;
import com.kdt.landing.domain.Sub_BigData.repository.Sub_BigDataRepository;
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
public class Sub_BigDataServiceImpl implements Sub_BigDataService {

    @Autowired
    private Sub_BigDataRepository subFullStackRepository;

    @Autowired
    private ModelMapper modelMapper;

    @Autowired
    private PasswordEncoder passwordEncoder;

    @Override
    public List<Sub_BigDataDTO> findAll() throws Exception {
        List<Sub_BigData> subFullStackList = subFullStackRepository.findAll();
        List<Sub_BigDataDTO> subFullStackDTOList = subFullStackList.stream().map(
                        subFullStack -> modelMapper.map(subFullStack, Sub_BigDataDTO.class))
                .collect(Collectors.toList());
        return subFullStackDTOList;
    }

    @Override
    public Sub_BigDataDTO findById(Long no) throws Exception {
        Optional<Sub_BigData> subFullStack = subFullStackRepository.findById(no);
        Sub_BigDataDTO subFullStackDTO = modelMapper.map(subFullStack, Sub_BigDataDTO.class);
        return subFullStackDTO;
    }

    @Override
    public void register(Sub_BigDataDTO subFullStackDTO) throws Exception {
        String emailEn = passwordEncoder.encode(subFullStackDTO.getEmail());
        String telEn = passwordEncoder.encode(subFullStackDTO.getTel());
        subFullStackDTO.setEmail(emailEn);
        subFullStackDTO.setTel(telEn);
        Sub_BigData subFullStack = modelMapper.map(subFullStackDTO, Sub_BigData.class);
        subFullStackRepository.save(subFullStack);
    }

    @Override
    public void modify(Sub_BigDataDTO subFullStackDTO) throws Exception {
        Sub_BigData subFullStack = modelMapper.map(subFullStackDTO, Sub_BigData.class);
        subFullStackRepository.save(subFullStack);
    }

    @Override
    public boolean emailCheck(String email) throws Exception {
        return false;
    }

}

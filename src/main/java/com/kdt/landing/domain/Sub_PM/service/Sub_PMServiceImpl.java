package com.kdt.landing.domain.Sub_PM.service;

import com.kdt.landing.domain.Sub_PM.dto.Sub_PMDTO;
import com.kdt.landing.domain.Sub_PM.entity.Sub_PM;
import com.kdt.landing.domain.Sub_PM.repository.Sub_PMRepository;
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
public class Sub_PMServiceImpl implements Sub_PMService {

    @Autowired
    private Sub_PMRepository subFullStackRepository;

    @Autowired
    private ModelMapper modelMapper;

    @Autowired
    private PasswordEncoder passwordEncoder;

    @Override
    public List<Sub_PMDTO> findAll() throws Exception {
        List<Sub_PM> subFullStackList = subFullStackRepository.findAll();
        List<Sub_PMDTO> subFullStackDTOList = subFullStackList.stream().map(
                        subFullStack -> modelMapper.map(subFullStack, Sub_PMDTO.class))
                .collect(Collectors.toList());
        return subFullStackDTOList;
    }

    @Override
    public Sub_PMDTO findById(Long no) throws Exception {
        Optional<Sub_PM> subFullStack = subFullStackRepository.findById(no);
        Sub_PMDTO subFullStackDTO = modelMapper.map(subFullStack, Sub_PMDTO.class);
        return subFullStackDTO;
    }

    @Override
    public void register(Sub_PMDTO subFullStackDTO) throws Exception {
        String emailEn = passwordEncoder.encode(subFullStackDTO.getEmail());
        String telEn = passwordEncoder.encode(subFullStackDTO.getTel());
        subFullStackDTO.setEmail(emailEn);
        subFullStackDTO.setTel(telEn);
        Sub_PM subFullStack = modelMapper.map(subFullStackDTO, Sub_PM.class);
        subFullStackRepository.save(subFullStack);
    }

    @Override
    public void modify(Sub_PMDTO subFullStackDTO) throws Exception {
        Sub_PM subFullStack = modelMapper.map(subFullStackDTO, Sub_PM.class);
        subFullStackRepository.save(subFullStack);
    }

    @Override
    public boolean emailCheck(String email) throws Exception {
        return false;
    }

}

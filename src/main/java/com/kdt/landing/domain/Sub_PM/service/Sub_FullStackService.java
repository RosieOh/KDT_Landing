package com.kdt.landing.domain.Sub_PM.service;


import com.kdt.landing.domain.Sub_PM.dto.Sub_FullStackDTO;

import java.util.List;

public interface Sub_FullStackService {


    public List<Sub_FullStackDTO> findAll() throws Exception;
    public Sub_FullStackDTO findById(Long no) throws Exception;
    public void register(Sub_FullStackDTO subFullStackDTO) throws Exception;
    public void modify(Sub_FullStackDTO subFullStackDTO) throws Exception;
    public boolean emailCheck(String email) throws Exception;


}

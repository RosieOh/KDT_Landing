package com.kdt.landing.domain.Sub_BigData.service;


import com.kdt.landing.domain.Sub_BigData.dto.Sub_BigDataDTO;

import java.util.List;

public interface Sub_BigDataService {


    public List<Sub_BigDataDTO> findAll() throws Exception;
    public Sub_BigDataDTO findById(Long no) throws Exception;
    public void register(Sub_BigDataDTO subFullStackDTO) throws Exception;
    public void modify(Sub_BigDataDTO subFullStackDTO) throws Exception;
    public boolean emailCheck(String email) throws Exception;


}

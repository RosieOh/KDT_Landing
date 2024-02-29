package com.kdt.landing.domain.Sub_PM.service;


import com.kdt.landing.domain.Sub_PM.dto.Sub_PMDTO;

import java.util.List;

public interface Sub_PMService {


    public List<Sub_PMDTO> findAll() throws Exception;
    public Sub_PMDTO findById(Long no) throws Exception;
    public void register(Sub_PMDTO subFullStackDTO) throws Exception;
    public void modify(Sub_PMDTO subFullStackDTO) throws Exception;
    public boolean emailCheck(String email) throws Exception;


}

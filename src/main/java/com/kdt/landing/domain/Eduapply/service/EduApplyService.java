package com.kdt.landing.domain.Eduapply.service;

import com.kdt.landing.domain.apply.dto.ApplyDTO;

import java.util.List;

public interface EduApplyService {


    public List<ApplyDTO> findAll() throws Exception;
    public ApplyDTO findById(Long no) throws Exception;
    public void register(ApplyDTO applyDTO) throws Exception;
    public void modify(ApplyDTO applyDTO) throws Exception;
    public boolean emailCheck(String email) throws Exception;


}

package com.kdt.landing.domain.subject.service;


import com.kdt.landing.domain.subject.dto.SubjectDTO;
import com.kdt.landing.domain.subject.entity.Subject;

import java.util.List;

public interface SubjectService {


    public List<SubjectDTO> findAll() throws Exception;
    public SubjectDTO findById(Long no) throws Exception;
    public void register(SubjectDTO subFullStackDTO) throws Exception;
    public void modify(SubjectDTO subFullStackDTO) throws Exception;
    public boolean emailCheck(String email) throws Exception;

    public List<SubjectDTO> getFullStackSubjects();
    public List<SubjectDTO> getPMSubjects();
    public List<SubjectDTO> getBigDataSubjects();



}

package com.kdt.landing.domain.Eduapply.repository;

import com.kdt.landing.domain.apply.entity.Apply;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface EduApplyRepository extends JpaRepository<Apply, Long> {

}
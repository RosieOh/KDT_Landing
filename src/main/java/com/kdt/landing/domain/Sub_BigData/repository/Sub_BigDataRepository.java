package com.kdt.landing.domain.Sub_BigData.repository;

import com.kdt.landing.domain.Sub_BigData.entity.Sub_BigData;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface Sub_BigDataRepository extends JpaRepository<Sub_BigData, Long> {

}

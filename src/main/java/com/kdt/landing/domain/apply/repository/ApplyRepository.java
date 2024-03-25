package com.kdt.landing.domain.apply.repository;

import com.kdt.landing.domain.apply.entity.Apply;
import com.kdt.landing.domain.board.entity.Board;
import com.kdt.landing.domain.subject.entity.Subject;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface ApplyRepository extends JpaRepository<Apply, Long> {

}

package com.kdt.landing.domain.member.repository;
import com.kdt.landing.domain.member.entity.Member;
import jakarta.transaction.Transactional;
import org.springframework.data.jpa.repository.EntityGraph;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import java.util.Optional;

@Repository
public interface MemberRepository extends JpaRepository<Member, Long> {

    @EntityGraph(attributePaths = "roleSet")
    @Query("select m from Member m where m.email = :email")
    Optional<Member> getWithRoles(String email);

    @EntityGraph(attributePaths = "roleSet")
    Member findByEmail(String email);

    @Modifying
    @Transactional
    @Query("update Member m set m.pw =:pw where m.id = :id ")
    void updatePassword(@Param("pw") String password, @Param("id") Long id);

    @Query("select m from Member m where m.id =:id")
    Optional<Member> findById(@Param("id") Long id);


    @Query("select m from Member m where m.email =:email")
    Member existsMemberByEmail(String email);

    boolean existsByEmail(String email);


}
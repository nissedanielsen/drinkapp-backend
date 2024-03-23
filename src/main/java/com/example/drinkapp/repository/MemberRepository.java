package com.example.drinkapp.repository;

import com.example.drinkapp.model.Member;
import com.example.drinkapp.model.Stock;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.Optional;

public interface MemberRepository extends JpaRepository<Member, Long> {

    Optional<Member> findById(long memberId);
}

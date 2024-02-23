package com.example.eventmanagementsystem.repository;

import com.example.eventmanagementsystem.model.Event;
import com.example.eventmanagementsystem.model.Sponsor;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import java.util.List;

@Repository
public interface EventJpaRepository extends JpaRepository<Event, Integer> {
    List<Event> findBySponsor(Sponsor sponsor);
}

package com.multibank.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.multibank.domain.entity.Task;

/**
 * Created by nasir on 4/2/16.
 */
@Repository
public interface TaskRepository extends JpaRepository<Task, Long> {
}

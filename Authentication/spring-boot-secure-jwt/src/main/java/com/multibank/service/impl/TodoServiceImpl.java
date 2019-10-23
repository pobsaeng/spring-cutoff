package com.multibank.service.impl;

import com.multibank.domain.entity.Task;
import com.multibank.repository.TaskRepository;
import com.multibank.service.TodoService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
@Transactional(
        propagation = Propagation.SUPPORTS,
        readOnly = true)
public class TodoServiceImpl implements TodoService {

    private TaskRepository repository;

    @Autowired
    public TodoServiceImpl(TaskRepository repository) {
        this.repository = repository;
    }

    @Override
    @Transactional(
            propagation = Propagation.SUPPORTS,
            readOnly = false)
    public Task createTask(Task task) {
        return repository.save(task);
    }

    @Override
    public List<Task> getAllTasks() {
        return repository.findAll();
    }

    @Override
    public Task getTaskById(long id) {
        return repository.findOne(id);
    }

    @Override
    @Transactional(
            propagation = Propagation.SUPPORTS,
            readOnly = false)
    public void delete(long id) {
        repository.delete(id);
    }

}


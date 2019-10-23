package com.multibank.service;

import java.util.List;

import com.multibank.domain.entity.Task;

/**
 * Created by nasir on 4/2/16.
 */
public interface TodoService {

    Task createTask(Task task);

    List<Task> getAllTasks();

    Task getTaskById(long id);

    void delete(long id);
}

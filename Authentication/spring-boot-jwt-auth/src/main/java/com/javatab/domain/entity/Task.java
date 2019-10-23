package com.javatab.domain.entity;

import com.javatab.domain.base.DomainBase;
import lombok.Getter;
import lombok.Setter;

import javax.persistence.*;
import javax.validation.constraints.NotNull;

/**
 * Created by nasir on 4/2/16.
 */
@Entity
@Table(name = "tasks")
@Getter
@Setter
public class Task extends DomainBase {

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	@NotNull
	private long id;

	@Column(name = "task_text")
	@NotNull
	private String task;

	@Column(name = "is_completed")
	@NotNull
	private boolean isCompleted;

	public long getId() {
		return id;
	}

	public void setId(long id) {
		this.id = id;
	}

	public String getTask() {
		return task;
	}

	public void setTask(String task) {
		this.task = task;
	}

	public boolean isCompleted() {
		return isCompleted;
	}

	public void setCompleted(boolean isCompleted) {
		this.isCompleted = isCompleted;
	}
}

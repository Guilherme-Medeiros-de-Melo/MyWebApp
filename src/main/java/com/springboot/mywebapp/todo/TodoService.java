package com.springboot.mywebapp.todo;

import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;
import java.util.function.Predicate;

import org.springframework.stereotype.Service;

import jakarta.validation.Valid;

@Service
public class TodoService {
	private static List<Todo> todoList = new ArrayList();
	private static int todoCount = 0;
	static {
		todoList.add(new Todo(++todoCount, "TestUser", "testDesc1new", LocalDate.now().plusYears(1), false));
		todoList.add(new Todo(++todoCount, "test2", "testDesc2new", LocalDate.now().plusYears(2), false));
		todoList.add(new Todo(++todoCount, "test3", "testDesc3new", LocalDate.now().plusYears(3), false));
	}
	
	public List<Todo> findByUsername(String username){
		Predicate<? super Todo> predicate = todo -> todo.getUsername() .equalsIgnoreCase(username);
		return todoList.stream().filter(predicate).toList();
	}
	
	public void addTodo(String username, String description, LocalDate targetDate, boolean isComplete) {
		Todo todo = new Todo(++todoCount, username, description, targetDate, isComplete);
		todoList.add(todo);
	}
	
	public void deleteById(int id) {
		Predicate<? super Todo> predicate = todo -> todo.getId() == id;
		todoList.removeIf(predicate);
	}
	
	public Todo findById(int id) {
		Predicate<? super Todo> predicate = todo -> todo.getId() == id;
		Todo todo = todoList.stream().filter(predicate).findFirst().get();
		return todo;
	}

	public void updateTodo(@Valid Todo todo) {
		deleteById(todo.getId());
		todoList.add(todo);
		
	}
}

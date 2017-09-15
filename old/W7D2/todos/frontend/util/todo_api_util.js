export default class APIUtil {

  static getAllTodos() {
    return (
      $.ajax({
        method: 'GET',
        url: '/api/todos'
      })
    );
  }

  static saveTodo(todo) {
    return (
      $.ajax({
        method: 'POST',
        url: '/api/todos',
        data: todo
      })
    );
  }

  static updateTodo(todo) {
    return (
      $.ajax({
        method: 'PATCH',
        url: `/api/todos/${todo.id}`,
      })
    );
  }

  static deleteTodo(todo) {
    return (
      $.ajax({
        method: 'DELETE',
        url: `/api/todos/${todo.id}`,
      })
    );
  }

  // steps index
  static getStepsByTodoId(todoId) {
    return (
      $.ajax({
        method: "GET",
        url: `api/todos/${todoId}/steps`
      })
    );
  }

  static saveStep(step) {
    return (
      $.ajax({
        method: 'POST',
        url: `/api/todos/${step.todo_id}/step`,
        data: step
      })
    );
  }

  static getTagsByTodoId(todoId) {
    return (
      $.ajax({
        method: "GET",
        url: `api/todos/${todoId}/tags`
      })
    );
  }



}

window.APIUtil = APIUtil;

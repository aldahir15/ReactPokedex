export const allTodos = (state) => {
  return Object.keys(state.todos).map((id)=> (
    state.todos[id]
  ));
};

export const stepsByTodoId = (state, todo_id) => {
  const stepsAr = Object.keys(state.steps).map((id)=> (
    state.steps[id]
  ));

  return stepsAr.filter((step) => step.todo_id === todo_id);
};

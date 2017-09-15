export const RECEIVE_TODOS = 'RECEIVE_TODOS';
export const RECEIVE_TODO = 'RECEIVE_TODO';
export const REMOVE_TODO = 'REMOVE_TODO';
// import * as APIUtil from '../util/todo_api_util';
import APIUtil from '../util/todo_api_util';
import { receiveErrors, clearErrors } from './error_actions';

export const receiveTodos = (todos) =>  ({
  type: RECEIVE_TODOS,
  todos
});

export const receiveTodo = (todo) =>  ({
  type: RECEIVE_TODO,
  todo
});

export const removeTodo = (todo) =>  ({
  type: REMOVE_TODO,
  todo
});

export const fetchTodos = () => dispatch => (
  APIUtil.getAllTodos().then( todos=> dispatch(receiveTodos(todos) ))
);

export const createTodo = todo => dispatch => (
  APIUtil.saveTodo(todo).then(thisTodo => {
    dispatch(clearErrors());
    return dispatch(receiveTodo(thisTodo));
  },
  err => dispatch(receiveErrors(err.responseJSON)))
);

export const updateTodo = todo => dispatch => (
  APIUtil.updateTodo(todo).then(successfulTodo => {
    dispatch(clearErrors());
    return dispatch(receiveTodo(successfulTodo));
  },
  err=> dispatch(receiveErrors(err.responseJSON)))
);

export const deleteTodo = todo => dispatch => (
  APIUtil.deleteTodo(todo).then(successfulTodo => {
    dispatch(clearErrors());
    return dispatch(removeTodo(successfulTodo));
  },
  err=> dispatch(receiveErrors(err.responseJSON)))
);



window.receiveTodo = receiveTodo;
window.receiveTodos = receiveTodos;
window.removeTodo = removeTodo;
window.fetchTodos = fetchTodos;

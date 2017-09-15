import { connect } from 'react-redux';
import TodoList from './todo_list';
import { allTodos } from '../../reducers/selectors';
import * as TodoActions from '../../actions/todo_actions';
// { receiveTodo, removeTodo, fetchTodos, createTodo } from '../../actions/todo_actions';

import { getTagsByTodoId } from '../../actions/tag_actions';


const mapStateToProps = state => ({
  // tags: state.tags,
  todos: allTodos(state),
  errors: state.errors
});

const mapDispatchToProps = dispatch => ({
  // receiveTodo: (todo) => dispatch(receiveTodo(todo)),
  // getTagsByTodoId: (todo_id) => dispatch(getTagsByTodoId(todo_id)),
  createTodo: (todo) => dispatch(TodoActions.createTodo(todo)),
  fetchTodos: () => dispatch(TodoActions.fetchTodos()),
  updateTodo: (todo) => dispatch(TodoActions.updateTodo(todo))
});

export default connect(
  mapStateToProps,
  mapDispatchToProps
)(TodoList);

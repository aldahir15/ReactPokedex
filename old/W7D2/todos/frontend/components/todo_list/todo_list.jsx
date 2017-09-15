import React from 'react';
import TodoListItem from './todo_list_item';
import TodoForm from './todo_form';

class TodoList extends React.Component  {

  constructor(props) {
    super(props);
  }

  componentDidMount() {
    this.props.fetchTodos();
  }

  render() {
    const todoItems = this.props.todos.map((todo)=>(
      <TodoListItem tags={this.props.tags} key={todo.id} todo={todo} updateTodo={this.props.updateTodo} getTagsByTodoId={this.props.getTagsByTodoId}/>
    ));
    return (
      <div className="main-content">
        <ul className="todo-list">
          {todoItems}
        </ul>
        <TodoForm errors={this.props.errors} createTodo={this.props.createTodo} />
      </div>
    );
  }
}
export default TodoList;

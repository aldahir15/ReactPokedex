import React from 'react';
import TodoDetailViewContainer from './todo_detail_view_container';

export default class TodoListItem extends React.Component {
  constructor(props) {
    super(props);
    // this.props.getTagsByTodoId(this.props.todo.id);
    this.state = { done: this.props.todo.done, detail: false };
    this.handleDone = this.handleDone.bind(this);
    this.toggleDetailView = this.toggleDetailView.bind(this);
  }

  handleDone(e) {
    e.preventDefault();
    this.props.updateTodo(this.props.todo);
    // to re render
    this.setState({done: !this.state.done });

  }

  toggleDetailView(e) {
    this.setState({ detail: !this.state.detail});
  }

  render() {

    return (
      <div className="todo-list-item">
        <li><h3 onClick={this.toggleDetailView}>{this.props.todo.title}</h3></li>
        <input className="done-button" type="submit" value={this.state.done ? "Undo" : "Done"}  onClick={this.handleDone}/>
        {this.state.detail ? <TodoDetailViewContainer todo={this.props.todo}/> : ""}
      </div>
    );
  }
}

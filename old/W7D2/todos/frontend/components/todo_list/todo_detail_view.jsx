import React from 'react';
import StepListContainer from '../step_list/step_list_container';

export default class TodoDetailView extends React.Component {
  constructor(props) {
    super(props);
    this.state = { todo: this.props.todo };
    this.handleDelete = this.handleDelete.bind(this);
  }

  handleDelete(e) {
    e.preventDefault();
    this.props.deleteTodo(this.props.todo);
    this.setState({todo: ""});
    console.log(this.props);
    // this.props.removeTodo(this.props.todo);
  }

  render() {
    // debugger;
    return (
      <div className="detail-view">
        <h4>{this.props.todo.body}</h4>
        <StepListContainer todo_id={this.props.todo.id}/>
        <input type="submit" className="todo-button" value="delete" onClick={this.handleDelete}/>
      </div>
    );
  }
}

import React from 'react';
import { uniqueId } from '../../util/util';

export default class TodoForm extends React.Component{
  constructor(props) {
    super(props);

    this.state = {title: "", body: "", tag_names:[], newTagVal: "" };
    this.handleTitle = this.handleTitle.bind(this);
    this.handleBody = this.handleBody.bind(this);
    this.handleTagBody = this.handleTagBody.bind(this);
    this.handleClick = this.handleClick.bind(this);
    this.addTag = this.addTag.bind(this);
  }

  handleTitle(e) {
    this.setState({ title: e.target.value });
  }

  handleBody(e) {
    this.setState({ body: e.target.value });
  }

  handleTagBody(e) {
    this.setState({ newTagVal: e.target.value });
  }

  addTag(e) {
    let tagVal = this.state.newTagVal;
    this.state.newTagVal = "";
    this.setState( {tag_names: [...this.state.tag_names, tagVal] });
  }


  handleClick(e) {
    e.preventDefault();
    // receive to do
    let todo = { id: uniqueId(), title: this.state.title, body: this.state.body, tag_names: this.state.tag_names };
    this.props.createTodo({todo}).then(
      () => this.setState({title: '', body: '', tag_names: [], newTagVal: ""})
    );
  }

  render() {
    const errorAr = this.props.errors.map( (error, i) => <h3 key={error + i}>{error}</h3>);
    const allTags = this.state.tag_names.map( (tag, i) => <li key={tag+i}> {tag} </li>);
    return (
      <div className="todo-form">
        <label>Title
        <input id="inputText" type="text" value={this.state.title} onChange={this.handleTitle}/>
        </label>
        <label>Body
          <textarea className="todo-body" onChange={this.handleBody} value={this.state.body}></textarea>
        </label>
        <ul>
          {allTags}
          <input value={this.state.newTagVal} type="text" onChange={this.handleTagBody}/>
          <button type="button" onClick={this.addTag} value="AddTag"/>
        </ul>
        <input className="submit" type="submit" value="Add Todo" onClick={this.handleClick}/>
        {errorAr}
      </div>
    );

  }


}

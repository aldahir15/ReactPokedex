import React from 'react';
import StepListItem from './step_list_item';
import StepListItemContainer from './step_list_item_container';

export default class StepList extends React.Component {
  constructor(props) {
    super(props);
  }

  componentDidMount() {
    this.props.getTagsByTodoId(this.props.todo_id);
    this.props.receiveSteps(this.props.todo_id);
  }

  render() {
    const stepListItems = this.props.steps.map(step => (
      <StepListItem key={step.id} step={step} />
    ));
    return (
      <div>
        {this.props.tags}
        <ul>
          {stepListItems}
        </ul>
      </div>
    );
  }
}

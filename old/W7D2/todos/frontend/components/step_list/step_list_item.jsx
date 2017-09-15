import React from 'react';

export default class StepListItem extends React.Component {
  constructor(props) {
    super(props);
  }

  render() {
    return (
      <div>
        <li><h3>{this.props.step.title}</h3></li>
      </div>
    );
  }
}

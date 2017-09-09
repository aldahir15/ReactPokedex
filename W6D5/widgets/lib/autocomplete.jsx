import React from 'react';

class Autocomplete extends React.Component {
  constructor(props) {
    super(props);
    this.state = { inputVal: '' };
    this.handleChange = this.handleChange.bind(this);
    this.selectName = this.selectName.bind(this);
  }

  handleChange(event) {
    this.setState({inputVal: event.target.value});
  }

  selectName(event) {
    this.setState({inputVal: event.currentTarget.innerText});
  }

  render() {
    return (
      <form>
        <label>
          Name:
          <input type="text" value={this.state.inputVal} onChange={this.handleChange} />
          <ul>

            { this.state.inputVal.length === 0 ?
              this.props.names.map((el) => <li onClick={this.selectName}>{el}</li>) :
             this.props.names.filter((el)=> el.startsWith(this.state.inputVal)).map((el) => <li onClick={this.selectName}>{el}</li>)}
          </ul>
        </label>
      </form>
    );
  }
}

export default Autocomplete;

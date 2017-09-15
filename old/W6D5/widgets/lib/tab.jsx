import React from 'react';

class Tab extends React.Component {
  constructor(){
    super();
    this.state = {tab1:{name: 'tab1', contents: 'something1'}, tab2:{name: 'tab2', contents: 'something2'}, tab3:{name: 'tab3', contents: 'something3'}, content: ''};
    this.tabClick = this.tabClick.bind(this);
  }

  tabClick(event){
    let key = event.currentTarget.innerText;
    let content = this.state[event.currentTarget.innerText].contents;
    this.setState({content: content});
  }

  render(){
    return (
      <div className='inner-btn'>
        <button onClick={this.tabClick}>{this.state.tab1.name}</button>
        <button onClick={this.tabClick}>{this.state.tab2.name}</button>
        <button onClick={this.tabClick}>{this.state.tab3.name}</button>
        <p>{this.state.content}</p>
      </div>
    );
  }
}

export default Tab;

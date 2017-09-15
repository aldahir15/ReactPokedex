import React from 'react';

class Clock extends React.Component {
  constructor() {
    super();
    this.state = {time: new Date};
    this.tick = this.tick.bind(this);
  }

  componentDidMount() {
    this.intervalId = setInterval(this.tick, 1000);
  }

  componentWillUnmount() {
    this.intervalId.clearInterval();
  }

  tick() {
    this.setState({time: new Date()});
  }

  seconds(){
    return this.state.time.getSeconds();
  }

  minutes(){
    return this.state.time.getMinutes();
  }

  hours(){
    return this.state.time.getHours();
  }

  render(){
    const hours = this.hours();
    const minutes = this.minutes();
    const seconds = this.seconds();
    return (
      <div>
        <h1>TIME</h1>
        <h2>{hours > 12 ? hours - 12 : hours} : {minutes < 10 ? '0' + minutes : minutes} : {seconds < 10 ? '0' + seconds : seconds} {hours > 12 ? 'PM' : 'AM'}</h2>
      </div>
    );
  }

}

export default Clock;

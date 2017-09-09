import React from 'react';
import ReactDOM from 'react-dom';

import Clock from './lib/clock';
import Autocomplete from './lib/autocomplete';
import Tab from './lib/tab';

const Names = [
  'Abba',
  'Barney',
  'Barbara',
  'Jeff',
  'Jenny',
  'Sarah',
  'Sally',
  'Xander'
];

class Root extends React.Component {
  render() {
    return(
      <div className="all">
        <div className="clock">
        <Clock />
        </div>
        <div className='interactive'>
          <Autocomplete names={Names} />
        </div>
        <div className='tab'>
          <Tab />
        </div>
      </div>
    );
  }
}

document.addEventListener('DOMContentLoaded', () => {
  const main = document.getElementById("main");
  ReactDOM.render(<Root />, main);
});

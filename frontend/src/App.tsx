import React from 'react';
import { HashRouter, Route } from 'react-router-dom'

import './css/App.css';
import Sidebar from './components/Sidebar/Sidebar';
import Scenarioes from './views/Scenarios';
import Tool from './views/Tool';

function App() {
  window.document.documentElement.classList.add("dark") // forced dark mode
  return (
    <div>
      <HashRouter>
        <div className="flex h-full">
          <Sidebar />
          <div className="flex-grow pl-52">
            <Route path="/" exact component={Tool} />
            <Route path="/scenarios" component={Scenarioes} />
          </div>
        </div>
      </HashRouter>
    </div>
  );
}

export default App;

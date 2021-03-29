import React from 'react';
import { HashRouter, Route } from 'react-router-dom'

import './css/App.css';
import Sidebar from './components/Sidebar';
import Scenarioes from './views/Scenarios';
import Tool from './views/Tool';

function App() {
  return (
    <div className="h-screen dark:bg-gray-800 dark:text-white">
      <HashRouter>
        <div className="flex h-full">
          <Sidebar />
          <div className="flex-grow">
            <Route path="/" exact component={Tool} />
            <Route path="/scenarios" component={Scenarioes} />
          </div>
        </div>
      </HashRouter>
    </div>
  );
}

export default App;

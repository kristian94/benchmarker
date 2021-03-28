import React from 'react';
import Chart from './components/Chart';
// import Posts from './components/Posts';
import UploadButton from './components/UploadButton';
import UploadResult from './components/UploadResult';
import SuiteResults from './components/SuiteResults';

import './css/App.css';


function App() {
  return (
    <div className="h-screen dark:bg-gray-800 dark:text-white">
      <div className="container px-4 mx-auto pt-12">
        <h1 className="font-bold mb-12 text-6xl">Benchmarker</h1>
        <div className="grid grid-cols-2 mb-32">
          <UploadButton />
          <UploadResult />
        </div>
        <SuiteResults></SuiteResults>
      </div>
    </div>
  );
}

export default App;

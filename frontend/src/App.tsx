import React from 'react';
import Chart from './components/Chart';
// import Posts from './components/Posts';
import UploadButton from './components/UploadButton';
import './css/App.css';


function App() {
  return (
    <div className="dark:bg-gray-800 dark:text-white">
      <div className="container px-4 mx-auto pt-12">
        <h1 className="font-bold mb-12 text-6xl">Benchmarker</h1>
        <UploadButton />
        <Chart />
        {/* <Posts />  */}
      </div>
    </div>
  );
}

export default App;

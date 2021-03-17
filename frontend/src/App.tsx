import React from 'react';
import Chart from './components/Chart';
import Posts from './components/Posts';
import UploadButton from './components/UploadButton';
import './css/App.css';


function App() {
  return (
    <div>
      <UploadButton />
      <Chart />
      {/* <Posts />  */}
    </div>
  );
}

export default App;

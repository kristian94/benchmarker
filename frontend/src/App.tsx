import React from 'react';
import Posts from './components/Posts';
import UploadButton from './components/UploadButton';
import './css/App.css';


function App() {
  return (
    <div>
      <UploadButton />
      <Posts /> 
    </div>
  );
}

export default App;

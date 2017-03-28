import 'babel-polyfill';
import React from 'react';
import ReactDOM from 'react-dom';
import EventList from './components/EventList';


$(function() {
  let reactApp = document.getElementById('events')
  if(reactApp){
    ReactDOM.render(
      <EventList />,
      reactApp
    );
  };
});

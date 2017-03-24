import 'babel-polyfill';
import React from 'react';
import ReactDOM from 'react-dom';
import EventList from './components/EventList';


$(function() {
  ReactDOM.render(
    <EventList />,
    document.getElementById('events')
  );
});

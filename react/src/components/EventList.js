import React, { Component } from 'react';
import ListEvent from './ListEvent';

class EventList extends Component {
  constructor(props) {
  super(props);
    this.state = {
      events: [],
      currentPage: 1,
      eventsPerPage: 3,
      selectedEventId: null
    };
    this.getData = this.getData.bind(this);
    this.handleClick = this.handleClick.bind(this)
    this.handleEventSelect = this.handleEventSelect.bind(this)
  }

  handleEventSelect(id){
    this.setState({selectedEventId: id})
  }

  handleClick(event) {
    this.setState({
      currentPage: Number(event.target.id)
    });
  }

  getData() {
    fetch('http://localhost:3000/api/v1/events.json')
      .then(response => {
        if (response.ok) {
          return response;
        } else {
          let errorMessage = `${response.status} ($response.statusText)`,
            error = new Error(errorMessage);
          throw(error);
        }
      })
      .then(response => response.json())
      .then(body => {
        this.setState({events: body});
      })
      .catch(error => console.error(`Error in fetch: ${error.message}`));
  }

  componentDidMount() {
    this.getData();
  };

  render() {
    let indexOfLastEvent = this.state.currentPage * this.state.eventsPerPage
    let indexOfFirstEvent = indexOfLastEvent - this.state.eventsPerPage
    let currentEvents = this.state.events.slice(indexOfFirstEvent, indexOfLastEvent)

    let newEvents = currentEvents.map((listEvent, index) =>{
      let buttonClick= () =>{
      if(listEvent.id===this.state.selectedEventId){
        this.setState({selectedEventId: null})
      }else{
      this.handleEventSelect(listEvent.id);
      }
    }
    let className;
    let buttonValue
    if(listEvent.id===this.state.selectedEventId){
      className="selected"
      buttonValue=<a href="#" className="button small">Hide Description</a>
    }else{
      className="not-selected"
      buttonValue=<a href="#" className="button small">View Description</a>

    }
      return (
        <ListEvent
          id={listEvent.id}
          key={index}
          name={listEvent.event_name}
          date={listEvent.event_date}
          time={listEvent.event_time}
          address={listEvent.address}
          city={listEvent.city}
          state={listEvent.state}
          zip={listEvent.zip}
          neighborhood={listEvent.neighborhood}
          description={listEvent.description}
          picture={listEvent.user.profile_photo}
          org={listEvent.user.organization}
          email={listEvent.user.email}
          contact={listEvent.user.contact_number}
          buttonClick={buttonClick}
          className={className}
          buttonValue={buttonValue}
        />
      )
    });

    let pageNumbers = [];
    for (let i = 1; i <= Math.ceil(this.state.events.length / this.state.eventsPerPage); i++){
      pageNumbers.push(i);
    }

    let renderPageNumbers = pageNumbers.map(number => {
      return (
        <a className="small button"
          key={number}
          id={number}
          onClick={this.handleClick}
        >
          {number}
        </a>
      );
    });

    return(
      <div>
        <div>
          {newEvents}
        </div>
        <ul>
          <div className="small-4 small-push-4 columns">
            {renderPageNumbers}
          </div>
        </ul>
      </div>

    )
  }
};

export default EventList;

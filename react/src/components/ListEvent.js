import React from 'react';

class Question extends React.Component {
  constructor(props){
    super(props);
  }

  render() {

    return (
      <div>
          <p><img src={this.props.picture}/> {this.props.org}</p>
          <p> {this.props.name} {this.props.date} {this.props.time} {this.props.neighborhod}</p>
          <p><button onClick={this.props.buttonClick}> {this.props.buttonValue} </button>  View Description and More Information</p>
          <p className={this.props.selected}> {this.props.description}<br></br> <a href={`events/${this.props.id}`}>More Information</a> </p>
          <hr></hr>
      </div>
    )
  }
}

export default ListEvent;

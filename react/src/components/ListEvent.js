import React from 'react';

class ListEvent extends React.Component {
  constructor(props){
    super(props);
  }

  render() {

    return (
      <div className="row event">
          <p><img src={this.props.picture} className="image"/> {this.props.org}</p>
          <p> {this.props.name} {this.props.date} {this.props.time} {this.props.neighborhod}</p>
          <button onClick={this.props.buttonClick}> {this.props.buttonValue} </button>
          <p className={this.props.className}> {this.props.description}<a href={`events/${this.props.id}`}> More Information</a> </p>
          <hr></hr>
      </div>
    )
  }
}

export default ListEvent;

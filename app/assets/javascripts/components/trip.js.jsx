var Trip = React.createClass({
  propTypes: {
    location: React.PropTypes.string,
    time_span: React.PropTypes.string,
    photo_url: React.PropTypes.string
  },
  componentDidMount() {
        console.log('Component mounted');
    },
  render: function() {

    return (
      <div>
        <div>Location: {this.props.location}</div>
        <div>Time Span: {this.props.time_span}</div>
        <div>Photo Url: {this.props.photo_url}</div>
      </div>
    );
  }
});

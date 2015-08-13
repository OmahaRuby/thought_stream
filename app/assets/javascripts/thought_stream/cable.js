var ThoughtStream = (function(ThoughtStream) {
  ThoughtStream.cable = Cable.createConsumer('ws://' + document.location.host + '/action_cable');

  return ThoughtStream;
})(ThoughtStream || {});




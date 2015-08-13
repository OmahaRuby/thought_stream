var ThoughtStream = (function(ThoughtStream) {
  ThoughtStream.thoughtsChannel = ThoughtStream.cable.subscriptions.create("ThoughtsChannel", {
    connected: function() {
      setTimeout(function() {
        this.perform('stream_thoughts');
      }.bind(this), 1000);
    },
    received: function(data) {
      if($('#thought-' + data.thought_id).length === 0) {
        $('#thoughts').prepend(data.thought_partial);
      }
    }
  });

  return ThoughtStream;
})(ThoughtStream || {});



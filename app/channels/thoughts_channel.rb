class ThoughtsChannel < ApplicationCable::Channel
  def stream_thoughts
    stream_from 'thoughts'
  end
end

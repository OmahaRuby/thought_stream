class ThoughtRelayJob < ApplicationJob
  def perform(thought)
    thought_partial = ThoughtsController.render(partial: 'thoughts/thought', locals: { thought: thought })

    ActionCable.server.broadcast 'thoughts', thought_id: thought.id, thought_partial: thought_partial
  end
end
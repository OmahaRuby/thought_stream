class Thought < ActiveRecord::Base
  validates :content, presence: true

  after_commit { ThoughtRelayJob.perform_later(self) }
end

class ThoughtsController < ApplicationController
  def index
    @thought = Thought.new
    @thoughts = Thought.order(id: :desc).limit(25)

    render :index
  end

  def create
    @thought = Thought.new(thought_params)

    if @thought.save
      redirect_to thoughts_path, change: 'thought-area'
    else
      @thoughts = Thought.order(id: :desc).limit(25)

      render :index, change: 'new-thought'
    end
  end

  private

  def thoughts
    Thought.all
  end

  def thought_params
    params.require(:thought).permit(:content)
  end
end

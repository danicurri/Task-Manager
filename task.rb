class Task

  attr_reader :title

  def initialize(title)
    #state?
    @title = title
    @completed = false
  end

  def completed?
    @completed
  end
end

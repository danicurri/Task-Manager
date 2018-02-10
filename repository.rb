class Repository

attr_reader :tasks

  def initialize
    #state?
    @tasks = [] # array of task instances
  end

#behavior? CRUD

#create:
def add(task) # task parameter is a task instance
  @tasks << task
end

def all
  @tasks
end

def find(index)
  @tasks[index]
end

end

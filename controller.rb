require_relative "task"

class Controller #user actions

  def initialize(repository, view)
    @repository = repository
    @view = view
  end

  def add_task
    #1. ask the user what he wants to do
    title = @view.ask_user_for_task_title
    #2. create the task
    task = Task.new(title)
    #3. give the task to the repo
    @repository.add(task)
  end

  def list_tasks
    # 1. ask the repo for the list of tasks
    tasks = @repository.all
    # 2. ask the view to print tasks
    @view.print_tasks(tasks)
  end

  def mark_task_as_completed
    # 1. ask user which task index is completed
    index = @view.ask_user_for_task_index
    # 2. ask the repo for Task instance index
    task = @repository.find(index)
    # 3. mark the task as completed on taks instance
    @view.print_tasks(task)
  end
end

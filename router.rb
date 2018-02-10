class Router
  def initialize(controller)
  @controller = controller
  end

  def run
    loop do
      puts "what do you want to do next?"
      puts "1.add a task"
      puts "2.list tasks"
      puts "3.mark as completed"
      choice = gets.chomp.to_i
        if choice == 1
          @controller.add_task
        elsif choice == 2
          @controller.list_tasks
        elsif choice == 3
          @controller.mark_task_as_completed
        else
          puts "wrong input"
        end
    end
  end

end

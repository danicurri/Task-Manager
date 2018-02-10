require_relative "task"

class View

  def ask_user_for_task_title
    puts "what do you want to do?"
    print ">"
    return gets.chomp
  end


def print_tasks(tasks)
  tasks.each_with_index do |task, index|
    x = task.completed? ? "x" : ""
    puts "#{index + 1} - [#{x}] #{task.title} "
  end
end

def ask_user_for_task_index
  puts "which task number?"
  print ">"
  gets.chomp.to_i - 1
end

def find(index)
  @tasks[index]
end

def mark_as_completed
  @completed = true
end

end

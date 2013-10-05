# require

class Controller

  
  def run(user_input)

    # puts self.methods.each {|method| p method.class}
    # if self.methods.include?(user_input[0].to_sym)
    #   p user_input[0] 
    # else
    #   p "not working"
    # end
    case user_input[0]
    when 'list'
      list
    when 'add'
      add
    when 'delete'
      delete
    when 'complete'
      complete
    end 
  end


  def list
    puts 'Task.all'
    Viewer.render()
  end


  def add
    # puts 'add'
    # puts ARGV[1]
   # ARGV.shift
    p "Task.create(:description => ARGV[1,ARGV.length].join(" "))"
  end


  def delete
    puts 'delete'
    to_delete = ARGV[1].to_i - 1
    all_tasks = Task.all
    all_tasks[to_delete].destroy
  end


  def complete
    puts 'complete'
    to_complete = ARGV[1].to_i - 1
    all_tasks = Task.all
    all_tasks[to_complete].update(:complete => true)
  end


end



testing = Controller.new
testing.run(ARGV)
# list
# add
# delete
# complete


# list

# add get your milk

# complete 6

# delete 6

#store list of all tasks - index - 1 of this list is the number to update or delete

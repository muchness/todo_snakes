require 'csv'
require_relative '../app/models/task.rb'

class TaskImporter
  def self.import(filename)#(filename=File.dirname(__FILE__) + "../data/task_info.csv")
    CSV.foreach(filename, :headers => true) do |row|
      Task.create!(row.to_hash)
    end
  end
end  

TaskImporter.import('../db/data/task_info.csv')
# CSV.foreach(filename, :headers => true) do |row|
#   Moulding.create!(row.to_hash)
# end

LIST = [
  { id: 1, name: "Personal Website", description: "Look into media queries to make website responsive on all devices", completion_date: "2018.09.21" },
  { id: 2, name: "Sorting for CS Fun", description: "Read and code each sorting algorithm.", completion_date: "2018.09.18" },
  { id: 3, name: "Hotel Solution", description: "Read and understand instructors solution to OOD task, Hotel", completion_date: "2018.09.23" },
  { id: 4, name: "Shoulder PT", description: "Once per day, 10 reps for I's, Y's, and T's", completion_date: "2018.09.20" },
]

class TasksController < ApplicationController
  def index
    @list = LIST
  end

  def show
    id = params[:id]
    @task = LIST.find {|item| item[:id] == id.to_i}
  end
end

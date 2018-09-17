LIST = ["Continue working on Personal Website", "Read Sorting for CS Fun", "Complete Fibonacci", "Read Hotel Solution", "Log Food", "Shoulder PT: I's, Y's, T's"]


class TasksController < ApplicationController
  def index
    @list = LIST
  end
end

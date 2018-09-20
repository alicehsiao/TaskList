class TasksController < ApplicationController
  def index
    @tasks = Task.all.order(:name)
  end

  def show
    id = params[:id].to_i
    @task = Task.find_by(id: id)

    if @task.nil?
      render :notfound, status: :not_found
    end
  end

  def new
    @task = Task.new
  end

  def edit
    @task = Task.find(params[:id].to_i)
  end

  def create
    @task = Task.new(name: params[:task][:name], description: params[:task][:description], completion_date: params[:task][:completion_date])

    if @task.save
      redirect_to tasks_path
    else
      render :new
    end
  end

  def update
    @task = Task.find(params[:id].to_i)
    @task.name = params[:task][:name]
    @task.description = params[:task][:description]
    @task.completion_date = params[:task][:completion_date].to_i

    if @task.save
      redirect_to task_path
    end
  end

  def complete
    @task = Task.find(params[:id].to_i)
    if @task.completion_date == nil
      @task.completion_date = Date.current
      @task.status = "Unmark Complete"
    else
      @task.completion_date = nil
      @task.status = "Mark Complete"
    end

    if @task.save
      redirect_to tasks_path
    end
  end

  def destroy
    @task = Task.find(params[:id].to_i)
    if @task.destroy
      redirect_to tasks_path
    end
  end
end

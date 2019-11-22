class TasksController < ApplicationController
  before_action :set_task, only: [:show, :destroy]
  def index
    @task = Task.all
  end

  def show
  end

  def new
    @task = Task.new
  end
  
  def edit
  end


  def create
  @task = Task.new(task_params)

    if @task.save
    redirect_to tasks_path
    else
    render :new
    end
  end

  def destroy
  @task.destroy
  redirect_to tasks_path
  end

private

  def set_task
    @task = Task.find(params[:id])
  end

  def task_params
  params.require(:task).permit(:name)
  end

end

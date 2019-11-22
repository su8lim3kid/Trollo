class TasksController < ApplicationController
  before_action :set_course, only: [:show, :destroy]
  def index
    @task = Task.all
  end

  def show
  end

  def new
    @task = Task.new
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
  redirect_to task_path
  end

private

  def set_task
    @task = task.find(params[:id])
  end

  def task_params
  params.require(:task).permit(:name)
  end

end

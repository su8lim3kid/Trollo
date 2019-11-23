class ListsController < ApplicationController
    before_action :set_task
  
    def index
    @list = List.all
    end
  
    def new
      @board = Board.all - @task.boards
      @list = @task.lists.new
    end
  
    def create
      @list = @task.lists.new(list_params)
      if @list.save
        redirect_to task_lists_path(@task)
      else
        render :new
      end
    end
  
    def destroy
      @list = @task.lists.find(params[:id])
      @list.destroy
      redirect_to task_lists_path(@task)
    end
  
   private
     def set_task
       @task = Task.find(params[:task_id]) 
     end
  
     def list_params
       params.require(:list).permit(:name)
     end
  end
class BoardsController < ApplicationController
before_action :set_board, only: [:show, :destroy]

  def index
    @boards = Board.all
  end

  def show
  end

  def new
    @board = Board.new
  end

  def create
    @board = Board.new(board_params)
    
    if @board.save
      redirect_to boards_path
    else
      render :new
    end
  end

  def destroy
    @board.destroy
    redirect_to board_path
  end

  private

  def set_board
    @board = Board.find(params[:id])
  end

  def board_params
    params.require(:board).permit(:name)
end

end
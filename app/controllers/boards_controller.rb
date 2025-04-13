class BoardsController < ApplicationController
  def index
    @q = Board.ransack(params[:q])
    @boards = @q.result(distinct: true).includes(:user).page(params[:page]).per(8)
  end

  def show
    @board = Board.find(params[:id])
    @comment = Comment.new
  end

  def new
    @board = Board.new
  end

  def create
    @board = current_user.boards.new(board_params)
    if @board.save
      redirect_to boards_path, success: t('defaults.flash_message.success_board', item: Board.model_name.human)
    else
      flash.now[:danger]= t('defaults.flash_message.not_success_board', item: Board.model_name.human)
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    @board = current_user.boards.find(params[:id])
  end

  def update
      @board = Board.find(params[:id])
    if  @board.update(board_params)
      redirect_to boards_path, success: t('defaults.flash_message.edit_board', item: Board.model_name.human)
    else
      flash.now[:danger]= t('defaults.flash_message.not_edit_board', item: Board.model_name.human)
      render :new, status: :unprocessable_entity
    end
  end

  def destroy
    @board = current_user.boards.find(params[:id])
    if @board.destroy!
      redirect_to boards_path, success: t('defaults.flash_message.destroy_board', item: Board.model_name.human), status: :see_other
    end
  end

  private
  def board_params
    params.require(:board).permit(:title, :body, :board_image, :board_image_cache)
  end
end


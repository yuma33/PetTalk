class BookmarksController < ApplicationController

  def index
    @q = current_user.bookmark_board.ransack(params[:q])
    @boards = @q.result(distinct: true).includes(:user).page(params[:page]).per(12)
  end

  def create
    @bookmark = current_user.bookmarks.new(board_id: params[:board_id])
    if @bookmark.save
      redirect_to boards_path
    end
  end

  def destroy
    @board = Board.find(params[:id])
    @bookmark = @board.bookmarks.find_by(user_id: current_user.id)
    if @bookmark&.destroy!
      redirect_to boards_path, status: :see_other
    end
  end
end

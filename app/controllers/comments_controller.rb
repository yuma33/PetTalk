class CommentsController < ApplicationController
  def create
    @board = Board.find(params[:board_id])
    @comment = @board.comments.new(comment_params)
    @comment.save
  end

  def destroy
    @board = Board.find(params[:board_id])
    @comment = current_user.comments.find(params[:id])
    @comment.destroy!
  end

    private
    def comment_params
      params.require(:comment).permit(:body,).merge(user_id: current_user.id)
    end
end

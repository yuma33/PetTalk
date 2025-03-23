class CommentsController < ApplicationController
  def create
    @board = Board.find(params[:board_id])
    @comment = @board.comments.new(comment_params)
    if @comment.save
      redirect_to board_path(@board), success: t('defaults.flash_message.comment_board', item: Comment.model_name.human)
    else
      redirect_to board_path(@board), danger: t('defaults.flash_message.not_comment', item: Comment.model_name.human)
    end
  end

  def destroy
    @board = Board.find(params[:board_id])
    @comment = Comment.find(params[:id])
    if @comment.destroy!
      redirect_to board_path(@board), success: t('defaults.flash_message.comment_destroy', item: Comment.model_name.human),status: :see_other
    end
  end

    private
    def comment_params
      params.require(:comment).permit(:body,).merge(user_id: current_user.id)
    end
end

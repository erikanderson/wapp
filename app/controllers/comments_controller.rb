class CommentsController < ApplicationController

	def create
		@item = Item.find(params[:item_id])
		@comment = @item.comments.create(params[:comment].permit(:commenter, :body))
			redirect_to item_path(@item)
	end
end

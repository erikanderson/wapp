class ItemsController < ApplicationController

	def new
	end

	def create
		@item = Item.new(item_params)
		
		@item.save
		redirect_to @item
	end

	def show
		@item = Item.find(params[:id])
	end

	private
		def item_params
			params.require(:item).permit(:name, :notes)
		end



end

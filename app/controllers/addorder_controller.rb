class AddorderController < ApplicationController

def show
@apple_info = "Line 4"
    @name = params[:name]
    @address = params[:address]
    @postort = params[:postort]
    @postnr = params[:postnr]
    @price = "2239" # set a real price here sometime 
    if @name == nil
    	@apple_info = "You didnt order anything."
    else
		# add to db stuff
			a = Order.new
			a.name = @name
			a.address = @address
			a.postort = @postort
			a.postnr = @postnr
			a.price = @price
			a.save
		
		# show stuff
		@apple_info = "Order processed"
			# @apple_info = @item_name + @item_desc + @item_img + @item_stock + @item_price
    end
end

end

class AddshopController < ApplicationController

def show
@apple_info = "Line 4"
@password = params[:password]
@password_db = Admin.first.password
if @password == nil
	@apple_info = "No password"
else
if Digest::SHA256.hexdigest(@password) == @password_db
	# blog entry name
    @item_name = params[:name]
    @item_desc = params[:desc]
    @item_img = params[:img]
    @item_stock = params[:stock]
    @item_price = params[:price]
    if @item_name == nil
    	@apple_info = "Input info"
    else
		# add to db stuff
			a = Shop.new
			a.name = @item_name
			a.desc = @item_desc
			a.img = @item_img
			a.stock = @item_stock
			a.price = @item_price
			a.save
		
		# show stuff
		@apple_info = "Worked"
			# @apple_info = @item_name + @item_desc + @item_img + @item_stock + @item_price
    end
else
	@apple_info = "Wrong password"
end
end
end

end

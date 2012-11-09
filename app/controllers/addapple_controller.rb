class AddappleController < ApplicationController

def show
	@page_title = "Add a apple!"
    @id = params[:applename]
    @id_tasty = params[:tasty]
    if @id == nil
    	@apple_info = " "
    else
		# add to db stuff
			a = Apple.new
			a.tasty = @id_tasty
			a.name = @id
			a.save
			@apple_id = a.id
		
		# show stuff
			@apple_info = " hi"
    end
end

end

class AddappleController < ApplicationController

def show
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
		
		# show stuff
			@apple_info = @id +  ", tasty = " + @id_tasty
    end
end

end

class PluralController < ApplicationController

def show
    @id = params[:comments]
	if @id == nil
		@reply = "Set a word in the box, and click the button!"
	else
    		@reply = @id +  " in plural is " +  @id.pluralize + '.'
    	end	
end

end

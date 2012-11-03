class PalindromeController < ApplicationController

def show
    @id = params[:comments]
	if @id == nil
		@font_color = "black"
		@reply = "Set a word in the box, and click the button!"
	elsif @id == @id.reverse
		@font_color = "lime"
		@reply = @id + ", is a palindrome!"
	else
		@font_color = "red"
    		@reply = @id +", is NOT a palindrome :("
    	end	
end

end

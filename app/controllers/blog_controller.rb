class BlogController < ApplicationController
 
  def show
    id = params[:id]
    @blog = Blog.find(id)
  end
  
end
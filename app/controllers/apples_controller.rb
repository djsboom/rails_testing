class ApplesController < ApplicationController
 
  def show
    id = params[:id]
    @apple = Apple.find(id)
  end
  
  def rot
    id = params[:id]
    @apple = Apple.find(id)
    @apple.rot
  end
  
end
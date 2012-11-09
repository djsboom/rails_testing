# shop controller

class ShopController < ApplicationController
 
  def show
    id = params[:id]
    @item = Shop.find(id)
  end
  
end
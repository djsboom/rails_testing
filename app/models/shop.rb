class Shop < ActiveRecord::Base
  attr_accessible :desc, :img, :name, :price, :stock
end

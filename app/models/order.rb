class Order < ActiveRecord::Base
  attr_accessible :address, :name, :postnr, :postort, :price
end

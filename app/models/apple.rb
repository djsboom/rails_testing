class Apple < ActiveRecord::Base
  attr_accessible :name, :tasty

  def rot
    self.tasty = false
    save
  end
end

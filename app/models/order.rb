class Order < ActiveRecord::Base
  # attr_accessible :title, :body

  has_many :menu_items
end

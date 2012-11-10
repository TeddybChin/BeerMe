class Order < ActiveRecord::Base
  # attr_accessible :title, :body

  has_many :order_menu_items
  has_many :menu_items, through: :order_menu_items
end

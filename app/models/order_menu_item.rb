class OrderMenuItem < ActiveRecord::Base
  attr_accessible :menu_item_id, :order_id, :quantity
end

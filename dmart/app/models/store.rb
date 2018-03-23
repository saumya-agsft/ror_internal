class Store < ActiveRecord::Base

products = ['soap','perk', 'oil', 'egg', 'book']
products.each{|x| Store.create(product_name: x, quantity: 100)}
end

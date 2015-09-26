class Phone < ActiveRecord::Base
  has_one                 :brand,         class_name: 'Brand', :dependent => :destroy
  has_one                 :specification, class_name: 'Specification', :dependent => :destroy
  has_and_belongs_to_many :accessories,   class_name: 'Accessory'
end

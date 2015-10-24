class Phone < ActiveRecord::Base
  has_one                 :specification, class_name: 'Specification', :dependent => :destroy
  belongs_to              :brand,         class_name: 'Brand'
  has_and_belongs_to_many :accessories,   class_name: 'Accessory'

  accepts_nested_attributes_for :brand, :specification, :accessories
end

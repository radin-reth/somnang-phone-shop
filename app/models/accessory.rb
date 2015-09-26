class Accessory < ActiveRecord::Base
  has_and_belongs_to_many :phones, class_name: 'Phone'
  has_many                :images, class_name: 'Image', :dependent => :destroy
end

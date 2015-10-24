class Brand < ActiveRecord::Base
  has_many :phones, class_name: 'Phone', :dependent => :destroy
end

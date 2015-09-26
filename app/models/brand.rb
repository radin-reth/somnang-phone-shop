class Brand < ActiveRecord::Base
  belongs_to :phone, class_name: 'Phone'
end

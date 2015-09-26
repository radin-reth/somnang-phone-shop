class Post < ActiveRecord::Base
  has_many :images, class_name: 'Image', :dependent => :destroy
end

# http://www.railscook.com/recipes/multiple-files-upload-with-nested-resource-using-paperclip-in-rails/

class AboutUs < ActiveRecord::Base
  has_many :pictures, class_name: 'Picture', :dependent => :destroy

  accepts_nested_attributes_for :pictures
end

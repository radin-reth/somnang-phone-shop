class Album < ActiveRecord::Base
  has_and_belongs_to_many :photos, class_name: 'Photo'
end
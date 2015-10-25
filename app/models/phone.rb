class Phone < ActiveRecord::Base
  has_attached_file       :avatar
  has_one                 :specification, class_name: 'Specification', :dependent => :destroy
  belongs_to              :brand,         class_name: 'Brand'
  has_and_belongs_to_many :accessories,   class_name: 'Accessory'

  validates_attachment :avatar, presence: true,
                                content_type: { content_type: ["image/jpeg", "image/gif", "image/png"] },
                                size: { in: 0..1024.kilobytes }

  accepts_nested_attributes_for :brand, :specification, :accessories
end

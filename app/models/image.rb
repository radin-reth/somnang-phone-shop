class Image < ActiveRecord::Base
  belongs_to :accessory, class_name: 'Accessory'
  belongs_to :profile,   class_name: 'Profile'
  belongs_to :service,   class_name: 'Service'

  has_attached_file :attachment, :styles => { large: "994x>", medium: "322x>", small: "196x>" }
end

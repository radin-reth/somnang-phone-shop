class Picture < ActiveRecord::Base
  belongs_to :about_us

  has_attached_file :avatar,
                    :path => ":rails_root/public/images/:id/:filename",
                    :url  => "/images/:id/:filename"

  do_not_validate_attachment_file_type :avatar
end

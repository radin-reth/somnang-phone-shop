module Admin::PhonesHelper
  def flash_sucess_message
    if flash.notice.present?
      content_tag(:div, flash.notice, class: "alert alert-success fade in") do 
              concat content_tag(:button, 'x', class: "close", data: { dismiss: 'alert' })
              concat flash.notice 
            end
    end
  end
end

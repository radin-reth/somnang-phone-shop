class PhoneDecorator < Draper::Decorator
  delegate_all

  def status
    case object.status
    when 1 then 'Hot'
    when 2 then 'New'
    else '-' end
  end

end

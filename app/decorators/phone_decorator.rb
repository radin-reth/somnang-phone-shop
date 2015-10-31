class PhoneDecorator < Draper::Decorator
  delegate_all

  def status
    case object.status
    when 1 then 'Hot'
    when 2 then 'New'
    else '-' end
  end

  def price
    h.number_to_currency(object.price)
  end

  def availability
    object.availability? ? 'In Stock' : 'Out of Stock'
  end
end

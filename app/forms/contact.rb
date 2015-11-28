class Contact
  include Virtus.model
  include ::ActiveModel::Conversion
  include ::ActiveModel::Validations
  extend  ::ActiveModel::Naming

  EMAIL_REG = /([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i

  attribute           :name,      String
  attribute           :sender,    String
  attribute           :body,      String

  validates           :sender, :body,
                      presence: { message: 'Cannot be blank!' }
  validates_format_of :sender,
                      with: EMAIL_REG, message: 'Invalid email address!',
                      allow_blank: true

end

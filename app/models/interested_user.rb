class InterestedUser < ApplicationRecord
  # validates :email, format: { with: /\A.*@.*\.com\z/ }
  validates :email, format: { with: URI::MailTo::EMAIL_REGEXP }, uniqueness: true
  validates :first_name, length: { minimum: 3 }
  validates :last_name, length: { minimum: 3 }
end

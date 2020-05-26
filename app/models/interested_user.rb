class InterestedUser < ApplicationRecord
  # validates :email, format: { with: /\A.*@.*\.com\z/ }
  validates :email, format: { with: URI::MailTo::EMAIL_REGEXP }, uniqueness: true, presence: true
  validates :first_name, length: { minimum: 3 }, presence: true
  validates :last_name, length: { minimum: 3 }, presence: true
  validates :GDPRCompliance, presence: true
end

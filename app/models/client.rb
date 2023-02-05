class Client < ApplicationRecord
  # has_one payment_information
  # has_one balance
  # has_many restaurants
  has_secure_password

  scope :active, -> { where(active: true) }
  scope :inactive, -> { where(active: false) }
  scope :trial, -> { where(trial: true) }
  scope :not_trial, -> { where(trial: false) }
end

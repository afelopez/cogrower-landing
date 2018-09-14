class Suscription < ApplicationRecord
  validates :email, presence: true
  validates :email, :email => true
end

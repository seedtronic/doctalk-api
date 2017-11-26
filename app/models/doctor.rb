class Doctor < ApplicationRecord
  belongs_to :specialty
  has_one :address, as: :addressable

  validates :name, :crm, :address, presence: true
end

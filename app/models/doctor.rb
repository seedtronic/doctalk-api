class Doctor < ApplicationRecord
  belongs_to :specialty
  has_one :address, as: :addressable

  validates :name, :address, presence: true
end

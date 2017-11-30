class Doctor < ApplicationRecord
  belongs_to :specialty
  has_one :address, as: :addressable, inverse_of: :addressable,
                    dependent: :destroy
  has_one :user

  validates :name, :crm, :address, presence: true

  accepts_nested_attributes_for :address
end

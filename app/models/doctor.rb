class Doctor < ApplicationRecord
  belongs_to :specialty
  has_one :address, as: :addressable, inverse_of: :addressable,
                    dependent: :destroy
  has_one :user
  has_many :appointment_schedules

  validates :name, :crm, :address, presence: true

  accepts_nested_attributes_for :address

  acts_as_mappable through: :address
end

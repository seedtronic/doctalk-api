class Doctor < ApplicationRecord
  belongs_to :specialty
  validates :name, presence: true

  acts_as_mappable
end

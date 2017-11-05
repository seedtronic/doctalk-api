class Doctor < ApplicationRecord
  belongs_to :specialty
  validates :name, presence: true
end

class Course < ApplicationRecord
  has_many :sections, dependent: :destroy
  validates :name, presence: true
  validates_uniqueness_of :name
end

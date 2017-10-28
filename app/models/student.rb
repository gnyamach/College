class Student < ApplicationRecord
  has_many :enrollments, :dependent => :destroy
  validates :name, presence: true
end

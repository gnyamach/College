class Professor < ApplicationRecord
  has_many :sections, dependent: :destroy
  #has_many :enrollments, through: :sections
end

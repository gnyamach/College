class Course < ApplicationRecord
  has_many :sections, dependent: :destroy
  #has_many :students, through: :enrollment
end

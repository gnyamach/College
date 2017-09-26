class Professor < ApplicationRecord
  has_many :sections, dependent: :destroy
end

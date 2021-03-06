class Section < ApplicationRecord
  belongs_to :course
  belongs_to :professor
  #has_many :students, through: :enrollments
  has_many :enrollments, :dependent => :destroy
  validates_uniqueness_of :name, scope: :course_id

  validates :name, presence: true
  validates :room, presence: true
  validates :semester, presence: true

end

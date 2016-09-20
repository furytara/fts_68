class Subject < ActiveRecord::Base
  belongs_to :user
  has_many :questions
  has_many :exams
  has_many :posts
  validates :name, presence: true, length: {maximum: 50}

end

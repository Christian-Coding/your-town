class Project < ApplicationRecord
  has_many_attached :photos
  belongs_to :user
  belongs_to :city
  validates :title, presence: true
  validates :description, presence: true
  validates :location, presence: true
end

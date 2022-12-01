class Project < ApplicationRecord
  has_many_attached :photos
  belongs_to :user
  #belongs_to :city removed forigen key from City
  validates :title, presence: true
  validates :description, presence: true
  validates :address, presence: true

  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
  has_many :projects

  acts_as_votable
end

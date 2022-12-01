class Project < ApplicationRecord
  has_many_attached :photos
  belongs_to :user
  has_one :chatroom

  #belongs_to :city removed forigen key from City
  validates :title, presence: true
  validates :description, presence: true
  validates :address, presence: true

  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
  after_create :create_chatroom
  has_many :projects

  private

  def create_chatroom
    Chatroom.create(project: self, name: "Hello")
  end
end

class Project < ApplicationRecord
  has_many_attached :photos
  belongs_to :user
  has_one :chatroom, dependent: :destroy
  validates :title, presence: true
  validates :description, presence: true
  validates :address, presence: true
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
  after_create :create_chatroom
  has_many :projects
  acts_as_votable
  acts_as_taggable_on :tags

  private

  def create_chatroom
    Chatroom.create(project: self, name: "Hello")
  end
end

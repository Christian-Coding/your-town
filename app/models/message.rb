class Message < ApplicationRecord
  belongs_to :chatroom, dependent: :destroy
  belongs_to :user
end

def sender?(a_user)
  user.id == a_user.id
end

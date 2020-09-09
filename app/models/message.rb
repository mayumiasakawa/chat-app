class Message < ApplicationRecord
  belongs_to :users_id
  belongs_to :room_id
end

class Comment < ActiveRecord::Base
  belongs_to :sender, class_name: "User"
  belongs_to :game
end
class User < ActiveRecord::Base
  validates :username, :password, presence: true
  validates_uniqueness_of :username, :email
  has_secure_password

  has_many :friendships, :foreign_key => 'friendee'
  has_many :friendships, :foreign_key => 'friend'

  has_many :comments

  has_many :games

  def self.session_user session_id
    User.find_by_id(session_id)
  end

  def current_user? session_id
    self.id.eql? User.session_user session_id
  end
end
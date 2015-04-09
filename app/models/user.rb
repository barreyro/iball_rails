class User < ActiveRecord::Base
  validates :username, :password, presence: true
  validates_uniqueness_of :username, :email
  has_secure_password

  has_many :friendships, :foreign_key => 'friendee'
  has_many :friendships, :foreign_key => 'friend'

  has_many :comments


end
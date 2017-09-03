class User < ApplicationRecord
  has_secure_password

  belongs_to :location, optional: true

  enum role: ["default", "admin"]

  validates_presence_of :username, :password
  validates_uniqueness_of :username
end

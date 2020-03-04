class User < ApplicationRecord
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i

  has_many :teams_users
  has_many :teams, through: :teams_users
  has_many :roles_users
  has_many :roles, through: :roles_users

  before_save do
    self.email = email.downcase
  end

  validates :name,      presence: true
  validates :surname,   presence: true
  validates :email,     presence: true, length: { maximum: 255 },
                        format: { with: VALID_EMAIL_REGEX },
                        uniqueness: { case_sensitive: false }
  validates :password,  presence: true, length: { minimum: 6 }

  has_secure_password
end

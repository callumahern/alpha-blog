class User < ApplicationRecord
  has_secure_password
  before_save { self.email = email.downcase }
  has_many :articles, dependent: :destroy
  validates :username, presence: true, 
                      uniqueness: true, 
                      length: { minimum: 3, maximum: 25 }
  VALID_EMAIL_REGEX = /\A[^@\s]+@([^@.\s]+\.)+[^@.\s]+\z/

  validates :email, presence: true, 
                    uniqueness: true, 
                    length: { maximum: 105 }, 
                    format: { with: VALID_EMAIL_REGEX }
end
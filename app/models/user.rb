class User < ActiveRecord::Base

  has_many :links, dependent: :destroy
  has_many :votes

  validates :name, presence: true,
            length: {maximum: 50}

  validates :email, presence: true,
            length: {maximum: 244},
            uniqueness: {case_sensitive: false}

  has_secure_password
end

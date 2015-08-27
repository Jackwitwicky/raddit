class Link < ActiveRecord::Base

  has_many :votes, dependent: :destroy
  has_many :comments

  belongs_to :user

  validates :title, presence: true

  validates :url, presence: true
end

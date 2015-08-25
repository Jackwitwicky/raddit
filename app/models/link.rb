class Link < ActiveRecord::Base

  has_many :votes, dependent: :destroy
  belongs_to :user

  validates :title, presence: true

  validates :url, presence: true
end

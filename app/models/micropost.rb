class Micropost < ActiveRecord::Base
  belongs_to :user
  attr_accessible :content

  default_scope order('created_at DESC')

  validates :content, presence: true
  validates :content, length: { maximum: 140 }
end

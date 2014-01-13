class Review < ActiveRecord::Base
  belongs_to :book
  belongs_to :user
  

  validates :comment, length: { minimum: 4 }
end

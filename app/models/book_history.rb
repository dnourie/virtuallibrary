class BookHistory < ActiveRecord::Base
  belongs_to :book
  belongs_to :user

  validates :book, :user, presence: true

  default_scope { order("id DESC") }
end

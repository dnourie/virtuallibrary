class BookCategory < ActiveRecord::Base
  belongs_to :book
  belongs_to :category

  validates :category_id, presence: true
end

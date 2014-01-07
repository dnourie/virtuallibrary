require 'model_helper'
class Book < ActiveRecord::Base
  include ModelHelper

  belongs_to :user
  has_many :reviews, dependent: :destroy
  has_many :book_histories, dependent: :destroy
  has_many :book_categories, dependent: :destroy
  has_many :categories, through: :book_categories

  validates :title, presence: true

  # Instance methods
  def is_borrowed?
    book_histories.find_by(is_returned: false).present?
  end

  def borrower_id
    book_histories.last.user_id
  end
end

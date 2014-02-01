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
  def get_borrowed
  book_histories.where(is_returned: false).last
  end

  def is_borrowed?
  get_borrowed.present?
  end


  def borrower_id
    book_histories.last.user_id
  end


  def get_latest_book_history(user_id) 
  end
end

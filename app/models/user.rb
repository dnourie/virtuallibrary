class User < ActiveRecord::Base
  has_secure_password

  has_many :books

  validates :name, presence: true, uniqueness: true
  


  #
  # Instance methods
  #

  def first_name
    name.present? ? name.split(/\s+/).first : "Unknown"
  end
end

class User < ActiveRecord::Base
  has_secure_password

  has_many :books

  validates :name, presence: true, uniqueness: true
  validates :email, presence: true, uniqueness: true
  validates :password, confirmation: true
  validates :password, :length => { :in => 6..20 }


  #
  # Instance methods
  #

  def first_name
    name.present? ? name.split(/\s+/).first : "Unknown"
  end
end

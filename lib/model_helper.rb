module ModelHelper

  #
  # Formatters
  #

  # Pages
  def page_title; page.present? ? page.title : ""; end

  # Users
  def user_name(pp = false); user.present? ? user.name : (pp ? "Unknown" : ""); end
  def user_first_name; user.present? ? user.first_name : ""; end
  def user_username; user.present? ? user.username : ""; end
  def user_email; user.present? ? user.email : ""; end

  # Categories
  def category_names
    categories.present? ? categories.map(&:name).join(", ") : ""
  end


  #
  # Getters
  #

  def get_all_categories; Category.all; end
  def get_all_users; User.all; end
  def get_all_pages; Page.all; end
end

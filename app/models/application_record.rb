class ApplicationRecord < ActiveRecord::Base
  self.abstract_class = true

  def user_is_logged_in
      false
  end
end

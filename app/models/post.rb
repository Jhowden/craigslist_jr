class Post < ActiveRecord::Base
  # Remember to create a migration!
  belongs_to :category
  validates :email, presence: true
end

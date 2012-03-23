class Book < ActiveRecord::Base
  scope :checked_in, where(:checked_out => false).order("publish_year DESC")
  scope :checked_out, where(:checked_out => true).order("publish_year DESC")
  scope :search, lambda { |query|
    where( [ "title LIKE ?", "%#{query}%" ])
  }
  paginates_per 5
end

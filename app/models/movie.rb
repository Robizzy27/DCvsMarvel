class Movie < ActiveRecord::Base
  belongs_to :director
  belongs_to :publisher
  has_many :actors

  # scope :dc, where(:publisher_id => "dc")
  # scope :marvel, where(:publisher_id => "marvel")
end

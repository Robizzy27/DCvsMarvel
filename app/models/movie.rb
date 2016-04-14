class Movie < ActiveRecord::Base
  belongs_to :director
  belongs_to :publisher
  has_many :actors

  # mms: I like seeing that you are working to create helpers that identify/support your domain.
  # scope :dc, where(:publisher_id => "dc")
  # scope :marvel, where(:publisher_id => "marvel")
end

class Movie < ActiveRecord::Base
  belongs_to :director
  belongs_to :publisher
  has_many :actors
end

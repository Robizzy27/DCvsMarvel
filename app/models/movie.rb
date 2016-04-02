class Movie < ActiveRecord::Base
  belongs_to :director
  has_many :actors
end

class Game < ActiveRecord::Base
  has_many :reviews
  #order matters-you must place the first has_many that references the join table above the second has_many that goes through that join table. 
  has_many :users, through: :reviews

end

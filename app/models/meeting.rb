class Meeting < ActiveRecord::Base
  has_many :users
  has_many :teams
end

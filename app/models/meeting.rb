class Meeting < ActiveRecord::Base
	validates :name, presence: true, length: { maximum: 20 }
	validates :content, presence: true
	has_many :users
	has_many :teams
end

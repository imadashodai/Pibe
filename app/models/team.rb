class Team < ActiveRecord::Base
    has_many :users
    validates :name, presence: true, length: { maximum: 20 }
end

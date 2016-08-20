class Team < ActiveRecord::Base
    mount_uploader :avatar, AvatarUploader
    has_many :users
    has_many :teams
    validates :name, presence: true, length: { maximum: 20 }
end

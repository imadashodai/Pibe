class Team < ActiveRecord::Base
    mount_uploader :avatar, AvatarUploader
    has_many :users
    validates :name, presence: true, length: { maximum: 20 }
end

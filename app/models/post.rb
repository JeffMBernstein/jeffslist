class Post < ActiveRecord::Base
	belongs_to :city
	belongs_to :country

	mount_uploader :avatar, AvatarUploader
end

class Student < ActiveRecord::Base
  	belongs_to :teacher
	mount_uploader :image, ImageUploader

end

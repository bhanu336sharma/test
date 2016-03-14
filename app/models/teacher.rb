class Teacher < ActiveRecord::Base
	has_many :students
	accepts_nested_attributes_for :students
	mount_uploader :image, ImageUploader

end

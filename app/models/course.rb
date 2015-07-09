class Course < ActiveRecord::Base

	validates :name, presence: true
	validates :name, uniqueness: true
	validates :code, presence: true
	validates :code, uniqueness: true

	has_many :crushes
end

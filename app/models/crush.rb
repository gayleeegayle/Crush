class Crush < ActiveRecord::Base

	GENDER = ["Male", "Female"]

	validates :first_name, presence: true
	validates :last_name, presence: true
	validates :course, presence: true
	validates :gender, inclusion: {in: Crush::GENDER}
	validates :gender, presence: true

	belongs_to :course
	has_many :schedules

	def to_s
		"#{self.first_name} #{self.last_name}"
	end
end

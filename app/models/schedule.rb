class Schedule < ActiveRecord::Base

	validates :crush, presence: true
	validates :start_date, presence: true
	validates :end_date, presence: true
	validates_datetime :start_date, :before => :end_date
		#thanks gem 'validates_timeliness'
	validates :location, presence: true

	belongs_to :crush
end

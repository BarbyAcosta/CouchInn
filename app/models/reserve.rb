class Reserve < ActiveRecord::Base
	validates_presence_of :name
	validates_uniqueness_of :name
	validates_presence_of :fechaini
	validates_presence_of :fechafin
	validates_uniqueness_of :fechafin
	validates_presence_of :user_id
	validates_presence_of :confirmada
	validates_presence_of :couch_id
	
	belongs_to :couch
	belongs_to :user

	scope :confirmed, -> { where(confirmed: true) }	
end

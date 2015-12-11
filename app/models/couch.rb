class Couch < ActiveRecord::Base
	validates_presence_of :name		
	validates_presence_of :description		
	validates_presence_of :imageurl		
	validates_presence_of :tipocouch_id
	validates_presence_of :capacidad		
	validates_presence_of :localidad		

	belongs_to :tipocouch
	belongs_to :user
	belongs_to :count
	has_many :reserves
end

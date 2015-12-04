class Count < ActiveRecord::Base

	validates_presence_of :dni 
	validates_presence_of :numtarj 
	validates_presence_of :venc 
	validates_presence_of :cod
	
	belongs_to :user
	
end

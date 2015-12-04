class Tipocouch < ActiveRecord::Base
	#attr_accessible  :name
	#sattr_accessible  :description
	validates_presence_of :name
	validates_uniqueness_of :name
	#default_scope -> {order("id_at_desc")}
	validates :name, presence: true, length: { minimum: 4 }
	has_many :couches

	belongs_to :user
end

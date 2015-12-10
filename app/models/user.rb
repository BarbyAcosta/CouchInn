class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
	

	validates :name, presence: true, length: { minimum: 3 }
	validates :lastname, presence: true, length: { minimum: 3 }
	validates :provincia, presence: true, length: { minimum: 3 }
	validates :localidad, presence: true, length: { minimum: 3 }
  validates :genero, presence: true

	validates :dni, presence: true, length: {is: 7}
	validates_numericality_of :dni, :message => "Debe ingresar numeros"


  has_many :couches
  has_many :counts

  has_many :reserves
  end

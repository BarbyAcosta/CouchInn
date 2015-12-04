class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :couches
  has_many :counts

  has_many :tipocouches
  #Busca la primera persona que se registro y dice que es administrador.
  User.find(1).update_attribute :admin, true
end

class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  #validate :validar_edad

  #def validar_edad
  #	if Validacion de fecha
  #		errors.add(:fecha_nac, "No es mayor de 18 años")
end

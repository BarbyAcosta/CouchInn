class ReportsController < ApplicationController
 
  def ganancias
  	@usuarios= User.where(:fecha_premium.between?(@fecha_inicio,@fecha_fin))
  	@ganancia= usuarios.all * :precio_premium   
  end

  def registrados
  	@usuarios= User.where(:remember_created_at.between?(@fecha_inicio,@fecha_fin))
  end

end

class ReportsController < ApplicationController
  def ganancias
  	@usuarios= User.where(:remember_created_at.between?(@fecha_inicio,@fecha_fin))
  	#usar between t3.between?(t1,t2)
  end

  def registrados
  end
end

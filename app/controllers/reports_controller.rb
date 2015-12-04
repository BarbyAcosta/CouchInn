class ReportsController < ApplicationController
	before
  def ganancias
  	@usuarios= User.where(:remember_created_at < "@fecha_fin", :remember_created_at > "@fecha_inicio")
  	#usar between
  end

  def registrados
  end
end

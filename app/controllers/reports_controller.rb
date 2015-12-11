class ReportsController < ApplicationController

  def registrados
    @report = Report.all
    fe_ini=params[:fecha_inicio]
    fe_fin=params[:fecha_fin]
    @usuarios= User.where("created_at > ? AND  created_at < ?", fe_ini, fe_fin).order("created_at")
  end

  def ganancias
    @report = Report.all
    @usuarios = User.all
    #@usuarios= User.where("created_at > ? AND  created_at < ?", f_inicio, f_fin).order("created_at")
    @usuarios.each do |u|
      @total = @total + u.precio_premium
    end
  end
end

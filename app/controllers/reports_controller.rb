class ReportsController < ApplicationController
  before_action :get_report, only: [:edit, :update, :destroy, :show]

  def get_report
      @report = Report.find(params[:id])
  end

  def show
  end

  def index
    @reports = Report.all.order(:id)
  end

  def new
    @report = Report.new
  end

  def edit
  end

  def create
    @report = Report.new(params.require(:f_inicio, :f_fin).permit(:f_inicio, :f_fin))
    if @report.save
      redirect_to reports_index_path
    else
      render 'new'
    end
  end

  def update
    if @report.update_attributes(params.require(:f_inicio, :f_fin).permit(:f_inicio, :f_fin))
      redirect_to reports_index_path
    else
     render 'edit'
    end
    
  end

  def destroy
    @report.destroy
    redirect_to reports_index_path
  end

  def registrados
    @report = Report.all
    #@usuarios= User.all
    #@usuarios= User.where("created_at > ? AND  created_at < ?", f_inicio, f_fin).order("created_at")
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

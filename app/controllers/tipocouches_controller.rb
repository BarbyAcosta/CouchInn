class TipocouchesController < ApplicationController
  before_action :get_tipocouch, only: [:edit, :update, :destroy, :show]

  def get_tipocouch
    @tipocouch = Tipocouch.find(params[:id])
  end

  def show
  end

  def index
    @tipocouches = Tipocouch.all.order(:id)
  end

  def new
    @tipocouch = Tipocouch.new
  end

  def edit

  end
 
  def create
    @tipocouch = Tipocouch.new(params.require(:tipocouch).permit(:name, :description))
    if @tipocouch.save
      redirect_to tipocouches_path
    else
      render 'new'
    end
  end

  def update
     if @tipocouch.update_attributes(params.require(:tipocouch).permit(:name, :description))
      redirect_to tipocouches_path
    else
     render 'edit'
    end
  end

  def destroy
    @tipocouch.destroy
    redirect_to tipocouches_path
  end

end
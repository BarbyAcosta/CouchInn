class CountsController < ApplicationController
  before_action :get_count, only: [:edit, :update, :destroy]

  def get_count
    @count = Count.find(params[:id])
  end

  def index
    @count= Count.all
  end

  def show    
    @count = Count.find(params[:id])
  end

  def new
    @count = Count.new
    @u = User.all
    #no tendrias que hacer all porque te pide los datos para la cantidad de personas registradas
    #si hay 2 usuarios, te pide los datos de los dos uno debajo del otro  
    
  end

  def edit
  end

  def create
    @count = Count.new(params.require(:count).permit(:dni, :numtarj, :venc, :cod)) 
    @count.save

    redirect_to counts_path
  end

  def update
    @count.update_attributes(params.require(:count).permit(:dni, :numtarj, :venc, :cod))
     redirect_to counts_path
  end

  def destroy
    @count.destroy
  end
end
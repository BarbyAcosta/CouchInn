class CouchesController < ApplicationController
 before_action :get_couch, only: [:edit, :update, :destroy]

  def get_couch
    @couch = Couch.find(params[:id])
  end

  def index
    @couch= Couch.all
  end

  def mis_couches
    @couches = current_user.couches
    current_user.premium = false
  end 

  def show    
    @couch = Couch.find(params[:id])
    @user = @couch.user
  end

  def new
    @couch = Couch.new
    @c = Couch.all 
    @t = Tipocouch.all  
    
  end

  def edit
  end

  def create
    @couch = Couch.new(params.require(:couch).permit(:name, :description, :imageurl, :localidad , :capacidad ,:tipocouch_id)) 
    @couch.user = current_user
    @couch.save

    redirect_to couches_path
  end

  def update
    @couch.update_attributes(params.require(:couch).permit(:name, :description, :imageurl, :tipocouch_id , :capacidad , :localidad))
     redirect_to couches_path
  end

  def destroy
    @couch.destroy
    redirect_to couches_path
  end
  

end

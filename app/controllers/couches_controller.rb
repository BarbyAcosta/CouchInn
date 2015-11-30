class CouchesController < ApplicationController
  before_action :get_couch, only: [:edit, :update, :destroy]

  def get_couch
    @couch = Couch.find(params[:id])
  end
  def index
     @couch= Couch.all
  end

  def show
  end

  def new
     @couch = Couch.new
  end

  def edit
  end

  def create
    @couch = Couch.new(params.require(:couch).permit(:name, :fechaini, :fechafin))
    @couch.save

    redirect_to couches_path
  end

  def update
     @couch.update_attributes(params.require(:couch).permit(:name, :fechaini, :fechafin))
     redirect_to couches_path
  end

  def destroy
    @couch.destroy
    redirect_to couches_path
  end
end

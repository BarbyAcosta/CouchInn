class ReservesController < ApplicationController
  before_action :get_reserve, only: [:edit, :update, :destroy]

  def get_reserve
    @reserve = Reserve.find(params[:id])
  end

  def index
    @reserve= Reserve.all
  end

  def show
  end

  def new
    @reserve = Reserve.new
  end

  def edit
  end

  def create
    @reserve = Reserve.new(params.require(:reserve).permit(:name, :description, :imageurl))
    @reserve.save

    redirect_to reserves_path
  end

  def update
    @reserve.update_attributes(params.require(:reserve).permit(:name, :description, :imageurl))
     redirect_to reserves_path
  end

  def destroy
    @reserve.destroy
  end
end

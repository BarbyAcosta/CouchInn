class ReservesController < ApplicationController
  before_action :get_reserve, only: [:edit, :update, :destroy]

  def get_reserve
    @reserve = Reserve.find(params[:id])
  end
  def index
     @reserve= Reserve.all
  end

  def show  
  @reserve = Reserve.find(params[:id])
    @user = @reserve.user  
  end

  def new
      @reserve = Reserve.new(couch_id: params[:couch_id])
  end

  def edit
  end

  def create
    @reserve = Reserve.new(params.require(:reserve).permit(:name, :fechaini, :fechafin, :couch_id ))
    @reserve.save

    redirect_to reserves_path
  end

  def update
     @reserve.update_attributes(params.require(:reserve).permit(:name, :fechaini, :fechafin, :confirmada, :couch_id , :user_id))
     redirect_to reserves_path
  end

  def destroy
    @reserve.destroy
    redirect_to reserves_path
  end
  
end
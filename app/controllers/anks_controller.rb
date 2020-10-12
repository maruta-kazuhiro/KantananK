class AnksController < ApplicationController
  before_action :set_ank, only: [:edit, :show]
  before_action :move_to_index, except: [:index, :show]

  def index
    @anks = Ank.all
  end

  def new
    @ank = Ank.new
  end

  def create
    Ank.create!(ank_params)
  end

  def destroy
    ank = Ank.find(params[:id])
    ank.destroy
  end

  def edit
  end

  def update
    ank = Ank.find(params[:id])
    ank.update(ank_params)
  end

  def show
  end


  private

  def ank_params
    params.require(:ank).permit(:image, :question, :answer1, :answer2, :answer3)
  end

  def set_ank
    @ank = Ank.find(params[:id])
  end

  def move_to_index
    unless user_signed_in?
      redirect_to root_path
    end
  end

end

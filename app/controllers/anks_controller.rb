class AnksController < ApplicationController


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

  private

  def ank_params
    params.require(:ank).permit(:image, :question, :answer1, :answer2, :answer3)
  end

  def move_to_index
    unless user_signed_in?
      redirect_to action: :index
    end
  end

end

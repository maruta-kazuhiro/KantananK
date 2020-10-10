class AnksController < ApplicationController
  before_action :move_to_index, except: [:index, :show]

  def index
    @anks = Ank.all
  end

  private
  
  def move_to_index
    unless user_signed_in?
      redirect_to action: :index
    end
  end

end

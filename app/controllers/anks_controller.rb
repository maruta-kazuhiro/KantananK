class AnksController < ApplicationController

  def index
    @anks = Ank.all
  end

end

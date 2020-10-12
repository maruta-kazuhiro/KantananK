class AnswersController < ApplicationController

  def index
    @ank = Ank.find(params[:ank_id])
  end
  
  def new
    @answer = Answer.new
  end

  def create
    Answer.create(answers_params)
  end

  def show
    @answer = Answer.all
    @ank = Ank.find(params[:ank_id])
  end


  private

  def answers_params
    params.permit(:token, :question_id, :answer2_1, :answer2_2, :answer2_3, :ank_id).merge(user_id: current_user.id)
  end

end

class TangosController < ApplicationController

  def create
    @tangos = Tango.create(tango_params)
    redirect_to "/"
  end

  def destroy
    tango = Tango.find(params[:id])
    tango.destroy
    redirect_to "/"
  end
  
  def show
    @tangos = Tango.where(user_id: current_user.id).sample(5)
  end

  def drillnew
    @tangos = Tango.where(user_id: current_user.id)
  end

  def drill1test
    @quizzes = Drill1.all
    @tangos = Tango.where(user_id: current_user.id)
  end

  def drillmark
    @tangos = Tango.where(user_id: current_user.id)
    quizzes = Drill1.find(params[:quiz])
    @ansers = []
    quizzes.each do |q|
      @ansers << {quiz: q, right: q.anser?(params["quiz#{q.id}"])}
    end
  end

  
  private
  def tango_params
    params.require(:tango).permit(:question, :anser, :result).merge(user_id: current_user.id)
  end
end

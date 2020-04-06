class TangosController < ApplicationController

  def index
    @tangos = Tango.all
  end

  def new
    @tango = Tango.new
  end

  def create
    Tango.create(tango_params)
    redirect_to "/"
  end

  def destroy
    tango = Tango.find(params[:id])
    tango.destroy
    redirect_to "/"
  end
  
  def show
    @tangos = Tango.all.sample(5)
  end

  def drilltest
    @quizzes = Drill1.all
  end

  def drillmark
    quizzes = Drill1.find(params[:quiz])
    @ansers = []
    quizzes.each do |q|
      @ansers << {quiz: q, right: q.anser?(params["quiz#{q.id}"])}
    end
  end
  private
  def tango_params
    params.require(:tango).permit(:question, :anser, :result)
  end
end

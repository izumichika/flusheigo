class TangosController < ApplicationController

  def index
    @tangos = Tango.all
  end

  def new
    @tango = Tango.new
  end

  def create
    Tango.create(tango_params)
  end

  
  
  private
  def tango_params
    params.require(:tango).permit(:question, :anser, :result)
  end
end

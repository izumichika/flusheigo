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
  
  private
  def tango_params
    params.require(:tango).permit(:question, :anser, :result)
  end
end

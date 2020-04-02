class TangosController < ApplicationController

  def index
    @tangos = Tango.all
  end

  def new
    @tango = Tango.new
  end

  def create
    
  end
  
end

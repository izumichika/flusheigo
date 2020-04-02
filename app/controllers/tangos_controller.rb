class TangosController < ApplicationController

  def index
    @tangos = Tango.all
  end

  def new
  end

  def create
  end
  
end

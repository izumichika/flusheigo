class TangosController < ApplicationController

  def index
    @tangos = Tango.all
  end

  
end

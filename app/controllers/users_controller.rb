class UsersController < ApplicationController

  def show
    @tangos = Tango.all.order(id: "DESC")
    @tango = Tango.new
  end
  
end

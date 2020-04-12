class UsersController < ApplicationController

  def show
    @tangos = Tango.all.order(id: "DESC")
    @tango = Tango.new
  end

  # def create
  #   @tangos = Tango.create(tango_params)
  #   # Tango.create(tango_params)
  #   redirect_to "/"
  # end

  # private
  # def tango_params
  #   params.require(:tango).permit(:question, :anser)
  # end

end

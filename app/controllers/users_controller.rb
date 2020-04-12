class UsersController < ApplicationController

  def show
    @tangos = Tango.where(user_id: current_user.id).order(id: "DESC")
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

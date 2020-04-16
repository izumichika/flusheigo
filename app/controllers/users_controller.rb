class UsersController < ApplicationController

  def show
    @tangos = Tango.where(user_id: current_user.id).order(id: "DESC").page(params[:page]).per(10)
    @tango = Tango.new
  end

end

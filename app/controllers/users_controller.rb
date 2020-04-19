class UsersController < ApplicationController

  # def show
  #   @tangos = Tango.where(user_id: current_user.id).order(id: "DESC").page(params[:page]).per(10)
  #   @tango = Tango.new
  # end
  def show
    @q = current_user.tangos.order(id: "DESC").ransack(params[:q])
    @tangos = @q.result(distinct: true).page(params[:page]).per(10)
    @tango = Tango.new
  end
end

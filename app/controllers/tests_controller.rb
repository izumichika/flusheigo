class TestsController < ApplicationController

  def test
    @tangos = Tango.where(user_id: current_user.id).sample(10)
  end

  def mark
    quizzes = Tango.find(params[:quiz])
    # @ansers = []
    @tangos = []
    # quizzes.each do |q|
    #   @ansers << {quiz: q, right: q.anser?(params["quiz#{q.id}"])}
    # end
    quizzes.each do |q|
      @tangos << {quiz: q, right: q.anser?(params["quiz#{q.id}"])}
    end
  end

end
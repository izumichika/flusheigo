class TestsController < ApplicationController

  def test
    @quizzes = Tango.all.sample(10)
  end

  def mark
    quizzes = Tango.find(params[:quiz])
    @ansers = []
    quizzes.each do |q|
      @ansers << {quiz: q, right: q.anser?(params["quiz#{q.id}"])}
    end
  end

end
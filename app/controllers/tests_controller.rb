class TestsController < ApplicationController

  def test
    @quizzes = Tango.all.sample(2)
  end

  def mark
    quizzes = Tango.find(params[:quiz])
    # binding.pry
    @ansers = []
    quizzes.each do |q|
      @ansers << {quiz: q, right: q.anser?(params["quiz#{q.id}"])}
      # binding.pry
    end
  end

end
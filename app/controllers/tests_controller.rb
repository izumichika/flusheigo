class TestsController < ApplicationController

  def test
    @quizzes = Tango.all.sample(1)
  end

  def mark
    quizzes = Tango.find(params[:tests])
    @ansers = []
    quizzes.each do |q|
      ansers << {quiz: q, right: q.right_anser?(params["quiz#{q.id}"])}
    end
  end
  
end
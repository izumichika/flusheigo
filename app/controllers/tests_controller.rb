class TestsController < ApplicationController

  def test
    @quizzes = Quiz.all.sample(5)
  end

  def mark
    quizzes = Quiz.find(params[:tests])
    @answers = []
    quizzes.each do |q|
       answers << {quiz: q, right: q.right_answer?(params["quiz#{q.id}"])}
    end
  end

end

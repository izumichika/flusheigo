class TestsController < ApplicationController
  def test
    # @quizzes = Test.all.sample(5)
  end

  def mark
    # quizzes = Test.find(params[:tests])
    # @answers = []
    # quizzes.each do |q|
    #   answers << {quiz: q, right: q.right_answer?(params["test#{q.id}"])}
    # end
  end
end
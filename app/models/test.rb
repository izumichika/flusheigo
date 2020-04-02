class Test < ApplicationRecord
  attr_accessor :question, :right_answer
  
  def right_answer?(reply)
    return self.right_answer == reply
  end
end
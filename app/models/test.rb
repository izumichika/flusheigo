class Test < ApplicationRecord
  attr_accessor :question, :right_anser

  def right_anser?(reply)
    return self.right_anser == reply
  end
end

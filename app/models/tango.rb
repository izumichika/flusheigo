class Tango < ApplicationRecord
  attr_accessor :left_question, :right_anser

  def anser?(reply)
    return self.anser == reply
  end

end

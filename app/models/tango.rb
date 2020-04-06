class Tango < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  attr_accessor :left_question, :right_anser
  belongs_to_active_hash :drill1
  
  def anser?(reply)
    return self.anser == reply
  end

  # def correct?(reply)
  #   return self.anser == reply
  # end
  
end

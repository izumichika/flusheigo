class Tango < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  attr_accessor :left_question, :right_anser
  belongs_to_active_hash :drill1
  
  belongs_to :user
  
  def anser?(reply)
    return self.anser == reply
  end

  # def correct?(reply)
  #   return self.anser == reply
  # end
  validates :anser, presence: true
  validates :question, presence: true, format: {with: /\A[ぁ-んァ-ン一-龥]/, message: 'は全角で入力してください'}
end

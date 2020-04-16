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
  validates :anser, presence: true, format: {with: /\A[a-z0-9]+\z/, message: 'は半角アルファベットで入力してください'}
  validates :question, presence: true
end

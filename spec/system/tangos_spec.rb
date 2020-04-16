require 'rails_helper'

describe '単語管理機能' type: :system do
  describe '単語表示機能' do
    before do
      #ユーザーAを作成しておく
      user_a = FactoryBot.create(:user, name: 'ユーザーA', email: 'a@example.com')
      #作成者がユーザーAである単語を作成しておく
      FactoryBot.create(:tango, question: '確認', anser: 'check', user: user_a)
    end

    context 'ユーザーAがログインしているとき' do
      before do
        #ユーザーAでログインする
      end

      it 'ユーザーAが作成した単語が表示される' do
        #作成済みの単語の日本語と英語が画面上に表示されていることを確認
      end
    end
  end
end
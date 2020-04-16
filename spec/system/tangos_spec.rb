require 'rails_helper'

describe '単語管理機能', type: :system do
  describe '単語表示機能' do
    before do
      #ユーザーAを作成しておく
      user_a = FactoryBot.create(:user, email: 'a@example.com')
      #作成者がユーザーAである単語を作成しておく
      FactoryBot.create(:tango, question: '確認', user: user_a)
    end

    context 'ユーザーAがログインしているとき' do
      before do
      #ユーザーAでログインする
        #ログイン画面にアクセスする
        visit new_user_session_path
        #メールアドレスを入力する
        fill_in 'メールアドレス', with: 'a@example.com'
        #パスワードを入力する
        fill_in 'パスワード', with: 'password'
        #ログインするボタンを押す
        click_button 'ログイン'
      end

      it 'ユーザーAが作成した単語が表示される' do
        #作成済みの単語の日本語と英語が画面上に表示されていることを確認
        expect(page).to have_content '確認'
      end
    end

    context 'ユーザーBがログインしているとき' do
      before do
        #ユーザーBを作成しておく
        FactoryBot.create(:user, email: 'b@example.com')
        #ユーザーBでログインする
        visit new_user_session_path
        fill_in 'メールアドレス', with: 'b@example.com'
        fill_in 'パスワード', with: 'password'
        click_button 'ログイン'
      end

      it 'ユーザーAが作成した単語が表示されない' do
        #ユーザーAが作成したタスクの問いが画面上に表示されていないことを確認
        expect(page).to have_no_content '確認'
      end
    end
  end
end
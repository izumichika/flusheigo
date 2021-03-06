require 'rails_helper'
# ターミナル テスト実行コマンド
# bundle exec rspec spec/system/tangos_spec.rb
describe '単語管理機能', type: :system do
  let(:user_a) { FactoryBot.create(:user, email: 'a@example.com')}
  let(:user_b) { FactoryBot.create(:user, email: 'b@example.com')}
  let!(:tango_a) { FactoryBot.create(:tango, question: '確認', user: user_a)}

  before do
    visit new_user_session_path
    fill_in 'メールアドレス', with: login_user.email
    fill_in 'パスワード', with: login_user.password
    click_button 'ログイン'
  end

  shared_examples_for 'ユーザーAが作成した単語が表示される' do
    it { expect(page).to have_content '確認' }
  end

  describe '単語表示機能' do
    context 'ユーザーAがログインしているとき' do
      let(:login_user) { user_a }

      it_behaves_like 'ユーザーAが作成した単語が表示される'
    end

    context 'ユーザーBがログインしているとき' do
      let(:login_user) { user_b }

      it 'ユーザーAが作成した単語が表示されない' do
        expect(page).to have_no_content '確認'
      end
    end
  end

  describe 'フラッシュ機能' do
    context 'ユーザーAがログインしているとき' do
      let(:login_user) { user_a }

      before do
        visit flush_tangos_path(tango_a)
      end

      it_behaves_like 'ユーザーAが作成した単語が表示される'
    end
  end

  describe '新規作成機能' do
    let(:login_user) { user_a }

    before do
      visit root_path
      fill_in "jinput", with: tango_question
      click_button '作成'
    end

    context '新規フォームで問いを入力したとき' do
      let(:tango_question) { 'テスト' }

      it_behaves_like 'ユーザーAが作成した単語が表示される'
    end

    context '新規フォームで問いを入力しなかったとき' do
      let(:tango_question) { '' }

      it '何も登録されずリダイレクト' do
        visit root_path
      end
    end
  end

end
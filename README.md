# README

### アプリ名 MY英単語

### アプリの目的
- 英語の学習を目的にこのアプリを作りました.<br>
元々自分自身、英語に苦手意識があり、なかなか勉強に一歩踏み出せない気持ちを持っていました。<br>
でも英語を上手くなってみたいという思いもあり、どうしたら勉強のハードルを下げられるだろう？どうしたらもっと簡単に勉強ができるだろうと考えこのアプリを作ろうと思いました。<br>
このアプリは自分のあったらいいなを実現し、より簡単に、お手軽に英語に触れることを目指して制作しています。<br>

### URL
http://3.115.133.232/

### データ登録済みのテストアカウント
メールアドレス　test@gmail.com<br>
パスワード　　　87654321

### 開発環境
- ruby 2.5.1
- rails 5.2.3
- mysql2 0.5.3

### 各種機能＆導入技術
- 基本機能
  - 登録、削除
  - ドリル(active_hash)
  - 正誤判定(ruby)
  - フラッシュ
    - カウントダウン、自動更新(JQuery)
- マークアップ(haml,scss)
- ユーザー管理（devise)
- ページネーション(kaminari)
- マークアップ(haml,scss)
- テスト（RSpec)
- プラットフォーム（AWS）
- 自動デプロイ(capistrano)

### 各種機能の動作

- 単語登録・削除<br>
![MY単語登録](https://user-images.githubusercontent.com/61169243/79117005-db07b980-7dc4-11ea-89fa-df85ca4c5b2a.gif)
<br>

- 単語テスト 自身が登録した英単語をテストできます<br>
![単語テスト](https://user-images.githubusercontent.com/61169243/79117007-df33d700-7dc4-11ea-827f-3156fe654fbf.gif)
<br>

- 単語フラッシュ 自身が登録した単語が５秒ごとに５個ずつランダムに表示されます<br>
![フラッシュ](https://user-images.githubusercontent.com/61169243/79117017-e65ae500-7dc4-11ea-9a7c-d13d3dedfc1f.gif)
<br>

- 単語ドリル 英単語の問題集にチャレンジできます<br>
![ドリル](https://user-images.githubusercontent.com/61169243/79117448-18207b80-7dc6-11ea-968b-383cdefb1ea7.gif)
<br>

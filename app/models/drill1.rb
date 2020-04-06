class Drill1 < ActiveHash::Base

  def anser?(reply)
    return self.anser == reply
  end

  self.data = [
    {id: 1, question: 'その~', anser: 'the'},{id: 2, question: '~の', anser: 'of'},
    {id: 3, question: '~を持つ', anser: 'have'},{id: 4, question: 'あなた', anser: 'you'},
    {id: 5, question: '彼', anser: 'he'},{id: 6, question: '~と一緒に', anser: 'with'},
    {id: 7, question: '~として', anser: 'as'},{id: 8, question: 'しかし', anser: 'but'},
    {id: 9, question: '~と言う', anser: 'say'},{id: 10, question: '私たち', anser: 'we'},
    {id: 11, question: '彼女', anser: 'she'},{id: 12, question: '~から', anser: 'from'},
    {id: 13, question: '~または', anser: 'or'},{id: 14, question: '~へ行く', anser: 'go'},
    {id: 15, question: '~を知る', anser: 'know'},{id: 16, question: '~自分の', anser: 'my'},
    {id: 17, question: '~と思う', anser: 'think'},{id: 18, question: '~と会う', anser: 'see'},
    {id: 19, question: 'より~', anser: 'more'},{id: 20, question: '~について', anser: 'about'},
    {id: 21, question: 'もし~', anser: 'if'},{id: 22, question: '~できる', anser: 'can'},
    {id: 23, question: '全ての', anser: 'all'},{id: 24, question: '~を得る', anser: 'get'},
    {id: 25, question: '~が好き', anser: 'like'},{id: 26, question: '一つの', anser: 'one'},
    {id: 27, question: '年', anser: 'yeat'},{id: 28, question: '~を作る', anser: 'make'},
    {id: 29, question: '時間', anser: 'time'},{id: 30, question: '彼の~', anser: 'him'},
    {id: 31, question: '二つの~', anser: 'two'},{id: 32, question: '~を見る', anser: 'look'},
    {id: 33, question: '来る', anser: 'come'},{id: 34, question: '人々', anser: 'people'},
    {id: 35, question: '最初の', anser: 'first'},{id: 36, question: '新しい', anser: 'new'},
    {id: 37, question: '道', anser: 'way'},{id: 38, question: '良い', anser: 'good'},
    {id: 39, question: '~を与える', anser: 'give'},{id: 40, question: '~を使う', anser: 'use'},
    {id: 41, question: '~を見つける', anser: 'find'},{id: 42, question: '~が必要', anser: 'need'},
    {id: 43, question: 'まだ', anser: 'still'},{id: 44, question: '最後', anser: 'last'},
    {id: 45, question: '長い', anser: 'long'},{id: 46, question: '~の間', anser: 'between'},
    {id: 47, question: '少しの', anser: 'little'},{id: 48, question: '~を尋ねる', anser: 'ask'},
    {id: 49, question: '~を感じる', anser: 'feel'},{id: 50, question: '家', anser: 'home'}
  ]
end
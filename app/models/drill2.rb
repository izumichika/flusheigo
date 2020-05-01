class Drill2 < ActiveHash::Base

  def anser?(reply)
    return self.anser == reply
  end

  self.data = [
    {id: 1, question: '今', anser: 'now'},{id: 2, question: '~の中へ', anser: 'into'},
    {id: 3, question: 'あなたの', anser: 'your'},{id: 4, question: '人々', anser: 'people'},
    {id: 5, question: '〜を見る', anser: 'look'},{id: 6, question: '来る', anser: 'come'},
    {id: 7, question: '使う', anser: 'use'},{id: 8, question: '超える', anser: 'over'},
    {id: 9, question: '〜より', anser: 'than'},{id: 10, question: '働く', anser: 'work'},
    {id: 11, question: '欲しい', anser: 'want'},{id: 12, question: '何故なら', anser: 'because'},
    {id: 13, question: '〜のあとで', anser: 'after'},{id: 14, question: '道', anser: 'way'},
    {id: 15, question: '私たちの', anser: 'our'},{id: 16, question: '新しい', anser: 'new'},
    {id: 17, question: '男性', anser: 'man'},{id: 18, question: '与える', anser: 'give'},
    {id: 19, question: '最も', anser: 'most'},{id: 20, question: '見つける', anser: 'find'},
    {id: 21, question: '〜が必要', anser: 'need'},{id: 22, question: '最後の', anser: 'last'},
    {id: 23, question: '〜を通して', anser: 'through'},{id: 24, question: '〜の前', anser: 'before'},
    {id: 25, question: 'まだ', anser: 'still'},{id: 26, question: '〜を意味する', anser: 'mean'},
    {id: 27, question: '長い', anser: 'long'},{id: 28, question: '置く', anser: 'put'},
    {id: 29, question: '子供', anser: 'child'},{id: 30, question: '〜の間', anser: 'between'},
    {id: 31, question: '試す', anser: 'try'},{id: 32, question: '人生', anser: 'life'},
    {id: 33, question: '来る', anser: 'come'},{id: 34, question: '人々', anser: 'people'},
    {id: 35, question: '同じ', anser: 'same'},{id: 36, question: '会話する', anser: 'talk'},
    {id: 37, question: '変える', anser: 'change'},{id: 38, question: '週', anser: 'week'},
    {id: 39, question: '顔', anser: 'face'},{id: 40, question: '大きい', anser: 'big'},
    {id: 41, question: '数字', anser: 'number'},{id: 42, question: '〜の下', anser: 'under'},
    {id: 43, question: '家族', anser: 'family'},{id: 44, question: '夜', anser: 'night'},
    {id: 45, question: '少しの（２、３の)', anser: 'few'},{id: 46, question: '小さい', anser: 'small'},
    {id: 47, question: '早い', anser: 'early'},{id: 48, question: 'いつも', anser: 'always'},
    {id: 49, question: '会社', anser: 'company'},{id: 50, question: '生きる', anser: 'live'}
  ]
end
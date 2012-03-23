# -*- coding: utf-8 -*-

titles = [
          "ほげ",
          "JoJo",
          "onepeace",
          "foobar",
          "ふがふが"
         ]

comment = "コメント" * 50

5.times do |n|
  Book.create(:title => titles[n],
              :authors => "俺",
              :publish_year => 2012,
              :comment => comment,
              :checked_out => n.zero?
              )
end
100.times do |n|
  Book.create(:title => "タイトル - #{n}",
              :authors => "俺",
              :publish_year => 2012,
              :comment => comment,
              :checked_out => n.zero?
              )
end

# -*- encoding: UTF-8 -*-

titles = [
  "たのしいRuby",
  "Head first Ruby",
  "プログラマが知るべき97のこと",
  "アジャイルサムライ",
  "風の歌を聴け"
]

author = "山田太郎"

comment = "これはコメントです。" * 20

5.times do |n|
  Book.create(:title => titles[n], :author => author + n.to_s,
              :publish_year => (n -2).days.from_now, :comment => comment,
              :checked_out => n.zero?)
end

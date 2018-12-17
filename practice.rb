#勇者のHP
brave_hp = 30
#勇者の攻撃力
brave_attack = 10
#勇者の防御力
brave_defense = 4
#敵のHP
enemy_hp = 30
#敵の攻撃力
enemy_attack = 5
#敵の防御力
enemy_defense = 3

#攻撃にランダム要素をいれる
select_attack = rand(4)

if select_attack == 0
  puts "かいしんのいちげき！"
  # randの範囲を20～30と大きく広げる
  #敵に与えるダメージの計算
  enemy_damage = brave_attack - enemy_defense + rand(20..30)
  #敵にダメージを与える
  enemy_hp = enemy_hp - enemy_damage
else
  puts "つうじょうこうげき"
  enemy_damage = brave_attack - enemy_defense + rand(3..6)
  enemy_hp = enemy_hp - enemy_damage
end
#敵に与えるダメージと残りHPの表示
puts "敵に#{enemy_damage}を与えた！"
puts "残りのHPは#{enemy_hp}だ。"

#残りHPによってリアクションを変える
if enemy_hp > 20
  puts "敵は元気だ"
elsif enemy_hp > 10
  puts "敵はちょっと弱っている"
elsif enemy_hp > 5
  puts "敵はかなり弱っている"
elsif enemy_hp > 0
  puts "敵は瀕死だ"
else
  puts "敵は死んだ"
end

if select_attack == 0
  puts "つうこんのいちげき！"
  # randの範囲を20～30と大きく広げる
  #勇者に与えるダメージの計算
  brave_damage = enemy_attack - brave_defense + rand(20..30)
  #勇者にダメージを与える
  brave_hp = brave_hp - brave_damage
else
  puts "つうじょうこうげき"
  brave_damage = enemy_attack - brave_defense + rand(3..4)
  brave_hp = brave_hp - brave_damage
end

puts <<~TEXT
勇者に#{brave_damage}を与えた！
勇者の残りのHPは#{brave_hp}だ。
TEXT

if brave_hp > 20
  puts "勇者は元気だ"
elsif brave_hp > 10
  puts "勇者ちょっと弱っている"
elsif brave_hp > 5
  puts "勇者かなり弱っている"
elsif brave_hp > 0
  puts "勇者は瀕死だ"
else
  puts "勇者は死んだ"
end

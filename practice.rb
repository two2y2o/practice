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

#敵に与えるダメージの計算
enemy_damage = brave_attack - enemy_defense
#敵にダメージを与える
enemy_hp = enemy_hp - enemy_damage

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

brave_damage = enemy_attack - brave_defense
brave_hp = brave_hp - brave_damage

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

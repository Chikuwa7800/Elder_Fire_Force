## 弾丸メイン処理
 # スコア増加
  scoreboard players add @s eff.bullet.tick 1
 # 飛ぶ！
  function elder_force:entity/bullet/move with entity @s data
 # 指定tick飛んだら弾を削除
  $execute if entity @s[scores={eff.bullet.tick=$(delete_time)..}] run function elder_force:entity/bullet/hit_to_ground

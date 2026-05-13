## 移動時に再起実行
 # 再起カウント
  scoreboard players add @s eff.bullet.rerun 1
 # hit検知
 function elder_force:entity/bullet/check_hit
 # 演出
  particle smoke ^ ^ ^ 0.0125 0.0125 0.0125 0 1 force
 # 処理
  $function $(tick)
  
 # 再起カウントが移動速度値と同じになれば再起を止める
  $execute unless score @s eff.bullet.rerun matches $(speed).. positioned ^ ^ ^1 run return run function elder_force:entity/bullet/do_on_moving with entity @s data
 # スコアリセット
  scoreboard players reset @s eff.bullet.rerun

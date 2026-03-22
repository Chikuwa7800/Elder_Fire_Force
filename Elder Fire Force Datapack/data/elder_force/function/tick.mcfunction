## 常時実行
 # 銃持ってる？ 持ってるなら銃刀法違反だね、かわいそうに
  execute as @e[predicate=elder_force:have_gun] at @s run function elder_force:items/def_item
 # 銃を持っていないならスコアリセット
  scoreboard players reset @e[predicate=!elder_force:have_gun] eff.reload_tick
 # 弾丸
  execute as @e[type=item_display,tag=eff.bullet] at @s run function elder_force:entity/tick
 # 常にスコアをリセット
  scoreboard players reset @a[scores={eff.using_stick=1..}] eff.using_stick
## リロード2段階目
 # 毎ティック実行
  scoreboard players add @s eff.reload_tick 1
 # 音とか
  execute if score @s eff.reload_tick matches 11 run playsound item.armor.equip_elytra player @a ~ ~ ~ 0.5 0.75
  execute if score @s eff.reload_tick matches 21 run playsound block.grindstone.use player @a ~ ~ ~ 0.5 2
  execute if score @s eff.reload_tick matches 27 run playsound block.iron.place player @a ~ ~ ~ 0.75 1
  execute if score @s eff.reload_tick matches 36 run playsound item.armor.equip_elytra player @a ~ ~ ~ 0.5 1.25
 # リロード終了
  execute if score @s eff.reload_tick matches 36 run function elder_force:items/wfoas/bazooka/reload/end

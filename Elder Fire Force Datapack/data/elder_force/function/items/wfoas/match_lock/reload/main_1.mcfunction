## リロード1段階目
 # 毎tick実行
  scoreboard players add @s eff.reload_tick 1
 # 音とか
  execute if score @s eff.reload_tick matches 1 run playsound item.armor.equip_leather player @a ~ ~ ~ 1 0.75
  execute if score @s eff.reload_tick matches 11 run playsound block.sand.place
  execute if score @s eff.reload_tick matches 31 run playsound block.chain.step
 # リロード1段階目終了
  execute if score @s eff.reload_tick matches 31 run function elder_force:items/wfoas/match_lock/reload/1_end

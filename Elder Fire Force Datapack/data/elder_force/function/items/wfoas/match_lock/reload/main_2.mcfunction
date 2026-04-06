## リロード2段階目
 # 毎ティック実行
  scoreboard players add @s eff.reload_tick 1
 # 音とか
  execute if score @s eff.reload_tick matches 11 run playsound item.armor.equip_generic
  execute if score @s eff.reload_tick matches 21 run playsound block.iron.step
  execute if score @s eff.reload_tick matches 31 run playsound block.sand.place
  execute if score @s eff.reload_tick matches 41 run playsound block.iron.step
  execute if score @s eff.reload_tick matches 46 run playsound item.armor.equip_generic
  execute if score @s eff.reload_tick matches 46 run playsound item.flintandsteel.use
  execute if score @s eff.reload_tick matches 46 run playsound block.fire.ambient
 # リロード終了
  execute if score @s eff.reload_tick matches 46 run function elder_force:items/wfoas/match_lock/reload/2_end

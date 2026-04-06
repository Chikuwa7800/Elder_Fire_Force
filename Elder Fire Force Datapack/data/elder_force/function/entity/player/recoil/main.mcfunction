## リコイル
 # スコア増加
  scoreboard players add @s eff.recoil_tick 1
 # 残留応力
  execute if score @s eff.recoil_tick matches 1 run rotate @s ~ ~-0.75
  execute if score @s eff.recoil_tick matches 2 run rotate @s ~ ~-0.5
  execute if score @s eff.recoil_tick matches 3 run rotate @s ~ ~-0.25
  execute if score @s eff.recoil_tick matches 4 run rotate @s ~ ~-0.125
  execute if score @s eff.recoil_tick matches 5 run rotate @s ~ ~-0.1
  execute if score @s eff.recoil_tick matches 6 run rotate @s ~ ~-0.1
  execute if score @s eff.recoil_tick matches 7 run rotate @s ~ ~-0.1
  execute if score @s eff.recoil_tick matches 8 run rotate @s ~ ~-0.05
  execute if score @s eff.recoil_tick matches 9 run rotate @s ~ ~-0.05
  execute if score @s eff.recoil_tick matches 10 run rotate @s ~ ~-0.025
  execute if score @s eff.recoil_tick matches 10 run tag @s remove eff.recoil_applying
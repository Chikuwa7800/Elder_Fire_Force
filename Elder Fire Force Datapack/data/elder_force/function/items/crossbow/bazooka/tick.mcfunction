# 6
# 15
execute if score @s eff.bullet.tick matches 3 run data modify entity @s data."speed" set value 10
playsound item.trident.throw neutral @a ~ ~ ~ 0.75 0
execute if score @s eff.bullet.tick matches 3..62 run playsound block.fire.extinguish neutral @a ~ ~ ~ 3
execute if score @s eff.bullet.tick matches 3.. run particle campfire_cosy_smoke ~ ~ ~ 0.0 0.0 0.0 0.1 1
execute if score @s eff.bullet.tick matches 3..62 run particle large_smoke ~ ~ ~ 0.0 0.0 0.0 0.1 1
execute if score @s eff.bullet.tick matches 3.. run particle electric_spark ~ ~ ~ 0.0 0.0 0.0 0.1 1
execute if score @s eff.bullet.tick matches 62.. run data modify entity @s data."speed" set value 9